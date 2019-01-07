.class public Lcom/taobao/weex/ui/action/GraphicActionAppendTreeCreateFinish;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionAppendTreeCreateFinish.java"


# instance fields
.field component:Lcom/taobao/weex/ui/component/WXComponent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAppendTreeCreateFinish;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 38
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAppendTreeCreateFinish;->component:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAppendTreeCreateFinish;->component:Lcom/taobao/weex/ui/component/WXComponent;

    instance-of v0, v0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAppendTreeCreateFinish;->component:Lcom/taobao/weex/ui/component/WXComponent;

    check-cast v0, Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->appendTreeCreateFinish()V

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public executeAction()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
