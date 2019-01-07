.class Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8$1$1;
.super Ljava/lang/Object;
.source "H5DevSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8$1;

.field final synthetic val$path:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8$1;Ljava/io/File;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8$1;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8$1$1;->this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8$1;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8$1$1;->val$path:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 246
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$string;->h5_save_db_success:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "share":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8$1$1;->val$path:Ljava/io/File;

    .line 251
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 250
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 252
    const-string/jumbo v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8$1$1;->this$2:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8$1;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    const-string/jumbo v2, "Share"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->startActivity(Landroid/content/Intent;)V

    .line 254
    return-void
.end method
