.class public interface abstract Lcom/uc/webview/export/extension/IEmbedViewContainer$OnStateChangedListener;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/extension/IEmbedViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStateChangedListener"
.end annotation


# virtual methods
.method public abstract onAttachedToWebView()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDetachedFromWebView()V
.end method
