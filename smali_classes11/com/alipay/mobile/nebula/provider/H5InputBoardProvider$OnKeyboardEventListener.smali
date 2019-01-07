.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;
.super Ljava/lang/Object;
.source "H5InputBoardProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnKeyboardEventListener"
.end annotation


# virtual methods
.method public abstract getKeyboard()Landroid/view/View;
.end method

.method public abstract isKeyboardShown()Z
.end method

.method public abstract onHide()Z
.end method

.method public abstract onRelease()Z
.end method

.method public abstract onShow(Landroid/app/Activity;Lcom/alipay/mobile/nebula/webview/APWebView;)Z
.end method
