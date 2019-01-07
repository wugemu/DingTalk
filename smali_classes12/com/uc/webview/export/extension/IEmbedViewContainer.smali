.class public interface abstract Lcom/uc/webview/export/extension/IEmbedViewContainer;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/extension/IEmbedViewContainer$OnVisibilityChangedListener;,
        Lcom/uc/webview/export/extension/IEmbedViewContainer$OnStateChangedListener;,
        Lcom/uc/webview/export/extension/IEmbedViewContainer$OnParamChangedListener;
    }
.end annotation


# virtual methods
.method public abstract changeViewSize(II)V
.end method

.method public abstract notifyEnterFullScreen()V
.end method

.method public abstract notifyExitFullScreen()V
.end method

.method public abstract sendViewData(Ljava/lang/String;)V
.end method

.method public abstract setOnParamChangedListener(Lcom/uc/webview/export/extension/IEmbedViewContainer$OnParamChangedListener;)V
.end method

.method public abstract setOnStateChangedListener(Lcom/uc/webview/export/extension/IEmbedViewContainer$OnStateChangedListener;)V
.end method

.method public abstract setOnVisibilityChangedListener(Lcom/uc/webview/export/extension/IEmbedViewContainer$OnVisibilityChangedListener;)V
.end method

.method public abstract setPosterUrl(Ljava/lang/String;)V
.end method
