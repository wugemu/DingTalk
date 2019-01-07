.class Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$1;
.super Ljava/lang/Object;
.source "H5NebulaAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;->finish()V

    .line 58
    :cond_0
    return-void
.end method
