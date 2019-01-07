.class public interface abstract Lcom/uc/webview/export/internal/interfaces/IUCExtension;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/InvokeObject;


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# virtual methods
.method public abstract getActiveLayoutStyle()I
.end method

.method public abstract getBackUrl()Ljava/lang/String;
.end method

.method public abstract getCoreStatus(ILandroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCurrentPageSnapshot(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZI)Z
.end method

.method public abstract getFocusedNodeAnchorText()Ljava/lang/String;
.end method

.method public abstract getFocusedNodeImageUrl()Ljava/lang/String;
.end method

.method public abstract getFocusedNodeLinkUrl()Ljava/lang/String;
.end method

.method public abstract getForwardUrl()Ljava/lang/String;
.end method

.method public abstract getHttpsRemoteCertificate(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPageEncoding()Ljava/lang/String;
.end method

.method public abstract getPageSize()I
.end method

.method public abstract getUCSettings()Lcom/uc/webview/export/extension/UCSettings;
.end method

.method public abstract ignoreTouchEvent()Z
.end method

.method public abstract moveCursorToTextInput(I)V
.end method

.method public abstract notifyVisibleRectChanged()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract savePage(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBackForwardListListener(Lcom/uc/webview/export/extension/IBackForwardListListener;)V
.end method

.method public abstract setClient(Lcom/uc/webview/export/extension/UCClient;)V
.end method

.method public abstract setEmbeddedTitleBar(Landroid/view/View;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setInjectJSProvider(Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;I)V
.end method

.method public abstract setPrivateBrowsing(Z)V
.end method

.method public abstract setSoftKeyboardListener(Lcom/uc/webview/export/extension/UCExtension$OnSoftKeyboardListener;)V
.end method

.method public abstract setTextSelectionClient(Lcom/uc/webview/export/extension/UCExtension$TextSelectionClient;)V
.end method
