.class public abstract Lcom/alipay/mobile/security/zim/api/ZIMFacade;
.super Ljava/lang/Object;
.source "ZIMFacade.java"


# static fields
.field public static final EXT_KEY_GW_URL:Ljava/lang/String; = "gwUrl"

.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "1.0.0"

    sput-object v0, Lcom/alipay/mobile/security/zim/api/ZIMFacade;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/alipay/mobile/security/zim/api/ZIMFacade;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const-string/jumbo v2, ""

    .line 129
    .local v2, "apDidToken":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/security/bio/runtime/Runtime;->isRunningOnQuinox(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 131
    :try_start_0
    const-string/jumbo v18, "com.alipay.mobile.framework.b"

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 133
    .local v4, "clazzLauncherApplicationAgent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v18, "getInstance"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 134
    .local v12, "methodGetInstance":Ljava/lang/reflect/Method;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 135
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 137
    .local v9, "launcherApplicationAgent":Ljava/lang/Object;
    const-string/jumbo v18, "getMicroApplicationContext"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 138
    .local v13, "methodGetMicroApplicationContext":Ljava/lang/reflect/Method;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 139
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 141
    .local v15, "microApplicationContext":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    const-string/jumbo v19, "findServiceByInterface"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-class v22, Ljava/lang/String;

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 142
    .local v10, "methodFindServiceByInterface":Ljava/lang/reflect/Method;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 143
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "com.alipay.apmobilesecuritysdk.DeviceFingerprintService"

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v10, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 145
    .local v5, "deviceFingerprintService":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 146
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    const-string/jumbo v19, "getApdidToken"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 147
    .local v11, "methodGetApdidToken":Ljava/lang/reflect/Method;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 148
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 149
    .local v16, "token":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "DeviceFingerprintService.getApdidToken(): "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V

    .line 151
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    if-nez v18, :cond_0

    .line 152
    move-object/from16 v2, v16

    .line 178
    .end local v4    # "clazzLauncherApplicationAgent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "deviceFingerprintService":Ljava/lang/Object;
    .end local v9    # "launcherApplicationAgent":Ljava/lang/Object;
    .end local v10    # "methodFindServiceByInterface":Ljava/lang/reflect/Method;
    .end local v11    # "methodGetApdidToken":Ljava/lang/reflect/Method;
    .end local v12    # "methodGetInstance":Ljava/lang/reflect/Method;
    .end local v13    # "methodGetMicroApplicationContext":Ljava/lang/reflect/Method;
    .end local v15    # "microApplicationContext":Ljava/lang/Object;
    .end local v16    # "token":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 180
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;->getStaticApDidToken()Ljava/lang/String;

    move-result-object v16

    .line 181
    .restart local v16    # "token":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "ApSecurityService.getStaticApDidToken(): "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V

    .line 183
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 184
    move-object/from16 v2, v16

    .line 188
    .end local v16    # "token":Ljava/lang/String;
    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "apDidToken="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/security/bio/utils/BioLog;->v(Ljava/lang/String;)V

    .line 190
    return-object v2

    .line 155
    :catch_0
    move-exception v7

    .line 156
    .local v7, "e":Ljava/lang/Throwable;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Failed to get apdidToken by calling DeviceFingerprintService.getApdidToken() : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v7    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    const-string/jumbo v18, "com.alipay.deviceid.DeviceTokenClient"

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 162
    .local v3, "clazzDeviceTokenClient":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v18, "getInstance"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Landroid/content/Context;

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 163
    .restart local v12    # "methodGetInstance":Ljava/lang/reflect/Method;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 164
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p0, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v12, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 166
    .local v6, "deviceTokenClient":Ljava/lang/Object;
    const-string/jumbo v18, "getTokenResult"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 167
    .local v14, "methodGetTokenResult":Ljava/lang/reflect/Method;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 168
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 170
    .local v17, "tokenResult":Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    const-string/jumbo v19, "apdidToken"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 171
    .local v8, "fieldApdidToken":Ljava/lang/reflect/Field;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 172
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 173
    .end local v3    # "clazzDeviceTokenClient":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "deviceTokenClient":Ljava/lang/Object;
    .end local v8    # "fieldApdidToken":Ljava/lang/reflect/Field;
    .end local v12    # "methodGetInstance":Ljava/lang/reflect/Method;
    .end local v14    # "methodGetTokenResult":Ljava/lang/reflect/Method;
    .end local v17    # "tokenResult":Ljava/lang/Object;
    :catch_1
    move-exception v7

    .line 174
    .restart local v7    # "e":Ljava/lang/Throwable;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "Failed to get apdidToken by calling DeviceTokenClient.getTokenResult().apdidToken : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getMetaInfos(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-static {p0}, Lcom/alipay/mobile/security/zim/api/ZIMFacade;->getZimMetaInfo(Landroid/content/Context;)Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;

    move-result-object v2

    .line 112
    .local v2, "zimMetaInfo":Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;
    const-string/jumbo v1, ""

    .line 114
    .local v1, "metaInfos":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 118
    :goto_0
    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getZimMetaInfo(Landroid/content/Context;)Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v0, Lcom/alipay/mobile/security/zim/api/ZIMFacade$1;

    invoke-direct {v0}, Lcom/alipay/mobile/security/zim/api/ZIMFacade$1;-><init>()V

    .line 96
    .local v0, "appDataProvider":Liqb;
    new-instance v1, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;-><init>()V

    .line 98
    .local v1, "zimMetaInfo":Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;
    invoke-interface {v0, p0}, Liqb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->setApdidToken(Ljava/lang/String;)V

    .line 99
    invoke-interface {v0, p0}, Liqb;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->setAppName(Ljava/lang/String;)V

    .line 100
    invoke-interface {v0, p0}, Liqb;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->setAppVersion(Ljava/lang/String;)V

    .line 101
    invoke-interface {v0}, Liqb;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->setDeviceModel(Ljava/lang/String;)V

    .line 102
    invoke-interface {v0}, Liqb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->setDeviceType(Ljava/lang/String;)V

    .line 103
    invoke-interface {v0}, Liqb;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->setOsVersion(Ljava/lang/String;)V

    .line 104
    invoke-static {p0}, Lcom/alipay/mobile/security/bio/api/BioDetectorBuilder;->getMetaInfos(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->setBioMetaInfo(Ljava/lang/String;)V

    .line 105
    sget-object v2, Lcom/alipay/mobile/security/zim/api/ZIMFacade;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/zim/api/ZIMMetaInfo;->setZimVer(Ljava/lang/String;)V

    .line 107
    return-object v1
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract verify(Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/security/zim/api/ZIMCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/security/zim/api/ZIMCallback;",
            ")V"
        }
    .end annotation
.end method
