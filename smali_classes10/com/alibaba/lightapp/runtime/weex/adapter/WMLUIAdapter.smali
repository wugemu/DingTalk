.class public Lcom/alibaba/lightapp/runtime/weex/adapter/WMLUIAdapter;
.super Ljava/lang/Object;
.source "WMLUIAdapter.java"

# interfaces
.implements Ljpz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppLoadingPrompt(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;)Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    .prologue
    .line 34
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;

    invoke-direct {v0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLAppLoadingFrame;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getErrorPrompt(Landroid/app/Activity;)Ljqk;
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 29
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;

    invoke-direct {v0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLErrorPrompt;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public getPageFrame(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;)Ljqe;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    .prologue
    .line 19
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;

    invoke-direct {v0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageFrame;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getPageLoadingPrompt(Landroid/app/Activity;)Ljql;
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 24
    new-instance v0, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;

    invoke-direct {v0, p1}, Lcom/alibaba/lightapp/runtime/weex/extend/view/WMLPageLodingPrompt;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
