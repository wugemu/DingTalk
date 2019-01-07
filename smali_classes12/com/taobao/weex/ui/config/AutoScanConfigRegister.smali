.class public Lcom/taobao/weex/ui/config/AutoScanConfigRegister;
.super Ljava/lang/Object;
.source "AutoScanConfigRegister.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WeexScanConfigRegister"

.field private static autoLoadClass:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/taobao/weex/bridge/JavascriptInvokable;",
            ">;"
        }
    .end annotation
.end field

.field private static scanDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->scanDelay:J

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->autoLoadClass:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->doScanConfigSync()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->autoLoadClass:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public static doScanConfig()V
    .locals 4

    .prologue
    .line 66
    sget-wide v0, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->scanDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 67
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/config/AutoScanConfigRegister$1;

    invoke-direct {v1}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister$1;-><init>()V

    sget-wide v2, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->scanDelay:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->doScanConfigAsync()V

    goto :goto_0
.end method

.method public static doScanConfigAsync()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/taobao/weex/ui/config/AutoScanConfigRegister$2;

    invoke-direct {v1}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 95
    .local v0, "thread":Ljava/lang/Thread;
    const-string/jumbo v1, "AutoScanConfigRegister"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 97
    return-void
.end method

.method private static doScanConfigSync()V
    .locals 18

    .prologue
    .line 100
    sget-object v12, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    if-nez v12, :cond_1

    .line 162
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    :cond_0
    :goto_0
    return-void

    .line 104
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    :cond_1
    :try_start_0
    sget-object v12, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v12}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 106
    .restart local v1    # "assetManager":Landroid/content/res/AssetManager;
    const/4 v12, 0x0

    new-array v5, v12, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    .local v5, "configFiles":[Ljava/lang/String;
    :try_start_1
    const-string/jumbo v12, ""

    invoke-virtual {v1, v12}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 112
    :goto_1
    if-eqz v5, :cond_0

    :try_start_2
    array-length v12, v5

    if-eqz v12, :cond_0

    .line 115
    array-length v13, v5

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_0

    aget-object v4, v5, v12

    .line 116
    .local v4, "configFile":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 119
    const-string/jumbo v14, "weex_config_"

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string/jumbo v14, ".json"

    invoke-virtual {v4, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 121
    move-object v10, v4

    .local v10, "name":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v14

    if-nez v14, :cond_0

    .line 125
    :try_start_3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "config":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v14

    if-eqz v14, :cond_3

    .line 115
    .end local v2    # "config":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 109
    .end local v4    # "configFile":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 110
    .local v7, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v12, "WeexScanConfigRegister"

    invoke-static {v12, v7}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 159
    .end local v5    # "configFiles":[Ljava/lang/String;
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 160
    .local v8, "eout":Ljava/lang/Exception;
    const-string/jumbo v12, "WeexScanConfigRegister"

    invoke-static {v12, v8}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    .end local v8    # "eout":Ljava/lang/Exception;
    .restart local v2    # "config":Ljava/lang/String;
    .restart local v4    # "configFile":Ljava/lang/String;
    .restart local v5    # "configFiles":[Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    :cond_3
    :try_start_5
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 130
    const-string/jumbo v14, "WeexScanConfigRegister"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " find config "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_4
    invoke-static {v2}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 133
    .local v11, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v14, "modules"

    invoke-virtual {v11, v14}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 134
    const-string/jumbo v14, "modules"

    invoke-virtual {v11, v14}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 135
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v14

    if-ge v9, v14, :cond_6

    .line 136
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v14

    invoke-static {v14}, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->fromConfig(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/ui/config/ConfigModuleFactory;

    move-result-object v6

    .line 137
    .local v6, "configModuleFactory":Lcom/taobao/weex/ui/config/ConfigModuleFactory;
    if-eqz v6, :cond_5

    .line 140
    invoke-virtual {v6}, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->getName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v6, v15}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z

    .line 135
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 144
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v6    # "configModuleFactory":Lcom/taobao/weex/ui/config/ConfigModuleFactory;
    .end local v9    # "i":I
    :cond_6
    const-string/jumbo v14, "components"

    invoke-virtual {v11, v14}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 145
    const-string/jumbo v14, "components"

    invoke-virtual {v11, v14}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 146
    .restart local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v14

    if-ge v9, v14, :cond_2

    .line 147
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v14

    invoke-static {v14}, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->fromConfig(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/ui/config/ConfigComponentHolder;

    move-result-object v3

    .line 148
    .local v3, "configComponentHolder":Lcom/taobao/weex/ui/config/ConfigComponentHolder;
    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {v3}, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->isAppendTree()Z

    move-result v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual {v3}, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->getType()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v3, v14, v15}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 146
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 154
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "config":Ljava/lang/String;
    .end local v3    # "configComponentHolder":Lcom/taobao/weex/ui/config/ConfigComponentHolder;
    .end local v9    # "i":I
    .end local v11    # "object":Lcom/alibaba/fastjson/JSONObject;
    :catch_2
    move-exception v7

    .line 155
    .local v7, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v14, "WeexScanConfigRegister"

    invoke-static {v14, v7}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3
.end method

.method public static preLoad(Lcom/taobao/weex/bridge/JavascriptInvokable;)V
    .locals 1
    .param p0, "invokable"    # Lcom/taobao/weex/bridge/JavascriptInvokable;

    .prologue
    .line 53
    instance-of v0, p0, Lcom/taobao/weex/ui/config/ConfigModuleFactory;

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    instance-of v0, p0, Lcom/taobao/weex/ui/config/ConfigComponentHolder;

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->autoLoadClass:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static setScanDelay(J)V
    .locals 0
    .param p0, "scanDelay"    # J

    .prologue
    .line 165
    sput-wide p0, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->scanDelay:J

    .line 166
    return-void
.end method
