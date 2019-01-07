.class public interface abstract Lcom/alibaba/lightapp/runtime/webview/RimetWebView$IJavascriptInterface;
.super Ljava/lang/Object;
.source "RimetWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/webview/RimetWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IJavascriptInterface"
.end annotation


# virtual methods
.method public abstract callHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Lcom/uc/webview/export/JavascriptInterface;
    .end annotation
.end method
