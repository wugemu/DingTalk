.class public Lcom/taobao/weex/ui/component/WXBaseRefresh;
.super Lcom/taobao/weex/ui/component/WXVContainer;
.source "WXBaseRefresh.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXVContainer",
        "<",
        "Lcom/taobao/weex/ui/view/WXFrameLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mLoadingIndicator:Lcom/taobao/weex/ui/component/WXLoadingIndicator;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "lazy"    # Z
    .param p4, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXVContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 39
    return-void
.end method

.method private checkLoadingIndicator(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 59
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXLoadingIndicator;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lcom/taobao/weex/ui/component/WXLoadingIndicator;

    .end local p1    # "child":Lcom/taobao/weex/ui/component/WXComponent;
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXBaseRefresh;->mLoadingIndicator:Lcom/taobao/weex/ui/component/WXLoadingIndicator;

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 0
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXBaseRefresh;->checkLoadingIndicator(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 45
    return-void
.end method

.method public addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .locals 0
    .param p1, "child"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p2, "index"    # I

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 55
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXBaseRefresh;->checkLoadingIndicator(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 56
    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXBaseRefresh;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    new-instance v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXFrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
