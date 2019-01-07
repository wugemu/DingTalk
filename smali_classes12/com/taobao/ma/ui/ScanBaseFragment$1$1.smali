.class final Lcom/taobao/ma/ui/ScanBaseFragment$1$1;
.super Ljava/lang/Object;
.source "ScanBaseFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/ma/ui/ScanBaseFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/ma/ui/ScanBaseFragment$1;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/ScanBaseFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/taobao/ma/ui/ScanBaseFragment$1;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/taobao/ma/ui/ScanBaseFragment$1$1;->a:Lcom/taobao/ma/ui/ScanBaseFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanBaseFragment$1$1;->a:Lcom/taobao/ma/ui/ScanBaseFragment$1;

    iget-object v0, v0, Lcom/taobao/ma/ui/ScanBaseFragment$1;->a:Lcom/taobao/ma/ui/ScanBaseFragment;

    invoke-virtual {v0}, Lcom/taobao/ma/ui/ScanBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/taobao/ma/ui/ScanBaseFragment$1$1;->a:Lcom/taobao/ma/ui/ScanBaseFragment$1;

    iget-object v0, v0, Lcom/taobao/ma/ui/ScanBaseFragment$1;->a:Lcom/taobao/ma/ui/ScanBaseFragment;

    invoke-virtual {v0}, Lcom/taobao/ma/ui/ScanBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 86
    :cond_0
    return-void
.end method
