.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;
.super Ljava/lang/Object;
.source "H5InputBoardProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;
    }
.end annotation


# virtual methods
.method public abstract getKeyboard()Landroid/view/View;
.end method

.method public abstract hideKeyboard()V
.end method

.method public abstract init(Landroid/content/Context;Lcom/alipay/mobile/nebula/webview/APWebView;)V
.end method

.method public abstract isKeyboardShown()Z
.end method

.method public abstract onRelease()V
.end method

.method public abstract register(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider$OnKeyboardEventListener;)V
.end method

.method public abstract setIfUseRandomNumber(Z)V
.end method

.method public abstract setKeyboardType(Ljava/lang/String;)V
.end method

.method public abstract setOperateListener(Lcom/alipay/mobile/nebula/callback/H5InputOperator;)V
.end method

.method public abstract showKeyboard()V
.end method
