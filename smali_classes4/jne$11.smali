.class final Ljne$11;
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
    .line 457
    iput-object p1, p0, Ljne$11;->a:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 460
    iget-object v0, p0, Ljne$11;->a:Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;

    invoke-static {v0}, Ljne;->a(Lcom/alibaba/dingtalk/scanbase/QRCodeInterface$a;)V

    .line 461
    return-void
.end method
