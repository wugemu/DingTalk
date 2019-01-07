.class public Lcom/taobao/weex/ui/action/UpdateComponentDataAction;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "UpdateComponentDataAction.java"


# instance fields
.field private callback:Ljava/lang/String;

.field private data:Lcom/alibaba/fastjson/JSONObject;

.field private virtualComponentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "virtualComponentId"    # Ljava/lang/String;
    .param p3, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "callback"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p2}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->getListRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iput-object p2, p0, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->virtualComponentId:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->data:Lcom/alibaba/fastjson/JSONObject;

    .line 48
    iput-object p4, p0, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->callback:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public executeAction()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "wrong virtualComponentId split error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->virtualComponentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 58
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    instance-of v3, v0, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 59
    check-cast v2, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .line 60
    .local v2, "templateList":Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getCellDataManager()Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->virtualComponentId:Ljava/lang/String;

    iget-object v5, p0, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->data:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v3, v4, v5}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->updateVirtualComponentData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->notifyUpdateList()V

    .line 62
    new-instance v1, Lcom/taobao/weex/bridge/SimpleJSCallback;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->callback:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/taobao/weex/bridge/SimpleJSCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v1, "jsCallback":Lcom/taobao/weex/bridge/SimpleJSCallback;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/taobao/weex/bridge/SimpleJSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    .end local v1    # "jsCallback":Lcom/taobao/weex/bridge/SimpleJSCallback;
    .end local v2    # "templateList":Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "recycler-list wrong virtualComponentId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/taobao/weex/ui/action/UpdateComponentDataAction;->virtualComponentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
