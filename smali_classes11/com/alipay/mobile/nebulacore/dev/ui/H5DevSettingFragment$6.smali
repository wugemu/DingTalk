.class Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$6;
.super Ljava/lang/Object;
.source "H5DevSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->initClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$6;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$6;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevConfigEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$6;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 206
    return-void
.end method
