/*
  Copyright 2016 Applied Geographics, Inc.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

  GPV50_SQLServer_Copy.sql

  Copies the GPV v5.0 configuration tables.  You can set the source and destination prefixes for 
  the table names by changing the values in the "set @srcPrefix" and "set @desPrefix" lines below.  
  Make sure to run GPV50_SQLServer_AddConstraints.sql using the destination prefix to create the 
  necessary constraints on the copied tables.

*/

declare @srcPrefix nvarchar(50)
declare @desPrefix nvarchar(50)

set @srcPrefix = 'GPV50'
set @desPrefix = 'GPVx'

declare @sql nvarchar(2000)

set @sql = 'SELECT * INTO ' + @desPrefix + 'Application FROM ' + @srcPrefix + 'Application'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'ApplicationMapTab FROM ' + @srcPrefix + 'ApplicationMapTab'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'ApplicationMarkupCategory FROM ' + @srcPrefix + 'ApplicationMarkupCategory'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'ApplicationPrintTemplate FROM ' + @srcPrefix + 'ApplicationPrintTemplate'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'Connection FROM ' + @srcPrefix + 'Connection'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'DataTab FROM ' + @srcPrefix + 'DataTab'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'ExternalMap FROM ' + @srcPrefix + 'ExternalMap'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'Layer FROM ' + @srcPrefix + 'Layer'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'LayerFunction FROM ' + @srcPrefix + 'LayerFunction'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'LayerProximity FROM ' + @srcPrefix + 'LayerProximity'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'Level FROM ' + @srcPrefix + 'Level'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'MailingLabel FROM ' + @srcPrefix + 'MailingLabel'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'MapTab FROM ' + @srcPrefix + 'MapTab'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'MapTabLayer FROM ' + @srcPrefix + 'MapTabLayer'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'MapTabTileGroup FROM ' + @srcPrefix + 'MapTabTileGroup'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'Markup FROM ' + @srcPrefix + 'Markup'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'MarkupCategory FROM ' + @srcPrefix + 'MarkupCategory'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'MarkupGroup FROM ' + @srcPrefix + 'MarkupGroup'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'MarkupSequence FROM ' + @srcPrefix + 'MarkupSequence'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'PrintTemplate FROM ' + @srcPrefix + 'PrintTemplate'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'PrintTemplateContent FROM ' + @srcPrefix + 'PrintTemplateContent'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'Proximity FROM ' + @srcPrefix + 'Proximity'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'Query FROM ' + @srcPrefix + 'Query'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'SavedState FROM ' + @srcPrefix + 'SavedState'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'Search FROM ' + @srcPrefix + 'Search'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'SearchInputField FROM ' + @srcPrefix + 'SearchInputField'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'Setting FROM ' + @srcPrefix + 'Setting'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'TileGroup FROM ' + @srcPrefix + 'TileGroup'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'TileLayer FROM ' + @srcPrefix + 'TileLayer'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'UsageTracking FROM ' + @srcPrefix + 'UsageTracking'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'User FROM ' + @srcPrefix + 'User'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'Zone FROM ' + @srcPrefix + 'Zone'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'ZoneLevel FROM ' + @srcPrefix + 'ZoneLevel'; exec(@sql)
set @sql = 'SELECT * INTO ' + @desPrefix + 'ZoneLevelCombo FROM ' + @srcPrefix + 'ZoneLevelCombo'; exec(@sql)
