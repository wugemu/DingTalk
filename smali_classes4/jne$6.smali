.class final Ljne$6;
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Ljne$6;->a:Landroid/app/Activity;

    iput-object p2, p0, Ljne$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 393
    iget-object v0, p0, Ljne$6;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 394
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    iget-object v1, p0, Ljne$6;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Ljne$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v0, 0x1

    invoke-static {v0}, Ljne;->a(Z)Z

    .line 397
    :cond_0
    return-void
.end method
