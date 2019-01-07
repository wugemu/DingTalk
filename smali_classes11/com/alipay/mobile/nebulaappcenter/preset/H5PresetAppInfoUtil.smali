.class public Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil;
.super Ljava/lang/Object;
.source "H5PresetAppInfoUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5PresetAppInfoUtil"

.field private static sAppInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil;->sAppInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil;->sAppInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static clearPresetMemory()V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil;->sAppInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 129
    return-void
.end method

.method public static getPresetAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .locals 22
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v15, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil;->sAppInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 38
    const-class v15, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 39
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 40
    .local v9, "h5PresetFroMemory":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    if-eqz v9, :cond_0

    .line 42
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 44
    .local v16, "t1":J
    invoke-interface {v9}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getPresetAppInfoObject()Ljava/io/InputStream;

    move-result-object v14

    .line 45
    .local v14, "presetObjectStream":Ljava/io/InputStream;
    if-eqz v14, :cond_1

    .line 46
    new-instance v11, Ljava/io/ObjectInputStream;

    invoke-direct {v11, v14}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    .local v11, "input":Ljava/io/ObjectInput;
    :try_start_1
    invoke-interface {v11}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/concurrent/ConcurrentHashMap;

    sput-object v15, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil;->sAppInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    :goto_0
    :try_start_2
    invoke-interface {v11}, Ljava/io/ObjectInput;->close()V

    .line 54
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 56
    const-string/jumbo v15, "H5PresetAppInfoUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "getPresetAppInfoObject cost "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v15, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil;->sAppInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    .line 58
    sget-object v15, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil;->sAppInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 123
    .end local v9    # "h5PresetFroMemory":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    .end local v11    # "input":Ljava/io/ObjectInput;
    .end local v14    # "presetObjectStream":Ljava/io/InputStream;
    .end local v16    # "t1":J
    :goto_1
    return-object v15

    .line 50
    .restart local v9    # "h5PresetFroMemory":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    .restart local v11    # "input":Ljava/io/ObjectInput;
    .restart local v14    # "presetObjectStream":Ljava/io/InputStream;
    .restart local v16    # "t1":J
    :catch_0
    move-exception v8

    .line 51
    .local v8, "exception":Ljava/io/EOFException;
    const-string/jumbo v15, "H5PresetAppInfoUtil"

    invoke-static {v15, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 118
    .end local v8    # "exception":Ljava/io/EOFException;
    .end local v11    # "input":Ljava/io/ObjectInput;
    .end local v14    # "presetObjectStream":Ljava/io/InputStream;
    .end local v16    # "t1":J
    :catch_1
    move-exception v7

    .line 119
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "H5PresetAppInfoUtil"

    const-string/jumbo v18, "Exception:"

    move-object/from16 v0, v18

    invoke-static {v15, v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "h5PresetFroMemory":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    :cond_0
    :goto_2
    sget-object v15, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil;->sAppInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    goto :goto_1

    .line 63
    .restart local v9    # "h5PresetFroMemory":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    .restart local v14    # "presetObjectStream":Ljava/io/InputStream;
    .restart local v16    # "t1":J
    :cond_1
    :try_start_3
    invoke-interface {v9}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getPresetAppInfo()Ljava/io/InputStream;

    move-result-object v13

    .line 64
    .local v13, "presetJsonStream":Ljava/io/InputStream;
    if-eqz v13, :cond_0

    .line 65
    invoke-static {v13}, Lcom/alipay/mobile/nebulaappcenter/util/H5AppGlobal;->getFromAssets(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    .line 66
    .local v12, "presetJson":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 67
    const-string/jumbo v15, "H5PresetAppInfoUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "h5PresetFroMemory loadPresetApp len: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {v12}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 69
    .local v5, "appResJO":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v15, "data"

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v5, v15, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 70
    .local v6, "dataList":Lcom/alibaba/fastjson/JSONArray;
    if-nez v6, :cond_2

    .line 71
    const-string/jumbo v15, "H5PresetAppInfoUtil"

    const-string/jumbo v18, "dataList == null return"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v15, 0x0

    goto :goto_1

    .line 74
    :cond_2
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_3
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v15

    if-ge v10, v15, :cond_5

    .line 75
    const/4 v4, 0x0

    .line 77
    .local v4, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :try_start_4
    invoke-virtual {v6, v10}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v15, :cond_3

    .line 78
    invoke-virtual {v6, v10}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v15}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->toAppInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v4

    .line 85
    :goto_4
    if-nez v4, :cond_4

    .line 86
    :try_start_5
    const-string/jumbo v15, "H5PresetAppInfoUtil"

    const-string/jumbo v18, "appInfo == null continue "

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 74
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 80
    :cond_3
    :try_start_6
    const-string/jumbo v15, "H5PresetAppInfoUtil"

    const-string/jumbo v18, "dataList.get(index) is not JSONObject"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 82
    :catch_2
    move-exception v7

    .line 83
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v15, "H5PresetAppInfoUtil"

    invoke-static {v15, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 89
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v15, "H5PresetAppInfoUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "preset appId:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v15, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil;->sAppInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 92
    .end local v4    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_5
    const-string/jumbo v15, "H5PresetAppInfoUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "h5PresetFroMemory cost "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object v15, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil;->sAppInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 96
    const-string/jumbo v15, "IO"

    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v15

    new-instance v18, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil$1;

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/nebulaappcenter/preset/H5PresetAppInfoUtil$1;-><init>(J)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2
.end method
