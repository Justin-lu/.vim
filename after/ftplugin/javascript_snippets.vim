if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet proto ".st."className".et.".prototype.".st."methodName".et." = function(".st.et.")<CR>{<CR>".st.et."<CR>};<CR>".st.et
"用于建立对象的方法
exec "Snippet fun ".st."functionName".et.": function(".st.et."){<CR><Tab>".st.et."<CR>}".st.et
"用于建立匿名函数
exec "Snippet function ""function(".st.et."){<CR><Tab>".st.et."<CR>}".st.et

"Extjs 
".st."".et.用于包含
" .st.et.用于tag切换
" <CR>用于换行
" Tab制表符
exec "Snippet egrid ""var ".st."grid".et."= new Ext.grid.EditorGridPanel({<CR><Tab>title:".st.et.",<CR>id:".st.et.",<CR>store:".st.et.",<CR>sm:".st.et.",<CR>cm:".st.et.",<CR>viewConfig:{<CR><Tab>forceFit:".st.et."<CR>},<CR>region:".st.et.",<CR>height:".st.et."<CR>})".st.et
exec "Snippet ecm ""var ".st."cm".et."= new Ext.grid.ColumnModel([<CR>new Ext.grid.RowNumberer(),<CR>{ header:".st.et." ,dataIndex:".st.et."},<CR>{ header:".st.et." ,dataIndex:".st.et."}<CR>])".st.et
exec "Snippet jstore ""var ".st."store".et."= new Ext.data.JsonStore({<CR><Tab>url:".st.et.",<CR><Tab><Tab>fields:".st.et.",<CR><Tab><Tab>root:".st.et.",<CR><Tab><Tab>autoLoad:".st.et."<CR>});".st.et
exec "Snippet eform ""var ".st."form".et."= new Ext.form.FormPanel({<CR><Tab>id:".st.et.",<CR><Tab><Tab>labelAlign:".st.et.",<CR><Tab><Tab>labelWidth:".st.et.",<CR><Tab><Tab>width:".st.et.",<CR><Tab><Tab>height:".st.et.",<CR><Tab><Tab>frame:".st.et.",<CR><Tab><Tab>layout:".st.et.",<CR><Tab><Tab>items: [<CR><Tab><Tab><Tab>{ id: ".st.et.", fieldLabel:".st.et.", xtype:".st.et.", width:".st.et."},<CR>".st.et."<CR><Tab><Tab>]<CR>});"
exec "Snippet ewin ""var ".st."win".et."= new Ext.Window({<CR><Tab>id:".st.et.",<CR><Tab><Tab>title:".st.et.",<CR><Tab><Tab>closeAction:".st.et.",<CR><Tab><Tab>height:600,<CR><Tab><Tab>width:1050,<CR><Tab><Tab>constrainHeader: true,<CR><Tab><Tab>layout:".st.et.",<CR><Tab><Tab>modal:".st.et.",<CR><Tab><Tab>items: [".st.et."]<CR>});".st.et
exec "Snippet etree ""var ".st."tree".et."= new Ext.tree.TreePanel({<CR><Tab>title:".st.et.",<CR><Tab><Tab>id:".st.et.",<CR><Tab><Tab>useArrows:".st.et.",<CR><Tab><Tab>autoScroll:".st.et.",<CR><Tab><Tab>border:".st.et.",<CR><Tab><Tab>region:".st.et.",<CR><Tab><Tab>rootVisible:".st.et.",<CR><Tab><Tab>width:".st.et.",<CR><Tab><Tab>root:".st.et."<CR>})".st.et
exec "Snippet astore ""var ".st."store".et."= new Ext.data.ArrayStore({<CR><Tab>fields:".st.et.",<CR>data:".st.et."<CR>});".st.et
exec "Snippet wpage ""Wando.pages.currentInstance = {<CR><Tab>layout:'border',<CR>items:[".st.et."]<CR>};".st.et
exec "Snippet esm ""var sm = new Ext.grid.CheckboxSelectionModel();".st.et
exec "Snippet teditor ""var editor = new Ext.grid.GridEditor(new Ext.form.TextField({ allowBlank: true }));".st.et

exec "Snippet contextmenu ""var contextmenu = new Ext.menu.Menu({<CR><Tab>id:".st.et.",<CR><Tab><Tab>items:[{<CR><Tab>text:".st.et.",<CR><Tab><Tab><Tab><Tab>handler:function(){ <CR><Tab><Tab>".st.et."}<CR>}]<CR>},this)".st.et

exec "Snippet jstore ""var ".st."store".et."= new Ext.data.JsonStore({<CR><Tab>fields:".st.et.",<CR>root:".st.et.",<CR>url:".st.et."<CR>});".st.et

exec "Snippet erequest ""Ext.Ajax.request({<CR><Tab>url:".st.et."<CR><Tab>methord:".st.et."<CR><Tab>jsonData:".st.et."<CR><Tab>success:".st.et."<CR><Tab>failure:".st.et."<CR>});"
exec "Snippet esm ""var sm = new Ext.grid.CheckboxSelectionModel();".st.et

" Wando.grid.Panel
exec "Snippet wgrid " "var ".st."grid".et." = Ext.create('Wando.grid.Panel',{<CR><Tab>title:".st.et.",<CR>region: ".st.et.",<CR>id:".st.et.",<CR>whenRowSave: function(){ <CR><Tab>".st.et." <CR>},<CR>url: ".st.et.",<CR>selModel: Ext.create('Ext.selection.CheckboxModel'),<CR>columns: [{<CR><Tab>header: ".st.et.",<CR><Tab><Tab>columnName: ".st.et.",<CR><Tab><Tab>dataIndex: ".st.et.",<CR><Tab><Tab>eidtor: ".st.et.",<CR><Tab><Tab>type: ".st.et."<CR>}],<CR>tbar: Ext.create('Wando.Tbar',{ <CR><Tab>gridId: ".st.et."<CR><Tab>using: ".st.et."<CR>})".st.et."<CR>})".st.et
