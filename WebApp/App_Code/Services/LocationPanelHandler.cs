﻿//  Copyright 2012 Applied Geographics, Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

using System;
using System.Linq;
using System.Web;
using GeoAPI.Geometries;

public class LocationPanelHandler : WebServiceHandler
{
  [WebServiceMethod]
  private void GetZoneExtent()
  {
    Configuration config = AppContext.GetConfiguration();
    Configuration.MapTabRow mapTab = config.MapTab.First(o => o.MapTabID == Request.Form["maptab"]);
    Envelope extent = mapTab.GetZoneExtent(Request.Form["zone"]);

    if (!extent.IsNull)
    {
      extent.ScaleBy(1.2);
    }

    ReturnJson<double[]>("extent", extent.IsNull ? null : extent.ToArray());
  }
}