.class public interface abstract Lcom/taobao/weex/ui/view/IWebView;
.super Ljava/lang/Object;
.source "IWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;,
        Lcom/taobao/weex/ui/view/IWebView$OnPageListener;,
        Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract goBack()V
.end method

.method public abstract goForward()V
.end method

.method public abstract loadDataWithBaseURL(Ljava/lang/String;)V
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract postMessage(Ljava/lang/Object;)V
.end method

.method public abstract reload()V
.end method

.method public abstract setOnErrorListener(Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;)V
.end method

.method public abstract setOnMessageListener(Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;)V
.end method

.method public abstract setOnPageListener(Lcom/taobao/weex/ui/view/IWebView$OnPageListener;)V
.end method

.method public abstract setShowLoading(Z)V
.end method
