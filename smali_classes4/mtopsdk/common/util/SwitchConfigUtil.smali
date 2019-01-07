.class public Lmtopsdk/common/util/SwitchConfigUtil;
.super Ljava/lang/Object;
.source "SwitchConfigUtil.java"


# static fields
.field public static final API_LOCK_INTERVAL_KEY:Ljava/lang/String; = "apiLockInterval"

.field public static final ARUP_BIZCODE_SET_KEY:Ljava/lang/String; = "arupBizcodeSet"

.field public static final CONFIG_GROUP_MTOPSDK_ANDROID_SWITCH:Ljava/lang/String; = "mtopsdk_android_switch"

.field public static final CONFIG_GROUP_MTOPSDK_APICACHE_BLOCKINFO_SWITCH:Ljava/lang/String; = "mtopsdk_apicache_blockinfo"

.field public static final CONFIG_GROUP_MTOPSDK_UPLOAD_SWITCH:Ljava/lang/String; = "mtopsdk_upload_switch"

.field public static final DEGRADE_TO_SQLITE_KEY:Ljava/lang/String; = "degradeToSQLite"

.field public static final ENABLE_CACHE_KEY:Ljava/lang/String; = "enableCache"

.field public static final ENABLE_MTOPSDK_PROPERTY_KEY:Ljava/lang/String; = "enableProperty"

.field public static final ENABLE_SPDY_KEY:Ljava/lang/String; = "enableSpdy"

.field public static final ENABLE_SSL_KEY:Ljava/lang/String; = "enableSsl"

.field public static final ENABLE_UNIT_KEY:Ljava/lang/String; = "enableUnit"

.field public static final GZIP_THRESHOLD_KEY:Ljava/lang/String; = "gzipThresHold"

.field public static final INDIVIDUAL_API_LOCK_INTERVAL_KEY:Ljava/lang/String; = "individualApiLockInterval"

.field public static final SECURITY_APPKEY_EXCLUDE_APILIST_KEY:Ljava/lang/String; = "excludeApiList"

.field public static final SECURITY_APPKEY_INCLUDE_APILIST_KEY:Ljava/lang/String; = "includeApiList"

.field public static final SEGMENT_RETRY_TIMES_KEY:Ljava/lang/String; = "segmentRetryTimes"

.field public static final SEGMENT_SIZE_MAP_KEY:Ljava/lang/String; = "segmentSizeMap"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.SwitchConfigUtil"

.field public static final UPLOAD_THREAD_NUMS_KEY:Ljava/lang/String; = "uploadThreadNums"

.field public static final USEHTTPS_BIZCODE_SET_KEY:Ljava/lang/String; = "useHttpsBizcodeSet"

.field public static final VALIDATE_RESPONSE_SIGN_APILIST_KEY:Ljava/lang/String; = "validateRespSignApiList"

.field private static listener:Lkkh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lmtopsdk/common/util/SwitchConfigUtil;->listener:Lkkh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSwitchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "groupName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, Lmtopsdk/common/util/SwitchConfigUtil;->listener:Lkkh;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lmtopsdk/common/util/SwitchConfigUtil;->listener:Lkkh;

    invoke-interface {v0}, Lkkh;->a()Ljava/lang/String;

    move-result-object p2

    .line 65
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 63
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "mtopsdk.SwitchConfigUtil"

    const-string/jumbo v1, "[getSwitchConfig] MtopConfigListener is null"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSwitchConfigByGroupName(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p0, "groupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 73
    sget-object v0, Lmtopsdk/common/util/SwitchConfigUtil;->listener:Lkkh;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lmtopsdk/common/util/SwitchConfigUtil;->listener:Lkkh;

    invoke-interface {v0}, Lkkh;->b()Ljava/util/Map;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 76
    :cond_0
    const-string/jumbo v0, "mtopsdk.SwitchConfigUtil"

    const-string/jumbo v1, "[getSwitchConfigByGroupName] MtopConfigListener is null"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setMtopConfigListener(Lkkh;)V
    .locals 0
    .param p0, "listener"    # Lkkh;

    .prologue
    .line 48
    if-eqz p0, :cond_0

    .line 49
    sput-object p0, Lmtopsdk/common/util/SwitchConfigUtil;->listener:Lkkh;

    .line 51
    :cond_0
    return-void
.end method
