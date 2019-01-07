.class public Lcom/taobao/weex/ui/action/GraphicActionLayout;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionLayout.java"


# instance fields
.field private final mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

.field private final mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicPosition;Lcom/taobao/weex/ui/action/GraphicSize;)V
    .locals 0
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "layoutPosition"    # Lcom/taobao/weex/ui/action/GraphicPosition;
    .param p4, "layoutSize"    # Lcom/taobao/weex/ui/action/GraphicSize;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionLayout;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    .line 32
    iput-object p4, p0, Lcom/taobao/weex/ui/action/GraphicActionLayout;->mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    .line 33
    return-void
.end method


# virtual methods
.method public executeAction()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionLayout;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionLayout;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 38
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionLayout;->mLayoutSize:Lcom/taobao/weex/ui/action/GraphicSize;

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionLayout;->mLayoutPosition:Lcom/taobao/weex/ui/action/GraphicPosition;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/component/WXComponent;->setDemission(Lcom/taobao/weex/ui/action/GraphicSize;Lcom/taobao/weex/ui/action/GraphicPosition;)V

    .line 43
    invoke-virtual {v0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 44
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/component/WXComponent;->setPadding(Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;)V

    goto :goto_0
.end method
