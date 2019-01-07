.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;
.super Ljava/lang/Object;
.source "H5ListPopDialogProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider$OnItemClickListener;
    }
.end annotation


# virtual methods
.method public abstract createDialog(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract disMissDialog()V
.end method

.method public abstract setOnItemClickListener(Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider$OnItemClickListener;)V
.end method

.method public abstract showDialog()V
.end method
