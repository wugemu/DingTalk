.class public Lcom/taobao/weex/ui/action/GraphicActionAddEvent;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionAddEvent.java"


# instance fields
.field private final mEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p3}, Lcom/taobao/weex/dom/WXEvent;->getEventName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;->mEvent:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public executeAction()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 41
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-static {}, Lcom/taobao/weex/tracing/Stopwatch;->tick()V

    .line 46
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;->mEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;->mEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->addEvent(Ljava/lang/Object;)V

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;->mEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v1, "addEventToComponent"

    invoke-static {v1}, Lcom/taobao/weex/tracing/Stopwatch;->split(Ljava/lang/String;)V

    goto :goto_0
.end method
