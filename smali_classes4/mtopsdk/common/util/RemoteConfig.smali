.class public Lmtopsdk/common/util/RemoteConfig;
.super Ljava/lang/Object;
.source "RemoteConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/common/util/RemoteConfig$1;,
        Lmtopsdk/common/util/RemoteConfig$RemoteConfigInstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.RemoteConfig"

.field private static segmentSizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apiLockInterval:J

.field public final arupBizcodeSets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private configItemsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public degradeToSQLite:Z

.field public enableArupTlog:Z

.field public enableCache:Z

.field public enableProperty:Z

.field public enableSpdy:Z

.field public enableSsl:Z

.field public enableUnit:Z

.field public excludeApiList:Ljava/lang/String;

.field public gzipThresHold:I

.field public includeApiList:Ljava/lang/String;

.field public individualApiLockInterval:Ljava/lang/String;

.field public segmentRetryTimes:I

.field public uploadThreadNums:I

.field public final useHttpsBizcodeSets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public validateRespSignApiList:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x80000

    const/high16 v3, 0x20000

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    sput-object v0, Lmtopsdk/common/util/RemoteConfig;->segmentSizeMap:Ljava/util/Map;

    const-string/jumbo v1, "2G"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lmtopsdk/common/util/RemoteConfig;->segmentSizeMap:Ljava/util/Map;

    const-string/jumbo v1, "3G"

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lmtopsdk/common/util/RemoteConfig;->segmentSizeMap:Ljava/util/Map;

    const-string/jumbo v1, "4G"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lmtopsdk/common/util/RemoteConfig;->segmentSizeMap:Ljava/util/Map;

    const-string/jumbo v1, "WIFI"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lmtopsdk/common/util/RemoteConfig;->segmentSizeMap:Ljava/util/Map;

    const-string/jumbo v1, "UNKONWN"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lmtopsdk/common/util/RemoteConfig;->segmentSizeMap:Ljava/util/Map;

    const-string/jumbo v1, "NET_NO"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/common/util/RemoteConfig;->configItemsMap:Ljava/util/Map;

    .line 30
    iput-boolean v2, p0, Lmtopsdk/common/util/RemoteConfig;->enableSpdy:Z

    .line 32
    iput-boolean v2, p0, Lmtopsdk/common/util/RemoteConfig;->enableUnit:Z

    .line 34
    iput-boolean v2, p0, Lmtopsdk/common/util/RemoteConfig;->enableSsl:Z

    .line 36
    iput-boolean v2, p0, Lmtopsdk/common/util/RemoteConfig;->enableCache:Z

    .line 38
    iput-boolean v1, p0, Lmtopsdk/common/util/RemoteConfig;->enableProperty:Z

    .line 40
    iput-boolean v1, p0, Lmtopsdk/common/util/RemoteConfig;->degradeToSQLite:Z

    .line 42
    const v0, 0x19000

    iput v0, p0, Lmtopsdk/common/util/RemoteConfig;->gzipThresHold:I

    .line 44
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lmtopsdk/common/util/RemoteConfig;->apiLockInterval:J

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmtopsdk/common/util/RemoteConfig;->includeApiList:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmtopsdk/common/util/RemoteConfig;->excludeApiList:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmtopsdk/common/util/RemoteConfig;->validateRespSignApiList:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmtopsdk/common/util/RemoteConfig;->individualApiLockInterval:Ljava/lang/String;

    .line 56
    iput v3, p0, Lmtopsdk/common/util/RemoteConfig;->segmentRetryTimes:I

    .line 58
    iput v3, p0, Lmtopsdk/common/util/RemoteConfig;->uploadThreadNums:I

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmtopsdk/common/util/RemoteConfig;->useHttpsBizcodeSets:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmtopsdk/common/util/RemoteConfig;->arupBizcodeSets:Ljava/util/Set;

    .line 64
    iput-boolean v2, p0, Lmtopsdk/common/util/RemoteConfig;->enableArupTlog:Z

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lmtopsdk/common/util/RemoteConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lmtopsdk/common/util/RemoteConfig$1;

    .prologue
    .line 10
    invoke-direct {p0}, Lmtopsdk/common/util/RemoteConfig;-><init>()V

    return-void
.end method

.method private getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 275
    const/4 v2, 0x0

    .line 277
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lmtopsdk/common/util/RemoteConfig;->configItemsMap:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 278
    iget-object v3, p0, Lmtopsdk/common/util/RemoteConfig;->configItemsMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 286
    .end local p2    # "defValue":Ljava/lang/String;
    :goto_1
    return-object p2

    .line 280
    .restart local p2    # "defValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "mtopsdk.RemoteConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[getSwitchConfig] get config item error; key="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move-object p2, v2

    .line 286
    goto :goto_1
.end method

.method public static getInstance()Lmtopsdk/common/util/RemoteConfig;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lmtopsdk/common/util/RemoteConfig$RemoteConfigInstanceHolder;->access$100()Lmtopsdk/common/util/RemoteConfig;

    move-result-object v0

    return-object v0
.end method

.method private setApiLockInterval()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 215
    const-string/jumbo v1, "apiLockInterval"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lmtopsdk/common/util/RemoteConfig;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "apiLockIntervalConfig":Ljava/lang/String;
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lmtopsdk/common/util/RemoteConfig;->apiLockInterval:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    :goto_0
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    const-string/jumbo v1, "mtopsdk.RemoteConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setApiLockInterval]remote apiLockIntervalConfig="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",apiLockInterval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lmtopsdk/common/util/RemoteConfig;->apiLockInterval:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_1
    return-void

    .line 220
    :catch_0
    move-exception v1

    const-string/jumbo v1, "mtopsdk.RemoteConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setApiLockInterval]parse apiLockIntervalConfig error,apiLockIntervalConfig="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDegradeToSQLite()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 187
    const-string/jumbo v1, "degradeToSQLite"

    const-string/jumbo v2, "false"

    invoke-direct {p0, v1, v2}, Lmtopsdk/common/util/RemoteConfig;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "degradeToSQLiteConfig":Ljava/lang/String;
    const-string/jumbo v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmtopsdk/common/util/RemoteConfig;->degradeToSQLite:Z

    .line 193
    :goto_0
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const-string/jumbo v1, "mtopsdk.RemoteConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setDegradeToSQLite]remote degradeToSQLiteConfig="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",degradeToSQLite="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lmtopsdk/common/util/RemoteConfig;->degradeToSQLite:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void

    .line 191
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmtopsdk/common/util/RemoteConfig;->degradeToSQLite:Z

    goto :goto_0
.end method

.method private setEnableCache()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 161
    const-string/jumbo v1, "enableCache"

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lmtopsdk/common/util/RemoteConfig;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "cacheSwitchConfig":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmtopsdk/common/util/RemoteConfig;->enableCache:Z

    .line 167
    :goto_0
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const-string/jumbo v1, "mtopsdk.RemoteConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setEnableCache]remote cacheSwitchConfig="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",enableCache="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lmtopsdk/common/util/RemoteConfig;->enableCache:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void

    .line 165
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmtopsdk/common/util/RemoteConfig;->enableCache:Z

    goto :goto_0
.end method

.method private setEnableProperty()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 175
    const-string/jumbo v1, "enableProperty"

    const-string/jumbo v2, "false"

    invoke-direct {p0, v1, v2}, Lmtopsdk/common/util/RemoteConfig;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "mtopsdkPropertySwitchConfig":Ljava/lang/String;
    const-string/jumbo v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmtopsdk/common/util/RemoteConfig;->enableProperty:Z

    .line 181
    :goto_0
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string/jumbo v1, "mtopsdk.RemoteConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setEnableProperty]remote mtopsdkPropertySwitchConfig="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",enableProperty="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lmtopsdk/common/util/RemoteConfig;->enableProperty:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    return-void

    .line 179
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmtopsdk/common/util/RemoteConfig;->enableProperty:Z

    goto :goto_0
.end method

.method private setEnableSpdy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 116
    const-string/jumbo v1, "enableSpdy"

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lmtopsdk/common/util/RemoteConfig;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "spdySwitchConfig":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmtopsdk/common/util/RemoteConfig;->enableSpdy:Z

    .line 122
    :goto_0
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const-string/jumbo v1, "mtopsdk.RemoteConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setEnableSpdy]remote spdySwitchConfig="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",enableSpdy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lmtopsdk/common/util/RemoteConfig;->enableSpdy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void

    .line 120
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmtopsdk/common/util/RemoteConfig;->enableSpdy:Z

    goto :goto_0
.end method

.method private setEnableSsl()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 146
    const-string/jumbo v1, "enableSsl"

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lmtopsdk/common/util/RemoteConfig;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "spdySslSwitchConfig":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmtopsdk/common/util/RemoteConfig;->enableSsl:Z

    .line 152
    :goto_0
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string/jumbo v1, "mtopsdk.RemoteConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setEnableSsl]remote spdySslSwitchConfig="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",enableSsl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lmtopsdk/common/util/RemoteConfig;->enableSsl:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void

    .line 150
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmtopsdk/common/util/RemoteConfig;->enableSsl:Z

    goto :goto_0
.end method

.method private setEnableUnit()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 131
    const-string/jumbo v1, "enableUnit"

    const-string/jumbo v2, "true"

    invoke-direct {p0, v1, v2}, Lmtopsdk/common/util/RemoteConfig;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "unitSwitchConfig":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmtopsdk/common/util/RemoteConfig;->enableUnit:Z

    .line 137
    :goto_0
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const-string/jumbo v1, "mtopsdk.RemoteConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setEnableUnit]remote unitSwitchConfig="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",enableUnit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lmtopsdk/common/util/RemoteConfig;->enableUnit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void

    .line 135
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmtopsdk/common/util/RemoteConfig;->enableUnit:Z

    goto :goto_0
.end method

.method private setGzipThresHold()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 200
    const-string/jumbo v1, "gzipThresHold"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lmtopsdk/common/util/RemoteConfig;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "gzipThresholdSwitchConfig":Ljava/lang/String;
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lmtopsdk/common/util/RemoteConfig;->gzipThresHold:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    const-string/jumbo v1, "mtopsdk.RemoteConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setGzipThresHold]remote gzipThresholdSwitchConfig="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",gzipThresHold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmtopsdk/common/util/RemoteConfig;->gzipThresHold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_1
    return-void

    .line 205
    :catch_0
    move-exception v1

    const-string/jumbo v1, "mtopsdk.RemoteConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[setGzipThresHold]parse gzipThresholdSwitchConfig error,gzipThresholdSwitchConfig="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setOtherConfigItemKey()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 291
    const-string/jumbo v1, "includeApiList"

    const-string/jumbo v2, ""

    invoke-direct {p0, v1, v2}, Lmtopsdk/common/util/RemoteConfig;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmtopsdk/common/util/RemoteConfig;->includeApiList:Ljava/lang/String;

    .line 292
    const-string/jumbo v1, "excludeApiList"

    const-string/jumbo v2, ""

    invoke-direct {p0, v1, v2}, Lmtopsdk/common/util/RemoteConfig;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmtopsdk/common/util/RemoteConfig;->excludeApiList:Ljava/lang/String;

    .line 293
    const-string/jumbo v1, "validateRespSignApiList"

    const-string/jumbo v2, ""

    invoke-direct {p0, v1, v2}, Lmtopsdk/common/util/RemoteConfig;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmtopsdk/common/util/RemoteConfig;->validateRespSignApiList:Ljava/lang/String;

    .line 294
    const-string/jumbo v1, "individualApiLockInterval"

    const-string/jumbo v2, ""

    invoke-direct {p0, v1, v2}, Lmtopsdk/common/util/RemoteConfig;->getConfigItemByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmtopsdk/common/util/RemoteConfig;->individualApiLockInterval:Ljava/lang/String;

    .line 295
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[setOtherConfigItemKey]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "includeApiList ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/common/util/RemoteConfig;->includeApiList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string/jumbo v1, ", excludeApiList ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/common/util/RemoteConfig;->excludeApiList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string/jumbo v1, ", validateRespSignApiList ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/common/util/RemoteConfig;->validateRespSignApiList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string/jumbo v1, ", individualApiLockInterval ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/common/util/RemoteConfig;->individualApiLockInterval:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string/jumbo v1, "mtopsdk.RemoteConfig"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method


# virtual methods
.method public getSegmentSize(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmtopsdk/common/util/RemoteConfig;->segmentSizeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setSegmentSize(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "segmentSize"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 86
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-gtz p2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    sget-object v0, Lmtopsdk/common/util/RemoteConfig;->segmentSizeMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public updateRemoteConfig()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 93
    const-string/jumbo v0, "mtopsdk_android_switch"

    invoke-static {v0}, Lmtopsdk/common/util/SwitchConfigUtil;->getSwitchConfigByGroupName(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/common/util/RemoteConfig;->configItemsMap:Ljava/util/Map;

    .line 94
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string/jumbo v0, "mtopsdk.RemoteConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[updateRemoteConfig] configItemsMap="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmtopsdk/common/util/RemoteConfig;->configItemsMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lmtopsdk/common/util/RemoteConfig;->configItemsMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 112
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-direct {p0}, Lmtopsdk/common/util/RemoteConfig;->setEnableSpdy()V

    .line 102
    invoke-direct {p0}, Lmtopsdk/common/util/RemoteConfig;->setEnableUnit()V

    .line 103
    invoke-direct {p0}, Lmtopsdk/common/util/RemoteConfig;->setEnableSsl()V

    .line 104
    invoke-direct {p0}, Lmtopsdk/common/util/RemoteConfig;->setEnableCache()V

    .line 105
    invoke-direct {p0}, Lmtopsdk/common/util/RemoteConfig;->setEnableProperty()V

    .line 106
    invoke-direct {p0}, Lmtopsdk/common/util/RemoteConfig;->setDegradeToSQLite()V

    .line 108
    invoke-direct {p0}, Lmtopsdk/common/util/RemoteConfig;->setGzipThresHold()V

    .line 109
    invoke-direct {p0}, Lmtopsdk/common/util/RemoteConfig;->setApiLockInterval()V

    .line 111
    invoke-direct {p0}, Lmtopsdk/common/util/RemoteConfig;->setOtherConfigItemKey()V

    goto :goto_0
.end method

.method public updateUploadRemoteConfig()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 230
    const-string/jumbo v5, "mtopsdk_upload_switch"

    invoke-static {v5}, Lmtopsdk/common/util/SwitchConfigUtil;->getSwitchConfigByGroupName(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 232
    .local v3, "uploadConfigItemsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 233
    const-string/jumbo v5, "mtopsdk.RemoteConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[updateUploadRemoteConfig] uploadConfigItemsMap="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    if-nez v3, :cond_2

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 239
    :cond_2
    const-string/jumbo v5, "segmentRetryTimes"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 240
    .local v2, "segmentRetryTimesStr":Ljava/lang/String;
    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 243
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, "remoteSegmentRetryTimes":I
    if-ltz v0, :cond_3

    .line 245
    iput v0, p0, Lmtopsdk/common/util/RemoteConfig;->segmentRetryTimes:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v0    # "remoteSegmentRetryTimes":I
    :cond_3
    :goto_1
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 251
    const-string/jumbo v5, "mtopsdk.RemoteConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[updateUploadRemoteConfig]remote segmentRetryTimesStr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",segmentRetryTimes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lmtopsdk/common/util/RemoteConfig;->segmentRetryTimes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_4
    const-string/jumbo v5, "uploadThreadNums"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 257
    .local v4, "uploadThreadNumsStr":Ljava/lang/String;
    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 260
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 261
    .local v1, "remoteUploadThreadNums":I
    if-ltz v1, :cond_5

    .line 262
    iput v1, p0, Lmtopsdk/common/util/RemoteConfig;->uploadThreadNums:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 267
    .end local v1    # "remoteUploadThreadNums":I
    :cond_5
    :goto_2
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 268
    const-string/jumbo v5, "mtopsdk.RemoteConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[updateUploadRemoteConfig]remote uploadThreadNumsStr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",uploadThreadNums="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lmtopsdk/common/util/RemoteConfig;->uploadThreadNums:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    .end local v4    # "uploadThreadNumsStr":Ljava/lang/String;
    :catch_0
    move-exception v5

    const-string/jumbo v5, "mtopsdk.RemoteConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[updateUploadRemoteConfig]parse segmentRetryTimes error,segmentRetryTimesStr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 265
    .restart local v4    # "uploadThreadNumsStr":Ljava/lang/String;
    :catch_1
    move-exception v5

    const-string/jumbo v5, "mtopsdk.RemoteConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[updateUploadRemoteConfig]parse uploadThreadNums error,uploadThreadNumsStr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
