.class public final Ljqh$1;
.super Landroid/os/AsyncTask;
.source "AppLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljqh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

.field final synthetic b:Ljqh$b;

.field final synthetic c:Ljqh;


# direct methods
.method public constructor <init>(Ljqh;Lcom/taobao/windmill/bundle/container/core/AppCodeModel;Ljqh$b;)V
    .locals 0
    .param p1, "this$0"    # Ljqh;

    .prologue
    .line 81
    iput-object p1, p0, Ljqh$1;->c:Ljqh;

    iput-object p2, p0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iput-object p3, p0, Ljqh$1;->b:Ljqh$b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 35

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget-object v0, v4, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->runMode:Lcom/taobao/windmill/bundle/container/core/RunMode;

    move-object/from16 v30, v0

    .line 87
    .local v30, "runMode":Lcom/taobao/windmill/bundle/container/core/RunMode;
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v4

    .line 1161
    iget-object v4, v4, Ljpo;->c:Ljpo$a;

    iget-object v10, v4, Ljpo$a;->k:Ljpq;

    .line 89
    .local v10, "appAdapter":Ljpq;
    if-nez v10, :cond_0

    .line 90
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "com.taobao.windmill.bundle.WML.Config.appAdapter must initialed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 92
    :cond_0
    const/4 v12, 0x0

    .line 95
    .local v12, "appInfo":Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    sget-object v4, Lcom/taobao/windmill/bundle/container/core/RunMode;->ONLINE_PLUS:Lcom/taobao/windmill/bundle/container/core/RunMode;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_e

    .line 96
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 2049
    iget-object v4, v4, Ljqh;->b:Landroid/content/Context;

    .line 97
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v5}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v6}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getZCacheKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v10, v4, v5, v6, v7}, Ljpq;->downLoadApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v20

    .line 98
    .local v20, "downloadResult":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    move-object/from16 v0, v20

    iget-boolean v4, v0, Ljpq$a;->a:Z

    if-nez v4, :cond_7

    .line 111
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    .line 112
    invoke-virtual {v6}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getVersion()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    iget-object v7, v0, Ljpq$a;->b:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v8, v0, Ljpq$a;->c:Ljava/lang/String;

    .line 111
    invoke-static {v4, v5, v6, v7, v8}, Ljre$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v29, Ljpq$a;

    invoke-direct/range {v29 .. v29}, Ljpq$a;-><init>()V

    .line 117
    .local v29, "result":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v29

    iput-boolean v4, v0, Ljpq$a;->a:Z

    .line 118
    if-eqz v10, :cond_1

    .line 119
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appCode:Ljava/lang/String;

    invoke-interface {v10, v4}, Ljpq;->getAppCodeInfo(Ljava/lang/String;)Ljpq$a;

    move-result-object v29

    .line 121
    :cond_1
    move-object/from16 v0, v29

    iget-boolean v4, v0, Ljpq$a;->a:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, v29

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    if-eqz v4, :cond_6

    move-object/from16 v0, v29

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    if-eqz v4, :cond_6

    .line 124
    move-object/from16 v0, v29

    iget-object v12, v0, Ljpq$a;->d:Ljava/lang/Object;

    .end local v12    # "appInfo":Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    check-cast v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .line 126
    .restart local v12    # "appInfo":Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    iget-object v6, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    invoke-static {v4, v5, v6}, Ljqh;->a(Ljqh;Ljqh$b;Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 3049
    iget-object v4, v4, Ljqh;->b:Landroid/content/Context;

    .line 129
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v5}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v7, v7, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zipUrl:Ljava/lang/String;

    invoke-interface {v10, v4, v5, v6, v7}, Ljpq;->downLoadApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v21

    .line 131
    .local v21, "downloadResult2":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    move-object/from16 v0, v21

    iget-boolean v4, v0, Ljpq$a;->a:Z

    if-nez v4, :cond_2

    .line 132
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    move-object/from16 v0, v21

    iget-object v6, v0, Ljpq$a;->b:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v7, v0, Ljpq$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Ljqh;->a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v4, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appId:Ljava/lang/String;

    iget-object v5, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->templateAppId:Ljava/lang/String;

    iget-object v6, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "FAIL_DOWNLOAD_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v8, v0, Ljpq$a;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    iget-object v8, v0, Ljpq$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7, v8}, Ljre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 4049
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 143
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 5049
    iget-object v5, v5, Ljqh;->e:Ljpm;

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "FAIL_DOWNLOAD_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v7, v0, Ljpq$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v7, v0, Ljpq$a;->c:Ljava/lang/String;

    .line 142
    invoke-static {v4, v5, v6, v7}, Ljre$b;->a(Ljqd;Ljpm;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v4, 0x0

    .line 747
    .end local v20    # "downloadResult":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .end local v21    # "downloadResult2":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .end local v29    # "result":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    :goto_0
    return-object v4

    .line 148
    .restart local v20    # "downloadResult":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .restart local v21    # "downloadResult2":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .restart local v29    # "result":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 6049
    iget-object v5, v4, Ljqh;->b:Landroid/content/Context;

    .line 148
    move-object/from16 v0, v21

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    invoke-static {v5, v4}, Ljqu;->a(Landroid/content/Context;Ljava/io/File;)Ljqw;

    move-result-object v23

    .line 149
    .local v23, "fileLoader":Ljqw;, "Ljqw<*>;"
    move-object/from16 v0, v29

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    invoke-static {v4}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;->a(Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)V

    .line 471
    .end local v21    # "downloadResult2":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .end local v29    # "result":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 35049
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 471
    if-eqz v4, :cond_4

    .line 472
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 36049
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 472
    const-string/jumbo v5, "appLoaded"

    invoke-interface {v4, v5}, Ljqd;->addPerLog(Ljava/lang/String;)Ljpm;

    .line 475
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v5

    .line 36123
    const/4 v4, 0x3

    sget-object v6, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->PACKAGE:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v7, "SUCCESS_INFO"

    const-string/jumbo v8, ""

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/String;

    const/16 v33, 0x0

    const-string/jumbo v34, "version"

    aput-object v34, v9, v33

    const/16 v33, 0x1

    iget-object v0, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    move-object/from16 v34, v0

    aput-object v34, v9, v33

    const/16 v33, 0x2

    const-string/jumbo v34, "zCacheKey"

    aput-object v34, v9, v33

    const/16 v33, 0x3

    iget-object v0, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zCacheKey:Ljava/lang/String;

    move-object/from16 v34, v0

    aput-object v34, v9, v33

    const/16 v33, 0x4

    const-string/jumbo v34, "zipUrl"

    aput-object v34, v9, v33

    const/16 v33, 0x5

    iget-object v0, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zipUrl:Ljava/lang/String;

    move-object/from16 v34, v0

    aput-object v34, v9, v33

    const/16 v33, 0x6

    const-string/jumbo v34, "minSdkVersion"

    aput-object v34, v9, v33

    const/16 v33, 0x7

    iget-object v0, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->minSdkVersion:I

    move/from16 v34, v0

    .line 36127
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v9, v33

    .line 36123
    invoke-static/range {v4 .. v9}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {v23 .. v23}, Ljqw;->a()Ljava/lang/String;

    move-result-object v18

    .line 479
    .local v18, "configData":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    sget-object v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_CONFIG_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v7, "\u672a\u627e\u5230app.config.json"

    invoke-static {v4, v5, v6, v7}, Ljqh;->a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    sget-object v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_CONFIG_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    invoke-interface {v10, v4, v5, v6}, Ljpq;->setDamage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "EMPTY"

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    sget-object v4, Lcom/taobao/windmill/bundle/container/core/RunMode;->PREVIEW:Lcom/taobao/windmill/bundle/container/core/RunMode;

    move-object/from16 v0, v30

    if-eq v0, v4, :cond_5

    sget-object v4, Lcom/taobao/windmill/bundle/container/core/RunMode;->DEBUG:Lcom/taobao/windmill/bundle/container/core/RunMode;

    move-object/from16 v0, v30

    if-eq v0, v4, :cond_5

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->templateAppId:Ljava/lang/String;

    iget-object v6, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    const-string/jumbo v7, "FAIL_APPCONFIG_EMPTY"

    const-string/jumbo v8, ""

    invoke-static {v4, v5, v6, v7, v8}, Ljre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 37049
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 494
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 38049
    iget-object v5, v5, Ljqh;->e:Ljpm;

    .line 494
    const-string/jumbo v6, "FAIL_APPCONFIG_EMPTY"

    const-string/jumbo v7, ""

    .line 493
    invoke-static {v4, v5, v6, v7}, Ljre$b;->a(Ljqd;Ljpm;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 151
    .end local v18    # "configData":Ljava/lang/String;
    .end local v23    # "fileLoader":Ljqw;, "Ljqw<*>;"
    .restart local v29    # "result":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->b:Ljqh$b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "AI_"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    iget-object v7, v0, Ljpq$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    iget-object v8, v0, Ljpq$a;->c:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    invoke-static {v5, v6, v7, v8, v4}, Ljqh;->a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    .line 154
    invoke-virtual {v6}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getVersion()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "FAIL_MTOP_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    iget-object v8, v0, Ljpq$a;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    iget-object v8, v0, Ljpq$a;->c:Ljava/lang/String;

    .line 153
    invoke-static {v4, v5, v6, v7, v8}, Ljre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 7049
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 159
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 8049
    iget-object v5, v5, Ljqh;->e:Ljpm;

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "FAIL_MTOP_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    iget-object v7, v0, Ljpq$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v29

    iget-object v7, v0, Ljpq$a;->c:Ljava/lang/String;

    .line 158
    invoke-static {v4, v5, v6, v7}, Ljre$b;->a(Ljqd;Ljpm;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    iget-object v5, v0, Ljpq$a;->b:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v6, v0, Ljpq$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 166
    .end local v29    # "result":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    .line 167
    invoke-virtual {v6}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getVersion()Ljava/lang/String;

    move-result-object v6

    .line 166
    invoke-static {v4, v5, v6}, Ljre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 9049
    iget-object v5, v4, Ljqh;->b:Landroid/content/Context;

    .line 168
    move-object/from16 v0, v20

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    invoke-static {v5, v4}, Ljqu;->a(Landroid/content/Context;Ljava/io/File;)Ljqw;

    move-result-object v23

    .line 169
    .restart local v23    # "fileLoader":Ljqw;, "Ljqw<*>;"
    invoke-virtual/range {v23 .. v23}, Ljqw;->c()Ljava/lang/String;

    move-result-object v14

    .line 170
    .local v14, "appInfoStr":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 171
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    sget-object v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_INFO_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v7, "\u672a\u627e\u5230app.info.json"

    invoke-static {v4, v5, v6, v7}, Ljqh;->a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    .line 176
    invoke-virtual {v6}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getVersion()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "FAIL_APPINFO_EMPTY"

    const-string/jumbo v8, ""

    .line 175
    invoke-static {v4, v5, v6, v7, v8}, Ljre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 10049
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 180
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 11049
    iget-object v5, v5, Ljqh;->e:Ljpm;

    .line 180
    const-string/jumbo v6, "FAIL_APPINFO_EMPTY"

    const-string/jumbo v7, ""

    .line 179
    invoke-static {v4, v5, v6, v7}, Ljre$b;->a(Ljqd;Ljpm;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "EMPTY"

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6, v14}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    sget-object v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_INFO_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    invoke-interface {v10, v4, v5, v6}, Ljpq;->setDamage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 190
    :cond_8
    :try_start_0
    const-class v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    invoke-static {v14, v4}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    .line 192
    .local v13, "appInfoInFile":Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;
    if-nez v13, :cond_9

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    sget-object v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->JSON_PARSE_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v7, "app.info.json\u89e3\u6790\u5931\u8d25"

    invoke-static {v4, v5, v6, v7}, Ljqh;->a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    .line 198
    invoke-virtual {v6}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getVersion()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "FAIL_APPINFO_PARSE"

    const-string/jumbo v8, ""

    .line 197
    invoke-static {v4, v5, v6, v7, v8}, Ljre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 12049
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 202
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 13049
    iget-object v5, v5, Ljqh;->e:Ljpm;

    .line 202
    const-string/jumbo v6, "FAIL_APPINFO_PARSE"

    const-string/jumbo v7, ""

    .line 201
    invoke-static {v4, v5, v6, v7}, Ljre$b;->a(Ljqd;Ljpm;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "PARSE"

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6, v14}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 208
    .end local v13    # "appInfoInFile":Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;
    :catch_0
    move-exception v22

    .line 209
    .local v22, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    sget-object v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->JSON_PARSE_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "app.info.json parse error"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 209
    invoke-static {v4, v5, v6, v7}, Ljqh;->a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    .line 214
    invoke-virtual {v6}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getVersion()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "FAIL_APPINFO_EXCEPTION"

    .line 215
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 213
    invoke-static {v4, v5, v6, v7, v8}, Ljre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 14049
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 219
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 15049
    iget-object v5, v5, Ljqh;->e:Ljpm;

    .line 219
    const-string/jumbo v6, "FAIL_APPINFO_EXCEPTION"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 218
    invoke-static {v4, v5, v6, v7}, Ljre$b;->a(Ljqd;Ljpm;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "EXCEPTION"

    .line 222
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 221
    invoke-static {v4, v5, v6, v14}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 226
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v13    # "appInfoInFile":Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    invoke-static {v4, v5, v13}, Ljqh;->a(Ljqh;Ljqh$b;Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;)V

    .line 229
    iget v4, v13, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->minSdkVersion:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_c

    .line 231
    new-instance v29, Ljpq$a;

    invoke-direct/range {v29 .. v29}, Ljpq$a;-><init>()V

    .line 232
    .restart local v29    # "result":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v29

    iput-boolean v4, v0, Ljpq$a;->a:Z

    .line 233
    if-eqz v10, :cond_a

    .line 234
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appCode:Ljava/lang/String;

    invoke-interface {v10, v4}, Ljpq;->getAppCodeInfo(Ljava/lang/String;)Ljpq$a;

    move-result-object v29

    .line 237
    :cond_a
    move-object/from16 v0, v29

    iget-boolean v4, v0, Ljpq$a;->a:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, v29

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    if-eqz v4, :cond_d

    move-object/from16 v0, v29

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    if-eqz v4, :cond_d

    .line 240
    move-object/from16 v0, v29

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    iget-object v13, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    invoke-static {v4, v5, v13}, Ljqh;->a(Ljqh;Ljqh$b;Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 16049
    iget-object v4, v4, Ljqh;->b:Landroid/content/Context;

    .line 245
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v5}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, v13, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zipUrl:Ljava/lang/String;

    invoke-interface {v10, v4, v5, v6, v7}, Ljpq;->downLoadApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v21

    .line 247
    .restart local v21    # "downloadResult2":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    move-object/from16 v0, v21

    iget-boolean v4, v0, Ljpq$a;->a:Z

    if-nez v4, :cond_b

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    move-object/from16 v0, v21

    iget-object v6, v0, Ljpq$a;->b:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v7, v0, Ljpq$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Ljqh;->a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v4, v13, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appId:Ljava/lang/String;

    iget-object v5, v13, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->templateAppId:Ljava/lang/String;

    iget-object v6, v13, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "FAIL_DOWNLOAD_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v8, v0, Ljpq$a;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v21

    iget-object v8, v0, Ljpq$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7, v8}, Ljre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 17049
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 259
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 18049
    iget-object v5, v5, Ljqh;->e:Ljpm;

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "FAIL_DOWNLOAD_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v7, v0, Ljpq$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v7, v0, Ljpq$a;->c:Ljava/lang/String;

    .line 258
    invoke-static {v4, v5, v6, v7}, Ljre$b;->a(Ljqd;Ljpm;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 264
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 19049
    iget-object v5, v4, Ljqh;->b:Landroid/content/Context;

    .line 264
    move-object/from16 v0, v21

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    invoke-static {v5, v4}, Ljqu;->a(Landroid/content/Context;Ljava/io/File;)Ljqw;

    move-result-object v23

    .line 265
    move-object/from16 v0, v29

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    invoke-static {v4}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;->a(Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)V

    .line 284
    .end local v21    # "downloadResult2":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .end local v29    # "result":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    :cond_c
    new-instance v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .end local v12    # "appInfo":Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    invoke-direct {v12}, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;-><init>()V

    .line 285
    .restart local v12    # "appInfo":Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    iput-object v13, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    goto/16 :goto_1

    .line 267
    .restart local v29    # "result":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->b:Ljqh$b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "AI_"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    iget-object v7, v0, Ljpq$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    iget-object v8, v0, Ljpq$a;->c:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    invoke-static {v5, v6, v7, v8, v4}, Ljqh;->a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    .line 270
    invoke-virtual {v6}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getVersion()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "FAIL_MTOP_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    iget-object v8, v0, Ljpq$a;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    iget-object v8, v0, Ljpq$a;->c:Ljava/lang/String;

    .line 269
    invoke-static {v4, v5, v6, v7, v8}, Ljre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 20049
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 275
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 21049
    iget-object v5, v5, Ljqh;->e:Ljpm;

    .line 275
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "FAIL_MTOP_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    iget-object v7, v0, Ljpq$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v29

    iget-object v7, v0, Ljpq$a;->c:Ljava/lang/String;

    .line 274
    invoke-static {v4, v5, v6, v7}, Ljre$b;->a(Ljqd;Ljpm;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    iget-object v5, v0, Ljpq$a;->b:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v6, v0, Ljpq$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 288
    .end local v13    # "appInfoInFile":Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;
    .end local v14    # "appInfoStr":Ljava/lang/String;
    .end local v20    # "downloadResult":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .end local v23    # "fileLoader":Ljqw;, "Ljqw<*>;"
    .end local v29    # "result":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    :cond_e
    sget-object v4, Lcom/taobao/windmill/bundle/container/core/RunMode;->PREVIEW:Lcom/taobao/windmill/bundle/container/core/RunMode;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_13

    .line 291
    new-instance v29, Ljpq$a;

    invoke-direct/range {v29 .. v29}, Ljpq$a;-><init>()V

    .line 292
    .restart local v29    # "result":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v29

    iput-boolean v4, v0, Ljpq$a;->a:Z

    .line 293
    if-eqz v10, :cond_f

    .line 294
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appCode:Ljava/lang/String;

    invoke-interface {v10, v4}, Ljpq;->getPreViewAppCodeInfo(Ljava/lang/String;)Ljpq$a;

    move-result-object v29

    .line 296
    :cond_f
    move-object/from16 v0, v29

    iget-boolean v4, v0, Ljpq$a;->a:Z

    if-eqz v4, :cond_12

    move-object/from16 v0, v29

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    if-eqz v4, :cond_12

    move-object/from16 v0, v29

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    if-eqz v4, :cond_12

    .line 299
    move-object/from16 v0, v29

    iget-object v12, v0, Ljpq$a;->d:Ljava/lang/Object;

    .end local v12    # "appInfo":Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    check-cast v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .line 301
    .restart local v12    # "appInfo":Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    iget-object v6, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    invoke-static {v4, v5, v6}, Ljqh;->a(Ljqh;Ljqh$b;Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    iget-object v5, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    invoke-static {v4, v5}, Ljqh;->a(Ljqh;Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;)Ljava/lang/String;

    move-result-object v32

    .line 306
    .local v32, "zCacheKey":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 308
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 22049
    iget-object v4, v4, Ljqh;->b:Landroid/content/Context;

    .line 308
    iget-object v5, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appId:Ljava/lang/String;

    iget-object v6, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zipUrl:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-interface {v10, v4, v5, v0, v6}, Ljpq;->downLoadApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v20

    .line 318
    .restart local v20    # "downloadResult":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    :goto_2
    move-object/from16 v0, v20

    iget-boolean v4, v0, Ljpq$a;->a:Z

    if-nez v4, :cond_11

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    move-object/from16 v0, v20

    iget-object v6, v0, Ljpq$a;->b:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v7, v0, Ljpq$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Ljqh;->a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 313
    .end local v20    # "downloadResult":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 23049
    iget-object v4, v4, Ljqh;->b:Landroid/content/Context;

    .line 313
    iget-object v5, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appId:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v7, v7, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zipUrl:Ljava/lang/String;

    invoke-interface {v10, v4, v5, v6, v7}, Ljpq;->downLoadApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v20

    .restart local v20    # "downloadResult":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    goto :goto_2

    .line 324
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 24049
    iget-object v5, v4, Ljqh;->b:Landroid/content/Context;

    .line 324
    move-object/from16 v0, v20

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    invoke-static {v5, v4}, Ljqu;->a(Landroid/content/Context;Ljava/io/File;)Ljqw;

    move-result-object v23

    .line 326
    .restart local v23    # "fileLoader":Ljqw;, "Ljqw<*>;"
    move-object/from16 v0, v29

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    invoke-static {v4}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;->a(Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)V

    goto/16 :goto_1

    .line 329
    .end local v20    # "downloadResult":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .end local v23    # "fileLoader":Ljqw;, "Ljqw<*>;"
    .end local v32    # "zCacheKey":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->b:Ljqh$b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "AI_"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    iget-object v7, v0, Ljpq$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    iget-object v8, v0, Ljpq$a;->c:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    invoke-static {v5, v6, v7, v8, v4}, Ljqh;->a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    iget-object v5, v0, Ljpq$a;->b:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v6, v0, Ljpq$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 336
    .end local v29    # "result":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    :cond_13
    sget-object v4, Lcom/taobao/windmill/bundle/container/core/RunMode;->DEBUG:Lcom/taobao/windmill/bundle/container/core/RunMode;

    move-object/from16 v0, v30

    if-ne v0, v4, :cond_19

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 25049
    iget-object v4, v4, Ljqh;->b:Landroid/content/Context;

    .line 339
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v5}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget-object v7, v7, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->orgUrl:Ljava/lang/String;

    invoke-interface {v10, v4, v5, v6, v7}, Ljpq;->downLoadApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v20

    .line 340
    .restart local v20    # "downloadResult":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    move-object/from16 v0, v20

    iget-boolean v4, v0, Ljpq$a;->a:Z

    if-nez v4, :cond_14

    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    move-object/from16 v0, v20

    iget-object v6, v0, Ljpq$a;->b:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v7, v0, Ljpq$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Ljqh;->a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 345
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 26049
    iget-object v5, v4, Ljqh;->b:Landroid/content/Context;

    .line 345
    move-object/from16 v0, v20

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    invoke-static {v5, v4}, Ljqu;->a(Landroid/content/Context;Ljava/io/File;)Ljqw;

    move-result-object v23

    .line 346
    .restart local v23    # "fileLoader":Ljqw;, "Ljqw<*>;"
    invoke-virtual/range {v23 .. v23}, Ljqw;->c()Ljava/lang/String;

    move-result-object v14

    .line 347
    .restart local v14    # "appInfoStr":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 350
    :try_start_1
    const-class v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    invoke-static {v14, v4}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    .restart local v13    # "appInfoInFile":Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    invoke-static {v4, v5, v13}, Ljqh;->a(Ljqh;Ljqh$b;Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;)V

    .line 360
    new-instance v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .end local v12    # "appInfo":Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    invoke-direct {v12}, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;-><init>()V

    .line 361
    .restart local v12    # "appInfo":Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    iput-object v13, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    .line 362
    if-eqz v13, :cond_18

    .line 363
    iget-object v4, v13, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appName:Ljava/lang/String;

    .line 366
    :cond_15
    iget-object v4, v13, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appId:Ljava/lang/String;

    .line 369
    :cond_16
    iget-object v4, v13, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appLogo:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppLogo()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appLogo:Ljava/lang/String;

    .line 372
    :cond_17
    iget-object v4, v13, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->frameTempType:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 373
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getFrameTempType()Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/windmill/bundle/container/frame/FrameType;->a(Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->frameTempType:Ljava/lang/String;

    .line 378
    .end local v13    # "appInfoInFile":Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;
    :cond_18
    if-nez v12, :cond_3

    .line 379
    new-instance v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .end local v12    # "appInfo":Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    invoke-direct {v12}, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;-><init>()V

    .line 380
    .restart local v12    # "appInfo":Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    new-instance v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    invoke-direct {v4}, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;-><init>()V

    iput-object v4, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    .line 381
    iget-object v4, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v5}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appId:Ljava/lang/String;

    .line 382
    iget-object v4, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v5}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appName:Ljava/lang/String;

    .line 383
    iget-object v4, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v5}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppLogo()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appLogo:Ljava/lang/String;

    .line 384
    iget-object v4, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    .line 385
    invoke-virtual {v5}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getFrameTempType()Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/windmill/bundle/container/frame/FrameType;->a(Lcom/taobao/windmill/bundle/container/frame/FrameType$Type;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->frameTempType:Ljava/lang/String;

    .line 386
    iget-object v4, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->drawerEnable:Z

    .line 387
    iget-object v4, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->footPrintEnable:Z

    .line 388
    iget-object v4, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->favorEnable:Z

    goto/16 :goto_1

    .line 352
    :catch_1
    move-exception v22

    .line 353
    .restart local v22    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move-object/from16 v0, v22

    invoke-static {v4, v5, v0}, Ljrc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "EXCEPTION"

    .line 355
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 354
    invoke-static {v4, v5, v6, v14}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v13, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    invoke-direct {v13}, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;-><init>()V

    .restart local v13    # "appInfoInFile":Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;
    goto/16 :goto_3

    .line 392
    .end local v13    # "appInfoInFile":Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;
    .end local v14    # "appInfoStr":Ljava/lang/String;
    .end local v20    # "downloadResult":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .end local v22    # "e":Ljava/lang/Exception;
    .end local v23    # "fileLoader":Ljqw;, "Ljqw<*>;"
    :cond_19
    new-instance v29, Ljpq$a;

    invoke-direct/range {v29 .. v29}, Ljpq$a;-><init>()V

    .line 393
    .restart local v29    # "result":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v29

    iput-boolean v4, v0, Ljpq$a;->a:Z

    .line 394
    if-eqz v10, :cond_1a

    .line 395
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->appCode:Ljava/lang/String;

    invoke-interface {v10, v4}, Ljpq;->getAppCodeInfo(Ljava/lang/String;)Ljpq$a;

    move-result-object v29

    .line 398
    :cond_1a
    if-eqz v29, :cond_1c

    move-object/from16 v0, v29

    iget-boolean v4, v0, Ljpq$a;->a:Z

    if-eqz v4, :cond_1c

    move-object/from16 v0, v29

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    if-eqz v4, :cond_1c

    move-object/from16 v0, v29

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    if-eqz v4, :cond_1c

    .line 401
    move-object/from16 v0, v29

    iget-object v12, v0, Ljpq$a;->d:Ljava/lang/Object;

    .end local v12    # "appInfo":Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    check-cast v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .line 403
    .restart local v12    # "appInfo":Lcom/taobao/windmill/bundle/container/core/AppInfoModel;
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    iget-object v6, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    invoke-static {v4, v5, v6}, Ljqh;->a(Ljqh;Ljqh$b;Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    iget-object v5, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    invoke-static {v4, v5}, Ljqh;->a(Ljqh;Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;)Ljava/lang/String;

    move-result-object v32

    .line 407
    .restart local v32    # "zCacheKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 27049
    iget-object v4, v4, Ljqh;->b:Landroid/content/Context;

    .line 408
    iget-object v5, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->appId:Ljava/lang/String;

    iget-object v6, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->zipUrl:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-interface {v10, v4, v5, v0, v6}, Ljpq;->downLoadApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpq$a;

    move-result-object v20

    .line 409
    .restart local v20    # "downloadResult":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    move-object/from16 v0, v20

    iget-boolean v4, v0, Ljpq$a;->a:Z

    if-nez v4, :cond_1b

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    move-object/from16 v0, v20

    iget-object v6, v0, Ljpq$a;->b:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v7, v0, Ljpq$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Ljqh;->a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->templateAppId:Ljava/lang/String;

    iget-object v6, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "FAIL_DOWNLOAD_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v8, v0, Ljpq$a;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    iget-object v8, v0, Ljpq$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7, v8}, Ljre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 28049
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 421
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 29049
    iget-object v5, v5, Ljqh;->e:Ljpm;

    .line 421
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "FAIL_DOWNLOAD_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v7, v0, Ljpq$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    iget-object v7, v0, Ljpq$a;->c:Ljava/lang/String;

    .line 420
    invoke-static {v4, v5, v6, v7}, Ljre$b;->a(Ljqd;Ljpm;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->templateAppId:Ljava/lang/String;

    iget-object v6, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v7, v0, Ljpq$a;->b:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v8, v0, Ljpq$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7, v8}, Ljre$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 431
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 30049
    iget-object v5, v4, Ljqh;->b:Landroid/content/Context;

    .line 431
    move-object/from16 v0, v20

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    invoke-static {v5, v4}, Ljqu;->a(Landroid/content/Context;Ljava/io/File;)Ljqw;

    move-result-object v23

    .line 433
    .restart local v23    # "fileLoader":Ljqw;, "Ljqw<*>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->templateAppId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    .line 434
    invoke-virtual {v6}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getVersion()Ljava/lang/String;

    move-result-object v6

    .line 433
    invoke-static {v4, v5, v6}, Ljre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    move-object/from16 v0, v29

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    invoke-static {v4}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;->a(Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)V

    goto/16 :goto_1

    .line 437
    .end local v20    # "downloadResult":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .end local v23    # "fileLoader":Ljqw;, "Ljqw<*>;"
    .end local v32    # "zCacheKey":Ljava/lang/String;
    :cond_1c
    if-eqz v29, :cond_1d

    .line 439
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->b:Ljqh$b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "AI_"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    iget-object v7, v0, Ljpq$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    iget-object v8, v0, Ljpq$a;->c:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v4, v0, Ljpq$a;->d:Ljava/lang/Object;

    check-cast v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    invoke-static {v5, v6, v7, v8, v4}, Ljqh;->a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    .line 442
    invoke-virtual {v6}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getVersion()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "FAIL_MTOP_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    iget-object v8, v0, Ljpq$a;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v29

    iget-object v8, v0, Ljpq$a;->c:Ljava/lang/String;

    .line 441
    invoke-static {v4, v5, v6, v7, v8}, Ljre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 31049
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 447
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 32049
    iget-object v5, v5, Ljqh;->e:Ljpm;

    .line 447
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "FAIL_MTOP_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    iget-object v7, v0, Ljpq$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v29

    iget-object v7, v0, Ljpq$a;->c:Ljava/lang/String;

    .line 446
    invoke-static {v4, v5, v6, v7}, Ljre$b;->a(Ljqd;Ljpm;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    iget-object v5, v0, Ljpq$a;->b:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v6, v0, Ljpq$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 454
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    const-string/jumbo v6, "AI_RESULT_NULL"

    const-string/jumbo v7, ""

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Ljqh;->a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/windmill/bundle/container/core/AppInfoModel;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    .line 457
    invoke-virtual {v6}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getVersion()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "FAIL_MTOP_RESULT_NULL"

    const-string/jumbo v8, ""

    .line 456
    invoke-static {v4, v5, v6, v7, v8}, Ljre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 33049
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 462
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 34049
    iget-object v5, v5, Ljqh;->e:Ljpm;

    .line 462
    const-string/jumbo v6, "FAIL_MTOP_RESULT_NULL"

    const-string/jumbo v7, ""

    .line 461
    invoke-static {v4, v5, v6, v7}, Ljre$b;->a(Ljqd;Ljpm;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RESULT_NULL"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 500
    .end local v29    # "result":Ljpq$a;, "Ljpq$a<Lcom/taobao/windmill/bundle/container/core/AppInfoModel;>;"
    .restart local v18    # "configData":Ljava/lang/String;
    .restart local v20    # "downloadResult":Ljpq$a;, "Ljpq$a<Ljava/io/File;>;"
    .restart local v23    # "fileLoader":Ljqw;, "Ljqw<*>;"
    :cond_1e
    const-class v4, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;

    .line 502
    .local v11, "appConfig":Lcom/taobao/windmill/bundle/container/core/AppConfigModel;
    if-nez v11, :cond_20

    .line 503
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    sget-object v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_CONFIG_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    const-string/jumbo v7, "app.config.json\u89e3\u6790\u5931\u8d25"

    invoke-static {v4, v5, v6, v7}, Ljqh;->a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "EMPTY"

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    sget-object v4, Lcom/taobao/windmill/bundle/container/core/RunMode;->PREVIEW:Lcom/taobao/windmill/bundle/container/core/RunMode;

    move-object/from16 v0, v30

    if-eq v0, v4, :cond_1f

    sget-object v4, Lcom/taobao/windmill/bundle/container/core/RunMode;->DEBUG:Lcom/taobao/windmill/bundle/container/core/RunMode;

    move-object/from16 v0, v30

    if-eq v0, v4, :cond_1f

    .line 509
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->templateAppId:Ljava/lang/String;

    iget-object v6, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    const-string/jumbo v7, "FAIL_APPCONFIG_EMPTY"

    const-string/jumbo v8, ""

    invoke-static {v4, v5, v6, v7, v8}, Ljre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 39049
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 514
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 40049
    iget-object v5, v5, Ljqh;->e:Ljpm;

    .line 514
    const-string/jumbo v6, "FAIL_APPCONFIG_EMPTY"

    const-string/jumbo v7, ""

    .line 513
    invoke-static {v4, v5, v6, v7}, Ljre$b;->a(Ljqd;Ljpm;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_1f
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 523
    :cond_20
    const-string/jumbo v4, "webview"

    iget-object v5, v11, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;->appType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 524
    invoke-static {}, Ljsb;->a()Ljsb;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 41049
    iget-object v5, v5, Ljqh;->b:Landroid/content/Context;

    .line 524
    sget-object v6, Lcom/taobao/windmill/rt/runtime/WMLAppType;->WEB:Lcom/taobao/windmill/rt/runtime/WMLAppType;

    move-object/from16 v0, p0

    iget-object v7, v0, Ljqh$1;->c:Ljqh;

    .line 42049
    iget-object v7, v7, Ljqh;->e:Ljpm;

    .line 525
    new-instance v8, Ljqh$1$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljqh$1$1;-><init>(Ljqh$1;)V

    .line 524
    invoke-virtual {v4, v5, v6, v7, v8}, Ljsb;->a(Landroid/content/Context;Lcom/taobao/windmill/rt/runtime/WMLAppType;Ljpm;Ljse;)Ljrz;

    move-result-object v31

    .line 547
    .local v31, "runtimeInstance":Ljrz;
    const-string/jumbo v4, "windmill.web.worker.js"

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 43049
    iget-object v5, v5, Ljqh;->b:Landroid/content/Context;

    .line 547
    invoke-static {v4, v5}, Ljra;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 581
    .local v17, "appWorkerFramework":Ljava/lang/String;
    :goto_4
    new-instance v4, Ljqh$1$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljqh$1$4;-><init>(Ljqh$1;)V

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljrz;->a(Ljsp$a;)V

    .line 605
    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljrz;->b(Ljava/lang/String;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->runMode:Lcom/taobao/windmill/bundle/container/core/RunMode;

    sget-object v5, Lcom/taobao/windmill/bundle/container/core/RunMode;->DEBUG:Lcom/taobao/windmill/bundle/container/core/RunMode;

    if-ne v4, v5, :cond_27

    iget-object v4, v11, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;->appJsUrl:Ljava/lang/String;

    .line 609
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 610
    new-instance v27, Ljrf;

    invoke-direct/range {v27 .. v27}, Ljrf;-><init>()V

    .line 611
    .local v27, "protocol":Ljrf;
    iget-object v4, v11, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;->appJsUrl:Ljava/lang/String;

    .line 612
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljrf;->a(Ljava/lang/String;)[B

    move-result-object v16

    .line 613
    .local v16, "appJSData":[B
    if-eqz v16, :cond_26

    move-object/from16 v0, v16

    array-length v4, v0

    if-lez v4, :cond_26

    .line 614
    new-instance v15, Ljava/lang/String;

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>([B)V

    .line 622
    .end local v16    # "appJSData":[B
    .end local v27    # "protocol":Ljrf;
    .local v15, "appJS":Ljava/lang/String;
    :goto_5
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 625
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 50051
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 625
    if-eqz v4, :cond_21

    .line 626
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 50052
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 626
    const-string/jumbo v5, "appJSLoaded"

    invoke-interface {v4, v5}, Ljqd;->addPerLog(Ljava/lang/String;)Ljpm;

    .line 629
    :cond_21
    new-instance v25, Ljqh$a;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5}, Ljqh$a;-><init>(Ljqh;B)V

    .line 631
    .local v25, "jsResult":Ljqh$a;
    new-instance v19, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 633
    .local v19, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    const-string/jumbo v4, ""

    new-instance v5, Ljqh$1$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-direct {v5, v0, v1, v2}, Ljqh$1$5;-><init>(Ljqh$1;Ljqh$a;Ljava/util/concurrent/CountDownLatch;)V

    move-object/from16 v0, v31

    invoke-interface {v0, v15, v4, v5}, Ljrz;->a(Ljava/lang/String;Ljava/lang/String;Ljrz$c;)V

    .line 656
    const-wide/16 v4, 0xa

    :try_start_2
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 661
    :goto_6
    move-object/from16 v0, v25

    iget-boolean v4, v0, Ljqh$a;->a:Z

    if-nez v4, :cond_28

    .line 662
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "AJ_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget-object v7, v0, Ljqh$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    iget-object v7, v0, Ljqh$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Ljqh;->a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    iget-object v7, v0, Ljqh$a;->b:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v8, v0, Ljqh$a;->c:Ljava/lang/String;

    .line 50053
    const/4 v4, 0x5

    sget-object v6, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->RENDER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "FAIL_APP_"

    move-object/from16 v0, v33

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 666
    sget-object v4, Lcom/taobao/windmill/bundle/container/core/RunMode;->PREVIEW:Lcom/taobao/windmill/bundle/container/core/RunMode;

    move-object/from16 v0, v30

    if-eq v0, v4, :cond_22

    sget-object v4, Lcom/taobao/windmill/bundle/container/core/RunMode;->DEBUG:Lcom/taobao/windmill/bundle/container/core/RunMode;

    move-object/from16 v0, v30

    if-eq v0, v4, :cond_22

    .line 667
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->templateAppId:Ljava/lang/String;

    iget-object v6, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "FAIL_APPJS_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget-object v8, v0, Ljqh$a;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v25

    iget-object v8, v0, Ljqh$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7, v8}, Ljre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 50055
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 674
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 50056
    iget-object v5, v5, Ljqh;->e:Ljpm;

    .line 675
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "FAIL_APPJS_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget-object v7, v0, Ljqh$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    iget-object v7, v0, Ljqh$a;->c:Ljava/lang/String;

    .line 674
    invoke-static {v4, v5, v6, v7}, Ljre$b;->a(Ljqd;Ljpm;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 550
    .end local v15    # "appJS":Ljava/lang/String;
    .end local v17    # "appWorkerFramework":Ljava/lang/String;
    .end local v19    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v25    # "jsResult":Ljqh$a;
    .end local v31    # "runtimeInstance":Ljrz;
    :cond_23
    const-string/jumbo v4, "vue"

    iget-object v5, v11, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;->appType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 552
    invoke-static {}, Ljsb;->a()Ljsb;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 44049
    iget-object v5, v5, Ljqh;->b:Landroid/content/Context;

    .line 552
    sget-object v6, Lcom/taobao/windmill/rt/runtime/WMLAppType;->WEEX:Lcom/taobao/windmill/rt/runtime/WMLAppType;

    move-object/from16 v0, p0

    iget-object v7, v0, Ljqh$1;->c:Ljqh;

    .line 45049
    iget-object v7, v7, Ljqh;->e:Ljpm;

    .line 553
    new-instance v8, Ljqh$1$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljqh$1$2;-><init>(Ljqh$1;)V

    .line 552
    invoke-virtual {v4, v5, v6, v7, v8}, Ljsb;->a(Landroid/content/Context;Lcom/taobao/windmill/rt/runtime/WMLAppType;Ljpm;Ljse;)Ljrz;

    move-result-object v31

    .line 561
    .restart local v31    # "runtimeInstance":Ljrz;
    const-string/jumbo v4, "windmill.vue.worker.js"

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 46049
    iget-object v5, v5, Ljqh;->b:Landroid/content/Context;

    .line 561
    invoke-static {v4, v5}, Ljra;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "appWorkerFramework":Ljava/lang/String;
    goto/16 :goto_4

    .line 563
    .end local v17    # "appWorkerFramework":Ljava/lang/String;
    .end local v31    # "runtimeInstance":Ljrz;
    :cond_24
    const-string/jumbo v4, "gcanvas"

    iget-object v5, v11, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;->appType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 564
    invoke-static {}, Ljsb;->a()Ljsb;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 47049
    iget-object v5, v5, Ljqh;->b:Landroid/content/Context;

    .line 564
    sget-object v6, Lcom/taobao/windmill/rt/runtime/WMLAppType;->GCANVAS:Lcom/taobao/windmill/rt/runtime/WMLAppType;

    move-object/from16 v0, p0

    iget-object v7, v0, Ljqh$1;->c:Ljqh;

    .line 48049
    iget-object v7, v7, Ljqh;->e:Ljpm;

    .line 48055
    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Ljsb;->a(Landroid/content/Context;Lcom/taobao/windmill/rt/runtime/WMLAppType;Ljpm;Ljse;)Ljrz;

    move-result-object v31

    .line 566
    .restart local v31    # "runtimeInstance":Ljrz;
    const/16 v17, 0x0

    .restart local v17    # "appWorkerFramework":Ljava/lang/String;
    goto/16 :goto_4

    .line 568
    .end local v17    # "appWorkerFramework":Ljava/lang/String;
    .end local v31    # "runtimeInstance":Ljrz;
    :cond_25
    invoke-static {}, Ljsb;->a()Ljsb;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 49049
    iget-object v5, v5, Ljqh;->b:Landroid/content/Context;

    .line 568
    sget-object v6, Lcom/taobao/windmill/rt/runtime/WMLAppType;->WEEX:Lcom/taobao/windmill/rt/runtime/WMLAppType;

    move-object/from16 v0, p0

    iget-object v7, v0, Ljqh$1;->c:Ljqh;

    .line 50049
    iget-object v7, v7, Ljqh;->e:Ljpm;

    .line 569
    new-instance v8, Ljqh$1$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Ljqh$1$3;-><init>(Ljqh$1;)V

    .line 568
    invoke-virtual {v4, v5, v6, v7, v8}, Ljsb;->a(Landroid/content/Context;Lcom/taobao/windmill/rt/runtime/WMLAppType;Ljpm;Ljse;)Ljrz;

    move-result-object v31

    .line 577
    .restart local v31    # "runtimeInstance":Ljrz;
    const-string/jumbo v4, "windmill.rax.worker.js"

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 50050
    iget-object v5, v5, Ljqh;->b:Landroid/content/Context;

    .line 577
    invoke-static {v4, v5}, Ljra;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "appWorkerFramework":Ljava/lang/String;
    goto/16 :goto_4

    .line 616
    .restart local v16    # "appJSData":[B
    .restart local v27    # "protocol":Ljrf;
    :cond_26
    invoke-virtual/range {v23 .. v23}, Ljqw;->b()Ljava/lang/String;

    move-result-object v15

    .line 618
    .restart local v15    # "appJS":Ljava/lang/String;
    goto/16 :goto_5

    .line 619
    .end local v15    # "appJS":Ljava/lang/String;
    .end local v16    # "appJSData":[B
    .end local v27    # "protocol":Ljrf;
    :cond_27
    invoke-virtual/range {v23 .. v23}, Ljqw;->b()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "appJS":Ljava/lang/String;
    goto/16 :goto_5

    .line 657
    .restart local v19    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .restart local v25    # "jsResult":Ljqh$a;
    :catch_2
    move-exception v22

    .line 658
    .local v22, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v4, "[AppLauncher]"

    const-string/jumbo v5, "thread dispatch error"

    move-object/from16 v0, v22

    invoke-static {v4, v5, v0}, Ljrc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 679
    .end local v22    # "e":Ljava/lang/InterruptedException;
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v5

    .line 50057
    const/4 v4, 0x3

    sget-object v6, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->RENDER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v7, "SUCCESS_APP"

    const-string/jumbo v8, ""

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 684
    .end local v19    # "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    .end local v25    # "jsResult":Ljqh$a;
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 50059
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 684
    if-eqz v4, :cond_2a

    .line 685
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 50060
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 685
    const-string/jumbo v5, "appActivated"

    invoke-interface {v4, v5}, Ljqd;->addPerLog(Ljava/lang/String;)Ljpm;

    .line 688
    :cond_2a
    new-instance v26, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v26 .. v26}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 689
    .local v26, "launchParam":Lcom/alibaba/fastjson/JSONObject;
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->query:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 690
    const-string/jumbo v4, "query"

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->query:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 50061
    iget-object v4, v4, Ljqh;->b:Landroid/content/Context;

    .line 691
    check-cast v4, Ljqd;

    const-string/jumbo v5, "query"

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->query:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljqd;->putMemoryStorage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 693
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->startPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 694
    const-string/jumbo v4, "path"

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->startPath:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 50062
    iget-object v4, v4, Ljqh;->b:Landroid/content/Context;

    .line 695
    check-cast v4, Ljqd;

    const-string/jumbo v5, "path"

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->startPath:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljqd;->putMemoryStorage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 698
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->orgUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 699
    const-string/jumbo v4, "url"

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->orgUrl:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 50063
    iget-object v4, v4, Ljqh;->b:Landroid/content/Context;

    .line 700
    check-cast v4, Ljqd;

    const-string/jumbo v5, "url"

    move-object/from16 v0, p0

    iget-object v6, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->orgUrl:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljqd;->putMemoryStorage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 702
    :cond_2d
    iget-object v4, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    if-eqz v4, :cond_2e

    iget-object v4, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v4, v4, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->schemaData:Ljava/lang/String;

    .line 703
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 704
    const-string/jumbo v4, "schemeData"

    iget-object v5, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->schemaData:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 50064
    iget-object v4, v4, Ljqh;->b:Landroid/content/Context;

    .line 705
    check-cast v4, Ljqd;

    const-string/jumbo v5, "schemeData"

    iget-object v6, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->schemaData:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljqd;->putMemoryStorage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 708
    :cond_2e
    invoke-interface/range {v31 .. v31}, Ljrz;->e()Ljrz$b;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-interface {v4, v0}, Ljrz$b;->a(Ljava/lang/Object;)V

    .line 710
    invoke-interface/range {v31 .. v31}, Ljrz;->e()Ljrz$b;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljrz$b;->b(Ljava/lang/Object;)V

    .line 713
    invoke-static {v11}, Ljqj;->a(Lcom/taobao/windmill/bundle/container/core/AppConfigModel;)Ljqj$a;

    move-result-object v24

    .line 715
    .local v24, "initResult":Ljqj$a;
    move-object/from16 v0, v24

    iget-object v4, v0, Ljqj$a;->a:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    if-eqz v4, :cond_2f

    .line 716
    new-instance v28, Ljqi;

    invoke-direct/range {v28 .. v28}, Ljqi;-><init>()V

    .line 717
    .local v28, "result":Ljqi;
    iget-boolean v4, v11, Lcom/taobao/windmill/bundle/container/core/AppConfigModel;->useLauncherLoading:Z

    move-object/from16 v0, v28

    iput-boolean v4, v0, Ljqi;->a:Z

    .line 718
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    iput-object v0, v1, Ljqi;->e:Ljrz;

    .line 719
    move-object/from16 v0, v24

    iget-object v4, v0, Ljqj$a;->a:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    move-object/from16 v0, v28

    iput-object v4, v0, Ljqi;->c:Lcom/taobao/windmill/bundle/container/core/WMLAppManifest;

    .line 720
    move-object/from16 v0, v28

    iput-object v12, v0, Ljqi;->b:Lcom/taobao/windmill/bundle/container/core/AppInfoModel;

    .line 721
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    iput-object v0, v1, Ljqi;->d:Ljqw;

    .line 722
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v5

    .line 50065
    const/4 v4, 0x3

    sget-object v6, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->PACKAGE:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    const-string/jumbo v7, "SUCCESS_CONFIG"

    const-string/jumbo v8, ""

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 724
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 50067
    iget-object v4, v4, Ljqh;->d:Landroid/os/Handler;

    .line 724
    new-instance v5, Ljqh$1$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v5, v0, v1}, Ljqh$1$6;-><init>(Ljqh$1;Ljqi;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 747
    .end local v28    # "result":Ljqi;
    :goto_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 731
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->b:Ljqh$b;

    move-object/from16 v0, v24

    iget-object v6, v0, Ljqj$a;->b:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v7, v0, Ljqj$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Ljqh;->a(Ljqh;Ljqh$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    sget-object v4, Lcom/taobao/windmill/bundle/container/core/RunMode;->PREVIEW:Lcom/taobao/windmill/bundle/container/core/RunMode;

    move-object/from16 v0, v30

    if-eq v0, v4, :cond_30

    sget-object v4, Lcom/taobao/windmill/bundle/container/core/RunMode;->DEBUG:Lcom/taobao/windmill/bundle/container/core/RunMode;

    move-object/from16 v0, v30

    if-eq v0, v4, :cond_30

    .line 734
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v5, v5, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->templateAppId:Ljava/lang/String;

    iget-object v6, v12, Lcom/taobao/windmill/bundle/container/core/AppInfoModel;->appInfo:Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;

    iget-object v6, v6, Lcom/taobao/windmill/bundle/container/core/AppInfoModel$InfoModel;->version:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "FAIL_MANIFEST_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v8, v0, Ljqj$a;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v24

    iget-object v8, v0, Ljqj$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7, v8}, Ljre$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->c:Ljqh;

    .line 50068
    iget-object v4, v4, Ljqh;->c:Ljqd;

    .line 740
    move-object/from16 v0, p0

    iget-object v5, v0, Ljqh$1;->c:Ljqh;

    .line 50069
    iget-object v5, v5, Ljqh;->e:Ljpm;

    .line 741
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "FAIL_MANIFEST_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v7, v0, Ljqj$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    iget-object v7, v0, Ljqj$a;->c:Ljava/lang/String;

    .line 740
    invoke-static {v4, v5, v6, v7}, Ljre$b;->a(Ljqd;Ljpm;Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iget-object v5, v0, Ljqj$a;->b:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v6, v0, Ljqj$a;->c:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljqh$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
