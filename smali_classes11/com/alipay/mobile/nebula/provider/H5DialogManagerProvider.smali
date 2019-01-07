.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider;
.super Ljava/lang/Object;
.source "H5DialogManagerProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickNegativeListener;,
        Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;
    }
.end annotation


# virtual methods
.method public abstract createDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
.end method

.method public abstract disMissDialog()V
.end method

.method public abstract release()V
.end method

.method public abstract setNegativeListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickNegativeListener;)V
.end method

.method public abstract setPositiveListener(Lcom/alipay/mobile/nebula/provider/H5DialogManagerProvider$OnClickPositiveListener;)V
.end method

.method public abstract showDialog()V
.end method
