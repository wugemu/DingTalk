.class Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;
.super Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$ParseRunnable;
.source "H5ContentPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->parseContent(ZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

.field final synthetic val$copyBundle:Landroid/os/Bundle;

.field final synthetic val$hotUpdate:Z

.field final synthetic val$needInstall:Z

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Ljava/lang/String;ZLandroid/os/Bundle;JZ)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    iput-boolean p3, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->val$needInstall:Z

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->val$copyBundle:Landroid/os/Bundle;

    iput-wide p5, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->val$startTime:J

    iput-boolean p7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->val$hotUpdate:Z

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$ParseRunnable;-><init>(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 473
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->val$needInstall:Z

    if-eqz v3, :cond_0

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 475
    .local v14, "installTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$800(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$500(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$600(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v3, v4, v6, v7}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->installApp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$300(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "installApp spend allCoast "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v14

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    .end local v14    # "installTime":J
    :cond_0
    const/4 v10, 0x0

    .line 481
    .local v10, "content":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[B>;"
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->val$copyBundle:Landroid/os/Bundle;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;->getParsedPackageContent(Landroid/os/Bundle;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v10

    .line 484
    :cond_1
    if-eqz v10, :cond_6

    .line 485
    new-instance v12, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    invoke-direct {v12}, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;-><init>()V

    .line 486
    .local v12, "errorCode":Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    const/4 v3, 0x0

    iput v3, v12, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->code:I

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$300(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "load h5 package from preloaded package cache"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$300(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "parse appId "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$500(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " errorCode "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v12, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->code:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget v3, v12, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->code:I

    if-nez v3, :cond_7

    const/16 v16, 0x1

    .line 495
    .local v16, "parseSucceed":Z
    :goto_1
    if-eqz v16, :cond_8

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->clear()V

    .line 498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v3, v10}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->putAll(Ljava/util/Map;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$600(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->val$startTime:J

    invoke-static {v3, v6, v7}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$900(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;J)V

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$500(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/Nebula;->isTinyResAppId(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$1000(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)V

    .line 531
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$300(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "parseContent inner sessionid "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->sid:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$1200(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->sid:Ljava/lang/String;

    move/from16 v0, v16

    invoke-static {v3, v0, v4, v6}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$1300(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;ZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 535
    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->val$hotUpdate:Z

    if-eqz v3, :cond_3

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "appId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$500(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "^version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$600(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "^publicId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 537
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$1200(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v6, "publicId"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "^url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 538
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$1200(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v6, "url"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 539
    .local v5, "param2":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 540
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 541
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v2, :cond_3

    sget-object v3, Lios;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 542
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$1200(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v6, "url"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 541
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 543
    const-string/jumbo v3, "H5_AL_SESSION_UPDATEPACKAGE_SUCCESS"

    const-string/jumbo v4, "diagnose"

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "appId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 545
    invoke-static {v9}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$500(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "^version="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v9}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$600(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "H-MM"

    .line 543
    invoke-interface/range {v2 .. v9}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    .end local v2    # "provider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v5    # "param2":Ljava/lang/String;
    :cond_3
    iget v3, v12, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->code:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    .line 551
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$1200(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 552
    .local v18, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$1200(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "publicId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 553
    .local v17, "publicId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "appId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$500(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "^version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 554
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$600(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "^publicId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "^url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "^errorCode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 558
    .restart local v5    # "param2":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 559
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 560
    .restart local v2    # "provider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v2, :cond_4

    sget-object v3, Lios;->c:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 561
    const-string/jumbo v3, "H5_AL_SESSION_VERIFYTAR_FAIL"

    const-string/jumbo v4, "diagnose"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "tarPath="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 562
    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$1400(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "appId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 563
    invoke-static {v9}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$500(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "^version="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v9}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$600(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "H-MM"

    .line 561
    invoke-interface/range {v2 .. v9}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_4
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 567
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "url"

    move-object/from16 v0, v18

    invoke-interface {v13, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string/jumbo v3, "tarPath"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$1400(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string/jumbo v3, "MTBIZ_H5"

    const-string/jumbo v4, "H5_VERIFYTAR_FAILED"

    const-string/jumbo v6, "1"

    invoke-static {v3, v4, v6, v13}, Lcom/alipay/mobile/nebula/log/H5Logger;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 571
    .end local v2    # "provider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v5    # "param2":Ljava/lang/String;
    .end local v13    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "publicId":Ljava/lang/String;
    .end local v18    # "url":Ljava/lang/String;
    :cond_5
    const-string/jumbo v3, "h5PageReady"

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v3, v4, v6}, Lcom/alipay/mobile/nebula/data/H5Trace;->event(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 572
    return-void

    .line 489
    .end local v12    # "errorCode":Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    .end local v16    # "parseSucceed":Z
    :cond_6
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    .end local v10    # "content":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[B>;"
    invoke-direct {v10}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 490
    .restart local v10    # "content":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;[B>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->val$copyBundle:Landroid/os/Bundle;

    invoke-static {v3, v10}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->parsePackage(Landroid/os/Bundle;Ljava/util/Map;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v12

    .restart local v12    # "errorCode":Lcom/alipay/mobile/nebulacore/api/H5ParseResult;
    goto/16 :goto_0

    .line 494
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 509
    .restart local v16    # "parseSucceed":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "verifyFail_"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v12, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->msg:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$1102(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Ljava/lang/String;)Ljava/lang/String;

    .line 511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->val$startTime:J

    invoke-static {v3, v6, v7}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$900(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;J)V

    .line 513
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 514
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 515
    .restart local v2    # "provider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v2, :cond_2

    .line 516
    iget-object v11, v12, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->msg:Ljava/lang/String;

    .line 517
    .local v11, "errMsg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->val$needInstall:Z

    if-eqz v3, :cond_9

    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_patchFail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$1100(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "_patchFail"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$1102(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;Ljava/lang/String;)Ljava/lang/String;

    .line 522
    :cond_9
    const-string/jumbo v3, "H5_APP_VERIFY"

    const-string/jumbo v4, ""

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "errorMsg="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "isNebulaApp="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 523
    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$800(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$500(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isNebulaApp(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "appId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 524
    invoke-static {v9}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$500(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "^version="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage$5;->this$0:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 525
    invoke-static {v9}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->access$600(Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "^step=fail^errorCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v12, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->code:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "H-MM"

    .line 522
    invoke-interface/range {v2 .. v9}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
