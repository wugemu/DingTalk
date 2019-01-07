.class Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;
.super Ljava/lang/Object;
.source "H5FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->detachFragment(Landroid/support/v4/app/Fragment;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$transaction:Landroid/support/v4/app/FragmentTransaction;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;->val$fragment:Landroid/support/v4/app/Fragment;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;->val$transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 435
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;->val$transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager$2;->val$fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->d(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto :goto_0
.end method
