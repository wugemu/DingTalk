.class Lcom/alipay/mobile/nebulaappcenter/app/H5App$2$1;
.super Ljava/lang/Object;
.source "H5App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;->onNetworkChanged(Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;Lcom/alipay/mobile/nebula/util/H5NetworkUtil$Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2$1;->this$1:Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2$1;->this$1:Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$000(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2$1;->this$1:Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;

    iget-object v3, v3, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2$1;->this$1:Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;

    iget-object v4, v4, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "6"

    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->updateUnavailableReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2$1;->this$1:Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "download":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2$1;->this$1:Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$200(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " net change is not wifi and auto!=1 so cancel "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2$1;->this$1:Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$100(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5ExternalDownloadManager;->cancel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0    # "download":Ljava/lang/String;
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "throwable":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2$1;->this$1:Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappcenter/app/H5App$2;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$200(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
