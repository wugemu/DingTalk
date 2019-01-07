.class public abstract Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;
.super Ljava/lang/Object;
.source "RenderCallbackProxy.java"


# instance fields
.field private mRenderCallback:Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;->mRenderCallback:Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;

    .line 12
    return-void
.end method


# virtual methods
.method public onAsyncEvent(Lcom/alipay/android/app/template/ITemplateClickCallback;Ljava/lang/String;)V
    .locals 1
    .param p1, "callback"    # Lcom/alipay/android/app/template/ITemplateClickCallback;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;->onTemplateCallbackChanged(Lcom/alipay/android/app/template/ITemplateClickCallback;)V

    .line 22
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;->mRenderCallback:Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;->mRenderCallback:Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;

    invoke-interface {v0, p2}, Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;->onAsyncEvent(Ljava/lang/String;)V

    .line 25
    :cond_0
    return-void
.end method

.method public onEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;->mRenderCallback:Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;->mRenderCallback:Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;->onEvent(Ljava/lang/String;)V

    .line 18
    :cond_0
    return-void
.end method

.method public onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;->mRenderCallback:Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;->mRenderCallback:Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/render/api/callback/ICashierRenderCallback;->onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public abstract onTemplateCallbackChanged(Lcom/alipay/android/app/template/ITemplateClickCallback;)V
.end method
