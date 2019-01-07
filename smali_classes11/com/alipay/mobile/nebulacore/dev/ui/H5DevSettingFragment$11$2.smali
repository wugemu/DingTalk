.class Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11$2;
.super Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
.source "H5DevSettingFragment.java"


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


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11$2;->this$1:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZZ)V
    .locals 1
    .param p1, "finish"    # Z
    .param p2, "b1"    # Z

    .prologue
    .line 322
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11$2$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11$2$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11$2;Z)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method
