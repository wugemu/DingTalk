.class final Ljne$9;
.super Ljava/lang/Object;
.source "DingMaHandlerV2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljne;->a(Landroid/app/Activity;Lcom/alipay/mobile/mascanengine/MaScanResult;ZLcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mascanengine/MaScanResult;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mascanengine/MaScanResult;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Ljne$9;->a:Lcom/alipay/mobile/mascanengine/MaScanResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 454
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Ljne$9;->a:Lcom/alipay/mobile/mascanengine/MaScanResult;

    iget-object v1, v1, Lcom/alipay/mobile/mascanengine/MaScanResult;->text:Ljava/lang/String;

    const/4 v2, 0x0

    .line 453
    invoke-static {v0, v1, v2}, Lcnz;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 455
    return-void
.end method
