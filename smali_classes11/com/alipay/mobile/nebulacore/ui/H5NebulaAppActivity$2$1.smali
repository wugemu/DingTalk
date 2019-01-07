.class Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;
.super Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
.source "H5NebulaAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;->this$1:Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;

    invoke-direct {p0}, Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZZ)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "isLimit"    # Z

    .prologue
    .line 82
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2$1;Z)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method
