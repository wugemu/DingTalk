.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a$1;
.super Ljava/lang/Object;
.source "MiniAppLoadingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 285
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    const-string/jumbo v1, "MiniAppLoadingActivity"

    const-string/jumbo v2, "isFinishing not handler mTimeout"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_0
    return-void

    .line 288
    :cond_0
    const-string/jumbo v1, "MiniAppLoadingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mTimeout  mType "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->isSyncType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 291
    .local v0, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_1

    .line 292
    const-string/jumbo v1, "h5_show_nebulaApp_timeout_page"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;->b(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;->c(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity$a;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppLoadingActivity;->a()V

    goto :goto_0

    .line 1030
    .end local v0    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    :cond_2
    sget-object v1, Lhok;->c:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    .line 1038
    sget-object v2, Lhok;->b:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    .line 297
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->exitAndStartApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    goto :goto_0
.end method
