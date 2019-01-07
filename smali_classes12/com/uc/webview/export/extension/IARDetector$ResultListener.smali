.class public interface abstract Lcom/uc/webview/export/extension/IARDetector$ResultListener;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/InvokeObject;


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/extension/IARDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResultListener"
.end annotation


# virtual methods
.method public abstract onInit(I)V
.end method

.method public abstract onResult(Ljava/lang/String;)V
.end method

.method public abstract onResult(Ljava/lang/String;Ljava/lang/Object;)V
.end method
