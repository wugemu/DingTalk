.class Lcom/alipay/mobile/nebulaappcenter/app/H5App$4;
.super Ljava/lang/Object;
.source "H5App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappcenter/app/H5App;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V
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
    .line 307
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$4;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

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
    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$4;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$000(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$4;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$300(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappcenter/app/H5App$4;->this$0:Lcom/alipay/mobile/nebulaappcenter/app/H5App;

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappcenter/app/H5App;->access$300(Lcom/alipay/mobile/nebulaappcenter/app/H5App;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    const-string/jumbo v3, "3"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulaappcenter/app/H5NebulaDBService;->updateUnavailableReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method
