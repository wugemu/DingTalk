.class public abstract Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;
.super Lckb;
.source "QRCodeInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$MaCodeType;,
        Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lckb;-><init>()V

    .line 46
    return-void
.end method

.method public static a()Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/scanbase/QRCodeInterface;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/graphics/Bitmap;)Ljava/lang/Object;
.end method

.method public abstract a(Landroid/app/Activity;Ljava/lang/Object;ZLcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V
.end method

.method public abstract a(Landroid/content/Context;)V
.end method

.method public abstract a(Landroid/content/Context;Landroid/os/Bundle;)V
.end method

.method public abstract b(Landroid/content/Context;Landroid/os/Bundle;)V
.end method
