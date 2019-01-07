.class Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$12;
.super Landroid/os/Handler;
.source "H5DevSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;
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
    .line 354
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$12;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 357
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$12;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->access$400(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string/jumbo v1, "\u4e0a\u4f20applog"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$12;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->access$400(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 361
    :cond_0
    return-void
.end method
