.class final Ljne$8;
.super Ljava/lang/Object;
.source "DingMaHandlerV2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljne;->a(Landroid/app/Activity;Lcom/alipay/mobile/mascanengine/MaScanResult;ZLcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Ljne$8;->a:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 403
    invoke-static {}, Ljne;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Ljne$8;->a:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;

    invoke-static {v0}, Ljne;->a(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    .line 406
    :cond_0
    return-void
.end method
