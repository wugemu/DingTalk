.class Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$2;
.super Ljava/lang/Object;
.source "H5AppScoreList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->checkPreInstallApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$2;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    iget-object v7, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$2;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    invoke-static {v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->access$500(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    move-result-object v7

    if-nez v7, :cond_0

    .line 151
    iget-object v7, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$2;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    invoke-static {v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->access$100(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;)V

    .line 153
    :cond_0
    iget-object v7, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$2;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getAppListWithStrategy(I)Ljava/util/List;

    move-result-object v5

    .line 154
    .local v5, "preInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 178
    :cond_1
    return-void

    .line 157
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppCenterService()Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-result-object v0

    .line 158
    .local v0, "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v3

    .line 162
    .local v3, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    if-eqz v3, :cond_1

    .line 165
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    .local v1, "appId":Ljava/lang/String;
    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getHighestAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "version":Ljava/lang/String;
    invoke-interface {v3, v1, v6}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v2

    .line 168
    .local v2, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v4

    .line 169
    .local v4, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    .line 170
    invoke-interface {v4, v2}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 172
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->isInstalled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 173
    const-string/jumbo v8, "H5AppScoreList"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "pre install appId : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " version : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->installApp()Z

    goto :goto_0
.end method
