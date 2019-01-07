.class public final Lmtopsdk/mtop/unit/UnitConfigManager;
.super Ljava/lang/Object;
.source "UnitConfigManager.java"


# static fields
.field private static final API_UNIT_FILE_NAME:Ljava/lang/String; = "UNIT_SETTING_STORE.API_UNIT_ITEM"

.field private static final API_UNIT_URL:Ljava/lang/String; = "url="

.field private static final API_UNIT_V:Ljava/lang/String; = "v="

.field private static final TAG:Ljava/lang/String; = "mtopsdk.UnitConfigManager"

.field private static final USER_UNIT_PREFIX:Ljava/lang/String; = "prefix="

.field private static final USER_UNIT_TYPE:Ljava/lang/String; = "type="


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 39
    invoke-static {}, Lmtopsdk/mtop/unit/UnitConfigManager;->loadUnitInfoFromLocalStore()V

    return-void
.end method

.method public static loadUnitInfo()V
    .locals 2

    .prologue
    .line 244
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalUnitSwitchOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    .local v0, "loadUnitInfoTask":Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 248
    .end local v0    # "loadUnitInfoTask":Ljava/lang/Runnable;
    :cond_0
    invoke-static {}, Lmtopsdk/common/util/MtopUtils;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    new-instance v0, Lmtopsdk/mtop/unit/UnitConfigManager$2;

    invoke-direct {v0}, Lmtopsdk/mtop/unit/UnitConfigManager$2;-><init>()V

    .line 255
    .restart local v0    # "loadUnitInfoTask":Ljava/lang/Runnable;
    invoke-static {v0}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 257
    .end local v0    # "loadUnitInfoTask":Ljava/lang/Runnable;
    :cond_1
    invoke-static {}, Lmtopsdk/mtop/unit/UnitConfigManager;->loadUnitInfoFromLocalStore()V

    goto :goto_0
.end method

.method private static loadUnitInfoFromLocalStore()V
    .locals 7

    .prologue
    .line 267
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v3

    .line 269
    .local v3, "sdkConfig":Lmtopsdk/mtop/global/SDKConfig;
    invoke-virtual {v3}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalApiUnit()Lmtopsdk/mtop/unit/ApiUnit;

    move-result-object v4

    if-nez v4, :cond_0

    .line 271
    :try_start_0
    invoke-virtual {v3}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    .line 272
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "UNIT_SETTING_STORE.API_UNIT_ITEM"

    invoke-static {v4, v5}, Lmtopsdk/common/util/MtopUtils;->readObject(Ljava/io/File;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/unit/ApiUnit;

    .line 273
    .local v0, "apiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v3, v0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalApiUnit(Lmtopsdk/mtop/unit/ApiUnit;)Lmtopsdk/mtop/global/SDKConfig;

    .line 275
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v4}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    const-string/jumbo v4, "mtopsdk.UnitConfigManager"

    const-string/jumbo v5, "[loadUnitInfoFromLocalStore] load ApiUnit info from local Storage succeed."

    invoke-static {v4, v5}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v0    # "apiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "mtopsdk.UnitConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[loadUnitInfoFromLocalStore] parse apiUnit from local Storage error ---"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parseApiUnitInfoParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p0, "apiUnitInfo"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 131
    .local v0, "apiUnitInfoParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, ","

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "apiUnitValue":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v9, v1

    if-lez v9, :cond_2

    .line 133
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v7, v2, v4

    .line 135
    .local v7, "value":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v9, "v="

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 136
    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, "version":Ljava/lang/String;
    const-string/jumbo v9, "v="

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .end local v8    # "version":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
    :cond_1
    const-string/jumbo v9, "url="

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 141
    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, "url":Ljava/lang/String;
    const-string/jumbo v9, "url="

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 144
    .end local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 145
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "mtopsdk.UnitConfigManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "[parseApiUnitInfoParams] parse x-m-update-unitapi  header error---"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, p1, v10}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public static parseUnitSettingHeader(Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .param p1, "seqNo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v4

    invoke-virtual {v4}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalUnitSwitchOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 64
    const-string/jumbo v4, "mtopsdk.UnitConfigManager"

    const-string/jumbo v5, "[parseUnitSettingHeader]unitSwitchOpen is false"

    invoke-static {v4, p1, v5}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 72
    const-string/jumbo v4, "x-m-update-unitinfo"

    invoke-static {p0, v4}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "userUnitInfo":Ljava/lang/String;
    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    invoke-static {v3, p1}, Lmtopsdk/mtop/unit/UnitConfigManager;->parseUserUnitInfo(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/unit/UserUnit;

    move-result-object v2

    .line 75
    .local v2, "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    invoke-static {v2, p1}, Lmtopsdk/mtop/unit/UnitConfigManager;->updateAndStoreUserUnitInfo(Lmtopsdk/mtop/unit/UserUnit;Ljava/lang/String;)V

    .line 79
    .end local v2    # "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    :cond_2
    const-string/jumbo v4, "x-m-update-unitapi"

    invoke-static {p0, v4}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "apiUnitInfo":Ljava/lang/String;
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    invoke-static {v0, p1}, Lmtopsdk/mtop/unit/UnitConfigManager;->parseApiUnitInfoParams(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 82
    .local v1, "apiUnitParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "v="

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "url="

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5, p1}, Lmtopsdk/mtop/unit/UnitConfigManager;->updateAndStoreApiUnitInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parseUserUnitInfo(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/unit/UserUnit;
    .locals 13
    .param p0, "userUnitInfo"    # Ljava/lang/String;
    .param p1, "seqNo"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v8, 0x0

    .line 94
    .local v8, "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    const-string/jumbo v10, ","

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "userUnitValue":[Ljava/lang/String;
    if-eqz v9, :cond_4

    array-length v10, v9

    if-lez v10, :cond_4

    .line 96
    const/4 v6, 0x0

    .line 97
    .local v6, "unitType":Lmtopsdk/mtop/unit/UserUnit$UnitType;
    const/4 v5, 0x0

    .line 98
    .local v5, "unitPrefix":Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v9

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 100
    .local v4, "str":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v10, "type="

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 101
    const/4 v10, 0x5

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, "unitTypeStr":Ljava/lang/String;
    sget-object v10, Lmtopsdk/mtop/unit/UserUnit$UnitType;->UNIT:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v10}, Lmtopsdk/mtop/unit/UserUnit$UnitType;->getUnitType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 103
    sget-object v6, Lmtopsdk/mtop/unit/UserUnit$UnitType;->UNIT:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    .line 98
    .end local v7    # "unitTypeStr":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .restart local v7    # "unitTypeStr":Ljava/lang/String;
    :cond_1
    sget-object v6, Lmtopsdk/mtop/unit/UserUnit$UnitType;->CENTER:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    goto :goto_1

    .line 109
    .end local v7    # "unitTypeStr":Ljava/lang/String;
    :cond_2
    const-string/jumbo v10, "prefix="

    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 110
    const/4 v10, 0x7

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "mtopsdk.UnitConfigManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[parseUserUnitInfo] parse x-m-update-unitinfo  header error,userUnitInfo="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, p1, v11, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "str":Ljava/lang/String;
    :cond_3
    new-instance v8, Lmtopsdk/mtop/unit/UserUnit;

    .end local v8    # "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    invoke-static {}, Lkkn;->b()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v6, v5}, Lmtopsdk/mtop/unit/UserUnit;-><init>(Ljava/lang/String;Lmtopsdk/mtop/unit/UserUnit$UnitType;Ljava/lang/String;)V

    .line 118
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "unitPrefix":Ljava/lang/String;
    .end local v6    # "unitType":Lmtopsdk/mtop/unit/UserUnit$UnitType;
    .restart local v8    # "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    :cond_4
    return-object v8
.end method

.method private static updateAndStoreApiUnitInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "seqNo"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-static {p0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 179
    :cond_0
    const-string/jumbo v2, "mtopsdk.UnitConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[updateAndStoreApiUnitInfo] invalid apiUnitInfo,version="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalApiUnit()Lmtopsdk/mtop/unit/ApiUnit;

    move-result-object v0

    .line 184
    .local v0, "lastApiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    if-eqz v0, :cond_3

    iget-object v2, v0, Lmtopsdk/mtop/unit/ApiUnit;->version:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    const-string/jumbo v2, "mtopsdk.UnitConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[updateAndStoreApiUnitInfo] current apiUnit version is up-to-date,version="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_3
    new-instance v1, Lmtopsdk/mtop/unit/UnitConfigManager$1;

    invoke-direct {v1, p1, p2}, Lmtopsdk/mtop/unit/UnitConfigManager$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .local v1, "updateApiUnitTask":Ljava/lang/Runnable;
    invoke-static {v1}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method private static updateAndStoreUserUnitInfo(Lmtopsdk/mtop/unit/UserUnit;Ljava/lang/String;)V
    .locals 5
    .param p0, "userUnit"    # Lmtopsdk/mtop/unit/UserUnit;
    .param p1, "seqNo"    # Ljava/lang/String;

    .prologue
    .line 159
    if-nez p0, :cond_1

    .line 160
    const-string/jumbo v1, "mtopsdk.UnitConfigManager"

    const-string/jumbo v2, "[updateAndStoreUserUnitInfo]  invalid userUnit,userUnit = null"

    invoke-static {v1, p1, v2}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/unit/UserUnit;->userId:Ljava/lang/String;

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalUtdid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lka;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const-string/jumbo v0, "[updateAndStoreUserUnitInfo] update userUnitinfo succeed.userid=%s ;utdid=%s ;unitPrefix=%s"

    .line 166
    .local v0, "log":Ljava/lang/String;
    const-string/jumbo v1, "mtopsdk.UnitConfigManager"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmtopsdk/mtop/unit/UserUnit;->userId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v4

    invoke-virtual {v4}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalUtdid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
