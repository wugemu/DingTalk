.class public Lcom/taobao/weex/ui/component/list/template/CellDataManager;
.super Ljava/lang/Object;
.source "CellDataManager.java"


# static fields
.field public static final SUB_COMPONENT_TEMPLATE_ID:Ljava/lang/String; = "@templateId"

.field public static final VIRTUAL_COMPONENT_ID:Ljava/lang/String; = "@virtualComponentId"

.field private static final VIRTUAL_COMPONENT_SEPRATOR:Ljava/lang/String; = "@"


# instance fields
.field listData:Lcom/alibaba/fastjson/JSONArray;

.field private renderStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/weex/ui/component/list/template/CellRenderState;",
            ">;"
        }
    .end annotation
.end field

.field public final templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

.field private virtualComponentRenderStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/component/list/template/CellRenderState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .locals 1
    .param p1, "templateList"    # Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .line 75
    return-void
.end method

.method private cleanRenderState(Lcom/taobao/weex/ui/component/list/template/CellRenderState;)V
    .locals 10
    .param p1, "renderState"    # Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 235
    if-nez p1, :cond_1

    .line 251
    :cond_0
    return-void

    .line 238
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasVirtualComponents()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->getVirtualComponentIds()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 240
    .local v1, "virtualComponentIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    .local v0, "virtualComponentId":Ljava/lang/String;
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->virtualComponentRenderStates:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 242
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->virtualComponentRenderStates:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_2
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    const-string/jumbo v4, "componentHook"

    iget-object v5, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .line 245
    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "lifecycle"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "detach"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v9, v6, v7

    .line 244
    invoke-virtual {v3, v4, v5, v9, v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->asyncCallJSEventVoidResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static createVirtualComponentId(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .param p0, "listRef"    # Ljava/lang/String;
    .param p1, "viewTreeKey"    # Ljava/lang/String;
    .param p2, "itemId"    # J

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getListRef(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "virtualComponentId"    # Ljava/lang/String;

    .prologue
    .line 265
    if-nez p0, :cond_0

    .line 266
    const/4 v0, 0x0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public createVirtualComponentData(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "virutalComponentId"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->virtualComponentRenderStates:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->virtualComponentRenderStates:Ljava/util/Map;

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    .line 128
    .local v0, "renderState":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->getVirtualComponentDatas()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->virtualComponentRenderStates:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public getRenderState(I)Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    .line 82
    .local v0, "renderState":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    .end local v0    # "renderState":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    invoke-direct {v0}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;-><init>()V

    .line 84
    .restart local v0    # "renderState":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    iput p1, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->position:I

    .line 85
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    iget v1, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->position:I

    if-eq p1, v1, :cond_1

    .line 88
    iput p1, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->position:I

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasPositionChange:Z

    .line 91
    :cond_1
    return-object v0
.end method

.method public insertData(ILjava/lang/Object;)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3, p1, p2}, Lcom/alibaba/fastjson/JSONArray;->add(ILjava/lang/Object;)V

    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, "renderStateChange":Z
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_1

    .line 166
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    .line 167
    .local v2, "state":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    if-eqz v2, :cond_0

    .line 168
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const/4 v1, 0x1

    .line 165
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 172
    .end local v2    # "state":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    :cond_1
    return v1
.end method

.method public insertRange(ILcom/alibaba/fastjson/JSONArray;)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "data"    # Lcom/alibaba/fastjson/JSONArray;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3, p1, p2}, Lcom/alibaba/fastjson/JSONArray;->addAll(ILjava/util/Collection;)Z

    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, "renderStateChange":Z
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_1

    .line 185
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    .line 186
    .local v2, "state":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    if-eqz v2, :cond_0

    .line 187
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/4 v1, 0x1

    .line 184
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 191
    .end local v2    # "state":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    :cond_1
    return v1
.end method

.method public removeData(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "index"    # Ljava/lang/Integer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 220
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONArray;->remove(I)Ljava/lang/Object;

    .line 221
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    invoke-direct {p0, v3}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->cleanRenderState(Lcom/taobao/weex/ui/component/list/template/CellRenderState;)V

    .line 222
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 223
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 224
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    .line 225
    .local v2, "state":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    if-eqz v2, :cond_0

    .line 226
    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    add-int/lit8 v4, v1, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v2    # "state":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    :cond_1
    return-void
.end method

.method public setListData(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 3
    .param p1, "listData"    # Lcom/alibaba/fastjson/JSONArray;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eq v1, p1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "exitDetach"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->cleanRenderState(Lcom/taobao/weex/ui/component/list/template/CellRenderState;)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v0    # "i":I
    :cond_0
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    .line 150
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 151
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->virtualComponentRenderStates:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->virtualComponentRenderStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 155
    :cond_1
    return-void
.end method

.method public updateData(Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 201
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v2, p2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v3, p1}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getTemplateKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 202
    .local v0, "onlyDataChange":Z
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->listData:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, p2, p1}, Lcom/alibaba/fastjson/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 203
    if-nez v0, :cond_1

    .line 205
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    invoke-direct {p0, v2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->cleanRenderState(Lcom/taobao/weex/ui/component/list/template/CellRenderState;)V

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->renderStates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    .line 208
    .local v1, "renderState":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    if-eqz v1, :cond_0

    .line 209
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasDataUpdate:Z

    goto :goto_0
.end method

.method public updateVirtualComponentData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "virutalComponentId"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->virtualComponentRenderStates:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->virtualComponentRenderStates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    .line 102
    .local v0, "cellRenderState":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->getVirtualComponentDatas()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasVirtualCompoentUpdate:Z

    .line 115
    .end local v0    # "cellRenderState":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    :cond_0
    return-void

    .line 106
    .restart local v0    # "cellRenderState":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "virtualComponentDatas illegal state empty render state"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    .end local v0    # "cellRenderState":Lcom/taobao/weex/ui/component/list/template/CellRenderState;
    :cond_2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "virtualComponentDatas illegal state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
