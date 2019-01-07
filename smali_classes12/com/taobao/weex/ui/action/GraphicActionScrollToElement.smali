.class public Lcom/taobao/weex/ui/action/GraphicActionScrollToElement;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionScrollToElement.java"


# instance fields
.field private final mOptions:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionScrollToElement;->mOptions:Lcom/alibaba/fastjson/JSONObject;

    .line 36
    return-void
.end method


# virtual methods
.method public executeAction()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionScrollToElement;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionScrollToElement;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 41
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v1

    .line 46
    .local v1, "scroller":Lcom/taobao/weex/ui/component/Scrollable;
    if-eqz v1, :cond_0

    .line 49
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionScrollToElement;->mOptions:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v1, v0, v2}, Lcom/taobao/weex/ui/component/Scrollable;->scrollTo(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/Map;)V

    goto :goto_0
.end method
