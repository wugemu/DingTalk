.class Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;
.super Ljava/lang/Object;
.source "H5LoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

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
    .line 152
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string/jumbo v1, "H5LoadingActivity"

    const-string/jumbo v2, "isFinishing not handler timeout"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string/jumbo v1, "H5LoadingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "timeout  type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->access$100(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->access$100(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->isSyncType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 162
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_1

    .line 163
    const-string/jumbo v1, "h5_show_nebulaApp_timeout_page"

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->access$200(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->access$100(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    invoke-static {v5}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->sendToWebFail()V

    goto :goto_0

    .line 169
    .end local v0    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5StartAppInfo()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v1

    .line 170
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingManager()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    move-result-object v2

    .line 169
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->exitAndStartApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    goto :goto_0
.end method
