.class Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;
.super Ljava/lang/Object;
.source "H5App.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/util/H5NetworkUtil$NetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/app/H5App;->initNetWorkListen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;)V
    .locals 2
    .param p1, "last"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;
    .param p2, "next"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    sget-object v0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;->NETWORK_WIFI:Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;

    if-eq p2, v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$100(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    const-string/jumbo v0, "H5NebulaApp"

    new-instance v1, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2$1;-><init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 245
    :cond_0
    return-void
.end method
