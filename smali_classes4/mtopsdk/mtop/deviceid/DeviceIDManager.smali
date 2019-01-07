.class public Lmtopsdk/mtop/deviceid/DeviceIDManager;
.super Ljava/lang/Object;
.source "DeviceIDManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;
    }
.end annotation


# static fields
.field private static final CREATED_NO:Ljava/lang/String; = "0"

.field private static final CREATED_YES:Ljava/lang/String; = "1"

.field private static final DEVICEID_CREATED_KEY:Ljava/lang/String; = "deviceId_created"

.field private static final DEVICEID_KEY:Ljava/lang/String; = "deviceId"

.field private static final MTOPSDK_DEVICEID_STORE_PREFIX:Ljava/lang/String; = "MTOPSDK_DEVICEID_STORE."

.field private static final TAG:Ljava/lang/String; = "mtopsdk.DeviceIDManager"

.field private static deviceIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile instance:Lmtopsdk/mtop/deviceid/DeviceIDManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->deviceIdMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmtopsdk/mtop/deviceid/DeviceIDManager;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmtopsdk/mtop/deviceid/DeviceIDManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->getRemoteDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceIdFromStore(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 225
    if-nez p1, :cond_1

    move-object v1, v3

    .line 240
    :cond_0
    :goto_0
    return-object v1

    .line 228
    :cond_1
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v4

    const-string/jumbo v5, "MtopConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "MTOPSDK_DEVICEID_STORE."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "deviceId"

    invoke-virtual {v4, p1, v5, v6, v7}, Lmtopsdk/common/util/ConfigStoreManager;->getConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "deviceIdStr":Ljava/lang/String;
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v4

    const-string/jumbo v5, "MtopConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "MTOPSDK_DEVICEID_STORE."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "deviceId_created"

    invoke-virtual {v4, p1, v5, v6, v7}, Lmtopsdk/common/util/ConfigStoreManager;->getConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "mCreatedStr":Ljava/lang/String;
    const-string/jumbo v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 231
    new-instance v0, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;

    invoke-direct {v0, p0, v3}, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;-><init>(Lmtopsdk/mtop/deviceid/DeviceIDManager;Ljava/util/concurrent/Future;)V

    .line 232
    .local v0, "deviceIdDomain":Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;
    iput-object v1, v0, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;->mDeviceId:Ljava/lang/String;

    .line 233
    const/4 v3, 0x1

    iput-boolean v3, v0, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;->mCreated:Z

    .line 234
    sget-object v3, Lmtopsdk/mtop/deviceid/DeviceIDManager;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v0    # "deviceIdDomain":Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;
    :cond_2
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    const-string/jumbo v3, "mtopsdk.DeviceIDManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[getDeviceIdFromStore] appkey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; deviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lmtopsdk/mtop/deviceid/DeviceIDManager;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->instance:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lmtopsdk/mtop/deviceid/DeviceIDManager;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->instance:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;

    invoke-direct {v0}, Lmtopsdk/mtop/deviceid/DeviceIDManager;-><init>()V

    sput-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->instance:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->instance:Lmtopsdk/mtop/deviceid/DeviceIDManager;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getRemoteDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 166
    sget-object v10, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v10}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 167
    const-string/jumbo v10, "mtopsdk.DeviceIDManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[getRemoteDeviceID] called!appkey="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->getLocalUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, "utdid":Ljava/lang/String;
    invoke-static {p1}, Lmtopsdk/xstate/util/PhoneInfo;->getOriginalImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "imei":Ljava/lang/String;
    invoke-static {p1}, Lmtopsdk/xstate/util/PhoneInfo;->getOriginalImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, "imsi":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v10, 0x40

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 174
    .local v3, "device_global_id":Ljava/lang/StringBuilder;
    invoke-static {v9}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 175
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_1
    invoke-static {v5}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 178
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_2
    invoke-static {v6}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 181
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 185
    const-string/jumbo v10, "mtopsdk.DeviceIDManager"

    const-string/jumbo v11, "[getRemoteDeviceID]device_global_id is blank"

    invoke-static {v10, v11}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v2, 0x0

    .line 215
    :cond_4
    :goto_0
    return-object v2

    .line 188
    :cond_5
    new-instance v7, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;

    invoke-direct {v7}, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;-><init>()V

    .line 189
    .local v7, "request":Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->device_global_id:Ljava/lang/String;

    .line 190
    const/4 v10, 0x1

    iput-boolean v10, v7, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->new_device:Z

    .line 191
    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v10, v7, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c0:Ljava/lang/String;

    .line 192
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v10, v7, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c1:Ljava/lang/String;

    .line 193
    iput-object v5, v7, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c2:Ljava/lang/String;

    .line 194
    iput-object v6, v7, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c3:Ljava/lang/String;

    .line 195
    invoke-static {p1}, Lmtopsdk/xstate/util/PhoneInfo;->getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c4:Ljava/lang/String;

    .line 196
    invoke-static {}, Lmtopsdk/xstate/util/PhoneInfo;->getSerialNum()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c5:Ljava/lang/String;

    .line 197
    invoke-static {p1}, Lmtopsdk/xstate/util/PhoneInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdRequest;->c6:Ljava/lang/String;

    .line 199
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v10

    invoke-virtual {v10}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v10

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v11

    invoke-virtual {v11}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalTtid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Lmtopsdk/mtop/intf/Mtop;->build(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v10

    const/16 v11, 0x1003

    invoke-virtual {v10, v11}, Lmtopsdk/mtop/intf/MtopBuilder;->setBizId(I)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lmtopsdk/mtop/intf/MtopBuilder;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v8

    .line 200
    .local v8, "response":Lmtopsdk/mtop/domain/MtopResponse;
    const/4 v2, 0x0

    .line 201
    .local v2, "deviceId":Ljava/lang/String;
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 203
    :try_start_0
    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v10

    const-class v11, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdResponse;

    invoke-static {v10, v11}, Lmtopsdk/mtop/util/MtopConvert;->jsonToOutputDO([BLjava/lang/Class;)Lmtopsdk/mtop/domain/BaseOutDo;

    move-result-object v0

    .line 204
    .local v0, "baseOutDo":Lmtopsdk/mtop/domain/BaseOutDo;
    if-eqz v0, :cond_4

    .line 205
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/BaseOutDo;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdResponseData;

    .line 206
    .local v1, "data":Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdResponseData;
    iget-object v2, v1, Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdResponseData;->device_id:Ljava/lang/String;

    .line 207
    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 208
    const-string/jumbo v10, "1"

    invoke-direct {p0, p1, p2, v2, v10}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->saveDeviceIdToStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    .end local v0    # "baseOutDo":Lmtopsdk/mtop/domain/BaseOutDo;
    .end local v1    # "data":Lmtopsdk/mtop/deviceid/domain/MtopSysNewDeviceIdResponseData;
    :catch_0
    move-exception v4

    .line 212
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "mtopsdk.DeviceIDManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "[getRemoteDeviceID] error ---"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private saveDeviceIdToStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "mCreated"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 249
    if-nez p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v0

    const-string/jumbo v2, "MtopConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "MTOPSDK_DEVICEID_STORE."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "deviceId"

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lmtopsdk/common/util/ConfigStoreManager;->saveConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 253
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v0

    const-string/jumbo v2, "MtopConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "MTOPSDK_DEVICEID_STORE."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "deviceId_created"

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lmtopsdk/common/util/ConfigStoreManager;->saveConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    sget-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;

    .line 256
    .local v7, "deviceIdDomain":Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;
    if-nez v7, :cond_2

    .line 257
    new-instance v7, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;

    .end local v7    # "deviceIdDomain":Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;
    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;-><init>(Lmtopsdk/mtop/deviceid/DeviceIDManager;Ljava/util/concurrent/Future;)V

    .line 259
    .restart local v7    # "deviceIdDomain":Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;
    :cond_2
    iput-object p3, v7, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;->mDeviceId:Ljava/lang/String;

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, v7, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;->mCreated:Z

    .line 261
    sget-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v0, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "[saveDeviceIdToStore]"

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .local v6, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "appkey="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string/jumbo v0, "; deviceId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string/jumbo v0, "; mCreated="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string/jumbo v0, "mtopsdk.DeviceIDManager"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clear(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 155
    sget-object v0, Lmtopsdk/mtop/deviceid/DeviceIDManager;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v0, ""

    const-string/jumbo v1, "0"

    invoke-direct {p0, p1, p2, v0, v1}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->saveDeviceIdToStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 68
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    const/4 v2, 0x0

    .line 111
    :cond_0
    :goto_0
    return-object v2

    .line 72
    :cond_1
    sget-object v3, Lmtopsdk/mtop/deviceid/DeviceIDManager;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;

    .line 73
    .local v0, "deviceIdDomain":Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;
    if-eqz v0, :cond_2

    .line 74
    iget-object v2, v0, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;->mLastFuture:Ljava/util/concurrent/Future;

    .line 75
    .local v2, "mLastFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-nez v3, :cond_2

    .line 76
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    const-string/jumbo v3, "mtopsdk.DeviceIDManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[getDeviceID] appKey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " return mLastFuture"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v2    # "mLastFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    :cond_2
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;

    invoke-direct {v3, p0, p1, p2}, Lmtopsdk/mtop/deviceid/DeviceIDManager$1;-><init>(Lmtopsdk/mtop/deviceid/DeviceIDManager;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 102
    .local v1, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    new-instance v3, Lmtopsdk/mtop/deviceid/DeviceIDManager$2;

    invoke-direct {v3, p0, v1}, Lmtopsdk/mtop/deviceid/DeviceIDManager$2;-><init>(Lmtopsdk/mtop/deviceid/DeviceIDManager;Ljava/util/concurrent/FutureTask;)V

    invoke-static {v3}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 109
    new-instance v0, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;

    .end local v0    # "deviceIdDomain":Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;
    invoke-direct {v0, p0, v1}, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;-><init>(Lmtopsdk/mtop/deviceid/DeviceIDManager;Ljava/util/concurrent/Future;)V

    .line 110
    .restart local v0    # "deviceIdDomain":Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;
    sget-object v3, Lmtopsdk/mtop/deviceid/DeviceIDManager;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 111
    goto :goto_0
.end method

.method public getLocalDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 120
    sget-object v1, Lmtopsdk/mtop/deviceid/DeviceIDManager;->deviceIdMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;

    .line 121
    .local v0, "deviceIdDomain":Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;->mDeviceId:Ljava/lang/String;

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    :cond_0
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->getDeviceIdFromStore(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lmtopsdk/mtop/deviceid/DeviceIDManager$DeviceIdDomain;->mDeviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLocalUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 133
    const-string/jumbo v1, "utdid"

    invoke-static {v1}, Lkkn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "utdid":Ljava/lang/String;
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-static {v0}, Lmtopsdk/mtop/global/SDKUtils;->registerUtdid(Ljava/lang/String;)V

    move-object v1, v0

    .line 146
    :goto_0
    return-object v1

    .line 138
    :cond_0
    if-nez p1, :cond_2

    .line 139
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    const-string/jumbo v1, "mtopsdk.DeviceIDManager"

    const-string/jumbo v2, "[getLocalUtdid] Context is null,get Utdid failed"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 144
    :cond_2
    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Lmtopsdk/mtop/global/SDKUtils;->registerUtdid(Ljava/lang/String;)V

    move-object v1, v0

    .line 146
    goto :goto_0
.end method
