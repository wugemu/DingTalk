.class public interface abstract Lcom/uc/webview/export/extension/UCExtension$OnSoftKeyboardListener;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/extension/UCExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSoftKeyboardListener"
.end annotation


# virtual methods
.method public abstract displaySoftKeyboard(Ljava/lang/String;ILandroid/webkit/ValueCallback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract hideSoftKeyboard()Z
.end method

.method public abstract onFinishComposingText()Z
.end method
