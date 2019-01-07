.class Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$10;
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
    .line 272
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$10;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$10;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->access$400(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string/jumbo v1, "\u4e0a\u4f20\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$10;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->access$400(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 277
    const-string/jumbo v0, "RPC"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$10$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$10$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$10;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method
