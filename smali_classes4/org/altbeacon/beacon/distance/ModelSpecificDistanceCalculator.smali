.class public Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;
.super Ljava/lang/Object;
.source "ModelSpecificDistanceCalculator.java"

# interfaces
.implements Lorg/altbeacon/beacon/distance/DistanceCalculator;


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = "model-distance-calculations.json"

.field private static final TAG:Ljava/lang/String; = "ModelSpecificDistanceCalculator"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultModel:Lorg/altbeacon/beacon/distance/AndroidModel;

.field private mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mModel:Lorg/altbeacon/beacon/distance/AndroidModel;

.field mModelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/altbeacon/beacon/distance/AndroidModel;",
            "Lorg/altbeacon/beacon/distance/DistanceCalculator;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteUpdateUrlString:Ljava/lang/String;

.field private mRequestedModel:Lorg/altbeacon/beacon/distance/AndroidModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteUpdateUrlString"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {}, Lorg/altbeacon/beacon/distance/AndroidModel;->forThisDevice()Lorg/altbeacon/beacon/distance/AndroidModel;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/altbeacon/beacon/distance/AndroidModel;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/altbeacon/beacon/distance/AndroidModel;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteUpdateUrlString"    # Ljava/lang/String;
    .param p3, "model"    # Lorg/altbeacon/beacon/distance/AndroidModel;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 72
    iput-object p3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRequestedModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    .line 73
    iput-object p2, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->loadModelMap()V

    .line 76
    invoke-virtual {p0, p3}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->findCalculatorForModelWithLock(Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object v0

    iput-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->saveJson(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)Z
    .locals 1
    .param p0, "x0"    # Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->loadModelMapFromFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;Lorg/altbeacon/beacon/distance/DistanceCalculator;)Lorg/altbeacon/beacon/distance/DistanceCalculator;
    .locals 0
    .param p0, "x0"    # Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;
    .param p1, "x1"    # Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    return-object p1
.end method

.method static synthetic access$400(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)Lorg/altbeacon/beacon/distance/AndroidModel;
    .locals 1
    .param p0, "x0"    # Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRequestedModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    return-object v0
.end method

.method private buildModelMap(Ljava/lang/String;)V
    .locals 25
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 272
    new-instance v21, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 273
    .local v21, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/altbeacon/beacon/distance/AndroidModel;Lorg/altbeacon/beacon/distance/DistanceCalculator;>;"
    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 274
    .local v19, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "models"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 275
    .local v12, "array":Lorg/json/JSONArray;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v6

    move/from16 v0, v18

    if-ge v0, v6, :cond_2

    .line 276
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 277
    .local v23, "modelObject":Lorg/json/JSONObject;
    const/16 v17, 0x0

    .line 278
    .local v17, "defaultFlag":Z
    const-string/jumbo v6, "default"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 279
    const-string/jumbo v6, "default"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 281
    :cond_0
    const-string/jumbo v6, "coefficient1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 282
    .local v14, "coefficient1":Ljava/lang/Double;
    const-string/jumbo v6, "coefficient2"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    .line 283
    .local v15, "coefficient2":Ljava/lang/Double;
    const-string/jumbo v6, "coefficient3"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    .line 284
    .local v16, "coefficient3":Ljava/lang/Double;
    const-string/jumbo v6, "version"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 285
    .local v24, "version":Ljava/lang/String;
    const-string/jumbo v6, "build_number"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 286
    .local v13, "buildNumber":Ljava/lang/String;
    const-string/jumbo v6, "model"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 287
    .local v22, "model":Ljava/lang/String;
    const-string/jumbo v6, "manufacturer"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 289
    .local v20, "manufacturer":Ljava/lang/String;
    new-instance v5, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;

    .line 290
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-direct/range {v5 .. v11}, Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;-><init>(DDD)V

    .line 292
    .local v5, "distanceCalculator":Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;
    new-instance v4, Lorg/altbeacon/beacon/distance/AndroidModel;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v13, v1, v2}, Lorg/altbeacon/beacon/distance/AndroidModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .local v4, "androidModel":Lorg/altbeacon/beacon/distance/AndroidModel;
    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    if-eqz v17, :cond_1

    .line 295
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDefaultModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    .line 275
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 298
    .end local v4    # "androidModel":Lorg/altbeacon/beacon/distance/AndroidModel;
    .end local v5    # "distanceCalculator":Lorg/altbeacon/beacon/distance/CurveFittedDistanceCalculator;
    .end local v13    # "buildNumber":Ljava/lang/String;
    .end local v14    # "coefficient1":Ljava/lang/Double;
    .end local v15    # "coefficient2":Ljava/lang/Double;
    .end local v16    # "coefficient3":Ljava/lang/Double;
    .end local v17    # "defaultFlag":Z
    .end local v20    # "manufacturer":Ljava/lang/String;
    .end local v22    # "model":Ljava/lang/String;
    .end local v23    # "modelObject":Lorg/json/JSONObject;
    .end local v24    # "version":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModelMap:Ljava/util/Map;

    .line 299
    return-void
.end method

.method private findCalculatorForModel(Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;
    .locals 12
    .param p1, "model"    # Lorg/altbeacon/beacon/distance/AndroidModel;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 112
    const-string/jumbo v3, "ModelSpecificDistanceCalculator"

    const-string/jumbo v4, "Finding best distance calculator for %s, %s, %s, %s"

    new-array v5, v11, [Ljava/lang/Object;

    .line 113
    invoke-virtual {p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->getVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->getBuildNumber()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->getModel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 114
    invoke-virtual {p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->getManufacturer()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 112
    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iget-object v3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModelMap:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 117
    const-string/jumbo v3, "ModelSpecificDistanceCalculator"

    const-string/jumbo v4, "Cannot get distance calculator because modelMap was never initialized"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    const/4 v3, 0x0

    .line 142
    :goto_0
    return-object v3

    .line 121
    :cond_0
    const/4 v2, 0x0

    .line 122
    .local v2, "highestScore":I
    const/4 v0, 0x0

    .line 123
    .local v0, "bestMatchingModel":Lorg/altbeacon/beacon/distance/AndroidModel;
    iget-object v3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModelMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/distance/AndroidModel;

    .line 124
    .local v1, "candidateModel":Lorg/altbeacon/beacon/distance/AndroidModel;
    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->matchScore(Lorg/altbeacon/beacon/distance/AndroidModel;)I

    move-result v4

    if-le v4, v2, :cond_1

    .line 125
    invoke-virtual {v1, p1}, Lorg/altbeacon/beacon/distance/AndroidModel;->matchScore(Lorg/altbeacon/beacon/distance/AndroidModel;)I

    move-result v2

    .line 126
    move-object v0, v1

    goto :goto_1

    .line 129
    .end local v1    # "candidateModel":Lorg/altbeacon/beacon/distance/AndroidModel;
    :cond_2
    if-eqz v0, :cond_3

    .line 130
    const-string/jumbo v3, "ModelSpecificDistanceCalculator"

    const-string/jumbo v4, "found a match with score %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    const-string/jumbo v3, "ModelSpecificDistanceCalculator"

    const-string/jumbo v4, "Finding best distance calculator for %s, %s, %s, %s"

    new-array v5, v11, [Ljava/lang/Object;

    .line 132
    invoke-virtual {v0}, Lorg/altbeacon/beacon/distance/AndroidModel;->getVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0}, Lorg/altbeacon/beacon/distance/AndroidModel;->getBuildNumber()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 133
    invoke-virtual {v0}, Lorg/altbeacon/beacon/distance/AndroidModel;->getModel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v0}, Lorg/altbeacon/beacon/distance/AndroidModel;->getManufacturer()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 131
    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iput-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    .line 139
    :goto_2
    iget-object v3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    if-eqz v3, :cond_4

    .line 140
    iget-object v3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModelMap:Ljava/util/Map;

    iget-object v4, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/altbeacon/beacon/distance/DistanceCalculator;

    goto :goto_0

    .line 136
    :cond_3
    iget-object v3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDefaultModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    iput-object v3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    .line 137
    const-string/jumbo v3, "ModelSpecificDistanceCalculator"

    const-string/jumbo v4, "Cannot find match for this device.  Using default"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 142
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private loadDefaultModelMap()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 303
    :try_start_0
    const-string/jumbo v1, "model-distance-calculations.json"

    invoke-direct {p0, v1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->stringFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->buildModelMap(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModelMap:Ljava/util/Map;

    .line 306
    const-string/jumbo v1, "ModelSpecificDistanceCalculator"

    const-string/jumbo v2, "Cannot build model distance calculations"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private loadModelMap()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "mapLoaded":Z
    iget-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 149
    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->loadModelMapFromFile()Z

    move-result v0

    .line 153
    if-nez v0, :cond_0

    .line 154
    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->requestModelMapFromWeb()V

    .line 157
    :cond_0
    if-nez v0, :cond_1

    .line 158
    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->loadDefaultModelMap()V

    .line 160
    :cond_1
    iget-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRequestedModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    invoke-virtual {p0, v1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->findCalculatorForModelWithLock(Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;

    move-result-object v1

    iput-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    .line 161
    return-void
.end method

.method private loadModelMapFromFile()Z
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 164
    new-instance v1, Ljava/io/File;

    iget-object v10, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    const-string/jumbo v11, "model-distance-calculations.json"

    invoke-direct {v1, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 166
    .local v2, "inputStream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 167
    .local v5, "reader":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v7, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .local v3, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 173
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 185
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v5, :cond_0

    .line 186
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 188
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 189
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :cond_1
    :goto_3
    move v8, v9

    .line 198
    :goto_4
    return v8

    .line 186
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 189
    :goto_5
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 193
    :goto_6
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->buildModelMapWithLock(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .line 194
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 180
    .end local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    :try_start_8
    const-string/jumbo v8, "ModelSpecificDistanceCalculator"

    const-string/jumbo v10, "Cannot open distance model file %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-static {v0, v8, v10, v11}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 185
    if-eqz v5, :cond_3

    .line 186
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 188
    :cond_3
    :goto_8
    if-eqz v2, :cond_4

    .line 189
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    :cond_4
    :goto_9
    move v8, v9

    goto :goto_4

    .line 185
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_a
    if-eqz v5, :cond_5

    .line 186
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 188
    :cond_5
    :goto_b
    if-eqz v2, :cond_6

    .line 189
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    :cond_6
    :goto_c
    throw v8

    .line 195
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 196
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v10, "ModelSpecificDistanceCalculator"

    const-string/jumbo v11, "Cannot update distance models from online database at %s with JSON"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v0, v12, v9

    iget-object v13, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    aput-object v13, v12, v8

    const/4 v8, 0x2

    .line 197
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v8

    .line 196
    invoke-static {v10, v11, v12}, Lorg/altbeacon/beacon/logging/LogManager;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    move v8, v9

    .line 198
    goto :goto_4

    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v10

    goto :goto_5

    .line 189
    :catch_4
    move-exception v10

    goto :goto_6

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v8

    goto :goto_2

    :catch_6
    move-exception v8

    goto :goto_3

    .local v0, "e":Ljava/io/IOException;
    :catch_7
    move-exception v8

    goto :goto_8

    :catch_8
    move-exception v8

    goto :goto_9

    .end local v0    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v9

    goto :goto_b

    :catch_a
    move-exception v9

    goto :goto_c

    .line 185
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_a

    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_a

    .line 180
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_c
    move-exception v0

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 185
    :catch_d
    move-exception v8

    goto/16 :goto_1

    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_e
    move-exception v8

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private requestModelMapFromWeb()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 227
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string/jumbo v0, "ModelSpecificDistanceCalculator"

    const-string/jumbo v1, "App has no android.permission.INTERNET permission.  Cannot check for distance model updates"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :goto_0
    return-void

    .line 232
    :cond_0
    new-instance v0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRemoteUpdateUrlString:Ljava/lang/String;

    new-instance v3, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;

    invoke-direct {v3, p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator$1;-><init>(Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater$CompletionHandler;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Void;

    .line 259
    invoke-virtual {v0, v1, v2}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private saveJson(Ljava/lang/String;)Z
    .locals 6
    .param p1, "jsonString"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 204
    const/4 v1, 0x0

    .line 207
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "model-distance-calculations.json"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 209
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 220
    :cond_0
    :goto_0
    const-string/jumbo v3, "ModelSpecificDistanceCalculator"

    const-string/jumbo v4, "Successfully saved new distance model file"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lorg/altbeacon/beacon/logging/LogManager;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    const/4 v2, 0x1

    :cond_1
    :goto_1
    return v2

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "ModelSpecificDistanceCalculator"

    const-string/jumbo v4, "Cannot write updated distance model to local storage"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v4, v5}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 216
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 218
    :cond_2
    :goto_2
    throw v2

    .line 219
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method private stringFromFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 311
    const/4 v4, 0x0

    .line 312
    .local v4, "stream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 313
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .local v2, "inputStringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    const-class v5, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 316
    if-nez v4, :cond_0

    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 320
    :cond_0
    if-nez v4, :cond_3

    .line 321
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Cannot load resource at "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :catchall_0
    move-exception v5

    :goto_0
    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 334
    :cond_1
    if-eqz v4, :cond_2

    .line 335
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v5

    .line 323
    :cond_3
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v5, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "line":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_4

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    goto :goto_1

    .line 332
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 334
    if-eqz v4, :cond_5

    .line 335
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 338
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 331
    .end local v3    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_0
.end method


# virtual methods
.method buildModelMapWithLock(Ljava/lang/String;)V
    .locals 2
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 263
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 265
    :try_start_0
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->buildModelMap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 268
    return-void

    .line 267
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public calculateDistance(ID)D
    .locals 4
    .param p1, "txPower"    # I
    .param p2, "rssi"    # D

    .prologue
    .line 95
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    if-nez v0, :cond_0

    .line 96
    const-string/jumbo v0, "ModelSpecificDistanceCalculator"

    const-string/jumbo v1, "distance calculator has not been set"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/altbeacon/beacon/logging/LogManager;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 99
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mDistanceCalculator:Lorg/altbeacon/beacon/distance/DistanceCalculator;

    invoke-interface {v0, p1, p2, p3}, Lorg/altbeacon/beacon/distance/DistanceCalculator;->calculateDistance(ID)D

    move-result-wide v0

    goto :goto_0
.end method

.method findCalculatorForModelWithLock(Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;
    .locals 2
    .param p1, "model"    # Lorg/altbeacon/beacon/distance/AndroidModel;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 103
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 105
    :try_start_0
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->findCalculatorForModel(Lorg/altbeacon/beacon/distance/AndroidModel;)Lorg/altbeacon/beacon/distance/DistanceCalculator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 107
    iget-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getModel()Lorg/altbeacon/beacon/distance/AndroidModel;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    return-object v0
.end method

.method public getRequestedModel()Lorg/altbeacon/beacon/distance/AndroidModel;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceCalculator;->mRequestedModel:Lorg/altbeacon/beacon/distance/AndroidModel;

    return-object v0
.end method
