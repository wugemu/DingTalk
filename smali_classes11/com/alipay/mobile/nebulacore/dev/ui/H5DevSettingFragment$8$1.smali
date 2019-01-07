.class Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8$1;
.super Ljava/lang/Object;
.source "H5DevSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8$1;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8;

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
    .line 241
    invoke-static {}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->copyDataBaseToSD()Ljava/io/File;

    move-result-object v0

    .line 243
    .local v0, "path":Ljava/io/File;
    new-instance v1, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8$1$1;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8$1$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$8$1;Ljava/io/File;)V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method
