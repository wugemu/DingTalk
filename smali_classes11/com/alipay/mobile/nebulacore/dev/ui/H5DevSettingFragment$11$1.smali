.class Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11$1;
.super Ljava/lang/Object;
.source "H5DevSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;

.field final synthetic val$updateStageResult:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11$1;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11$1;->val$updateStageResult:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11$1;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11$1;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11$1;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u66f4\u65b0\u5c55\u53f0\u7ed3\u679c: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11$1;->val$updateStageResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
