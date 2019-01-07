.class Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;
.super Ljava/lang/Object;
.source "H5LoggerSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;
    }
.end annotation


# static fields
.field private static final APLOG_TYPE:Ljava/lang/String; = "aplog"

.field private static final DEFAULT_OUTPUT:Ljava/lang/String; = "mdap|aplog"

.field private static final MAAP_TYPE:Ljava/lang/String; = "mdap"

.field public static final TAG:Ljava/lang/String; = "H5LoggerSwitch"

.field public static loggerSwitchModel:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;

.field public static presetSwitchMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    sput-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_FLOW"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "1000"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_PAY_START"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "1070"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_PAY_RESULT"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "1080"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_PAGE_LOAD_FAIL"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "1110"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_PAGE_RESUME"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "1120"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_PAGE_SYNCAJAX"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "2030"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_NETWORK_PERFORMANCE_WARN"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "2041"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_NETWORK_PERFORMANCE_ERROR"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "2042"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_NETWORK_PERFORMANCE_INVALIDSESSION"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "2043"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_NETWORK_START"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "2044"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_PAGE_JSERROR"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "2050"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_INTERCEPT_SCHEME"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "2100"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_LAUNCH_PARAM_WARN"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "2200"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_NETWORK_PERMISSON_ERROR"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "2088"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_ENTRY_ERROR"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4001"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_FROM_NATIVE"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4008"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_TO_NATIVE"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4009"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_START"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4010"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_CONFIG"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4020"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_VERIFYTAR_SUCCESS"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4030"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_VERIFYTAR_FAIL"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4031"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_VERIFYTAR_NONEXISTENT"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4032"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_LAUNCH"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4040"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_RESUME"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4050"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_END"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4060"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_ENTRYRPC"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4070"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_ENTRYRPC_SKIP"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4071"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_ENTRYRPC_SUCCESS"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4072"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_ENTRYRPC_ERROR"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4073"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_JSAPI_CALL"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4080"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_JSAPI_RESULT"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4100"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_JSAPI_RESULT_ERROR"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4101"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_GLOBALLIST_ERROR"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4121"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_GLOBALLIST_SUCCESS"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4122"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_HTTPPROXY"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4130"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_HTTPPROXY_FAIL"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4131"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_AUTOLOGIN"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4140"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_INJECT_JS"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4150"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_INJECT_JSCODE"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4151"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_MAP_SUCCESS"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4160"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_FALLBACK"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4161"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_UPDATEPACKAGE_SUCCESS"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4162"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_PAGE_UNAVAILABEL"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4181"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_PAGE_ILLEGAL_URL"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4190"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_JSAPI_SENDEVENT"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4200"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_AUTOLOGIN_START"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4300"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_AUTOLOGIN_RESULT"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4301"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_AUTOLOGIN_END"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4302"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_ALIAUTOLOGIN"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4400"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_SESSION_ZHIMALOGIN"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4401"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_GETSHARECONTENT_RESULT"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4500"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_ALMODE_ENABLE"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "4600"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_APP_PREPARE"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "5000"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_APP_DOWNLOAD"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "5001"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_APP_UNZIP"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "5002"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_APP_REQUEST"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "5003"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_APP_POOL"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "5004"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_APP_VERIFY"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "5005"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_APP_EXCEP"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "5006"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_APP_BIZ_SYNC"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "5007"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_APP_BIZ_APPCENTER"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "5008"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_APP_BIZ_EXCP"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "5009"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_APP_RPC_EXCEPTION"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "5010"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_APP_LOAD_DATASOURCE"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "5011"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_PAGE_RES_REDIRECT"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "5012"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_RESOURCE_FIRST_OFFLINE"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "7000"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_TABBAR_WARN"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "99000"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_TABBAR_ERROR"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "99001"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_PAGE_ABNORMAL"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "2021"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_PAGE_REPAIR"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "5020"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_AL_JSERROR"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "2051"

    const-string/jumbo v4, "none"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    const-string/jumbo v1, "H5_TRANS_PUSHWINDOW"

    new-instance v2, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    const-string/jumbo v3, "5101"

    const-string/jumbo v4, "mdap|aplog"

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enableLoggerSwitch()Z
    .locals 2

    .prologue
    .line 286
    const-string/jumbo v1, "h5_enableLoggerSwitch"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/H5NebulaUtil;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const/4 v1, 0x0

    .line 290
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isUploadMdap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 25
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "param1"    # Ljava/lang/String;
    .param p2, "param2"    # Ljava/lang/String;
    .param p3, "param3"    # Ljava/lang/String;
    .param p4, "param4"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->enableLoggerSwitch()Z

    move-result v22

    if-nez v22, :cond_0

    .line 120
    invoke-static/range {p0 .. p4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->printApLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/16 v22, 0x1

    .line 256
    :goto_0
    return v22

    .line 124
    :cond_0
    sget-object v22, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->loggerSwitchModel:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;

    if-nez v22, :cond_1

    .line 125
    const-string/jumbo v22, "h5_autoLoggerSwitch"

    invoke-static/range {v22 .. v22}, Lcom/alipay/mobile/nebulacore/util/H5NebulaUtil;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "h5_autoLoggerSwitch":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 127
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->setLoggerSwitchModel(Ljava/lang/String;)V

    .line 134
    .end local v4    # "h5_autoLoggerSwitch":Ljava/lang/String;
    :cond_1
    const/16 v19, 0x1

    .line 135
    .local v19, "uploadMadp":Z
    const-string/jumbo v11, ""

    .line 136
    .local v11, "presetLogId":Ljava/lang/String;
    const-string/jumbo v12, ""

    .line 138
    .local v12, "presetOutput":Ljava/lang/String;
    sget-object v22, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    if-eqz v22, :cond_5

    .line 139
    sget-object v22, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->presetSwitchMap:Ljava/util/Map;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;

    .line 140
    .local v5, "loggerPreset":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;
    if-eqz v5, :cond_2

    .line 141
    iget-object v11, v5, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;->logId:Ljava/lang/String;

    .line 142
    iget-object v12, v5, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;->output:Ljava/lang/String;

    .line 144
    :cond_2
    if-eqz v5, :cond_3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 145
    :cond_3
    invoke-static/range {p0 .. p4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->printApLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/16 v22, 0x1

    goto :goto_0

    .line 129
    .end local v5    # "loggerPreset":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;
    .end local v11    # "presetLogId":Ljava/lang/String;
    .end local v12    # "presetOutput":Ljava/lang/String;
    .end local v19    # "uploadMadp":Z
    .restart local v4    # "h5_autoLoggerSwitch":Ljava/lang/String;
    :cond_4
    invoke-static/range {p0 .. p4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->printApLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/16 v22, 0x1

    goto :goto_0

    .line 149
    .end local v4    # "h5_autoLoggerSwitch":Ljava/lang/String;
    .restart local v11    # "presetLogId":Ljava/lang/String;
    .restart local v12    # "presetOutput":Ljava/lang/String;
    .restart local v19    # "uploadMadp":Z
    :cond_5
    invoke-static/range {p0 .. p4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->printApLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/16 v22, 0x1

    goto :goto_0

    .line 153
    .restart local v5    # "loggerPreset":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;
    :cond_6
    const-string/jumbo v18, ""

    .line 154
    .local v18, "targetUrl":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 155
    .local v2, "appId":Ljava/lang/String;
    const-string/jumbo v13, ""

    .line 156
    .local v13, "publicId":Ljava/lang/String;
    const-string/jumbo v20, ""

    .line 157
    .local v20, "url":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v10, "paramStr":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "^"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "^"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 159
    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "^"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v23, "\\^"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, "paramList":[Ljava/lang/String;
    if-eqz v9, :cond_b

    array-length v0, v9

    move/from16 v22, v0

    if-lez v22, :cond_b

    .line 162
    array-length v0, v9

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    aget-object v8, v9, v22

    .line 163
    .local v8, "param":Ljava/lang/String;
    const-string/jumbo v24, "targetUrl="

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 164
    const-string/jumbo v24, "="

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 166
    :cond_7
    const-string/jumbo v24, "appId="

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 167
    const-string/jumbo v24, "="

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 169
    :cond_8
    const-string/jumbo v24, "publicId="

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 170
    const-string/jumbo v24, "="

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 172
    :cond_9
    const-string/jumbo v24, "url="

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 173
    const-string/jumbo v24, "="

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 162
    :cond_a
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 180
    .end local v8    # "param":Ljava/lang/String;
    :cond_b
    sget-object v22, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->loggerSwitchModel:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;

    if-eqz v22, :cond_1c

    sget-object v22, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->loggerSwitchModel:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;

    invoke-virtual/range {v22 .. v22}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;->getRules()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_1c

    .line 181
    sget-object v22, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->loggerSwitchModel:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;

    invoke-virtual/range {v22 .. v22}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;->getOutput()Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, "outputStr":Ljava/lang/String;
    sget-object v22, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->loggerSwitchModel:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;

    invoke-virtual/range {v22 .. v22}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;->getRules()Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_c
    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_17

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;

    .line 185
    .local v17, "rulesBean":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;->getLid()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 186
    const/16 v21, 0x0

    .line 187
    .local v21, "urlMatch":Z
    const/4 v3, 0x0

    .line 188
    .local v3, "appIdMatch":Z
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;->getRange()Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;->getPublicId()Ljava/lang/String;

    move-result-object v15

    .line 189
    .local v15, "rangPublicId":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;->getRange()Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;->getAppId()Ljava/lang/String;

    move-result-object v14

    .line 190
    .local v14, "rangAppId":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;->getRange()Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean$RangeBean;->getUrl()Ljava/lang/String;

    move-result-object v16

    .line 191
    .local v16, "rangUrl":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_d

    invoke-static {v13, v15}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 192
    const/4 v3, 0x1

    .line 194
    :cond_d
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_e

    invoke-static {v2, v14}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 195
    const/4 v3, 0x1

    .line 197
    :cond_e
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_10

    .line 198
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_f

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 199
    :cond_f
    const/16 v21, 0x1

    .line 201
    :cond_10
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 202
    const/4 v3, 0x1

    .line 204
    :cond_11
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 205
    const/16 v21, 0x1

    .line 209
    :cond_12
    if-eqz v21, :cond_16

    if-eqz v3, :cond_16

    .line 210
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;->getOutput()Ljava/lang/String;

    move-result-object v6

    .line 211
    .local v6, "outputRule":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_15

    .line 212
    const-string/jumbo v23, "aplog"

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 213
    invoke-static/range {p0 .. p4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->printApLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_13
    const-string/jumbo v23, "mdap"

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 216
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 218
    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 221
    :cond_15
    invoke-static/range {p0 .. p4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->printApLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 226
    .end local v6    # "outputRule":Ljava/lang/String;
    :cond_16
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 234
    .end local v3    # "appIdMatch":Z
    .end local v14    # "rangAppId":Ljava/lang/String;
    .end local v15    # "rangPublicId":Ljava/lang/String;
    .end local v16    # "rangUrl":Ljava/lang/String;
    .end local v17    # "rulesBean":Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    .end local v21    # "urlMatch":Z
    :cond_17
    if-eqz v19, :cond_1b

    .line 235
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1a

    .line 237
    const-string/jumbo v22, "aplog"

    move-object/from16 v0, v22

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_18

    const-string/jumbo v22, "aplog"

    move-object/from16 v0, v22

    invoke-static {v0, v12}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 238
    invoke-static/range {p0 .. p4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->printApLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_18
    const-string/jumbo v22, "mdap"

    move-object/from16 v0, v22

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_19

    const-string/jumbo v22, "mdap"

    move-object/from16 v0, v22

    invoke-static {v0, v12}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 242
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 244
    :cond_19
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 247
    :cond_1a
    invoke-static/range {p0 .. p4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->printApLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 251
    :cond_1b
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 255
    .end local v7    # "outputStr":Ljava/lang/String;
    :cond_1c
    invoke-static/range {p0 .. p4}, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->printApLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const/16 v22, 0x1

    goto/16 :goto_0
.end method

.method private static match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 278
    .local v1, "regex":Ljava/util/regex/Pattern;
    if-nez v1, :cond_0

    .line 279
    const/4 v2, 0x0

    .line 282
    :goto_0
    return v2

    .line 281
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 282
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    goto :goto_0
.end method

.method public static printApLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "param1"    # Ljava/lang/String;
    .param p2, "param2"    # Ljava/lang/String;
    .param p3, "param3"    # Ljava/lang/String;
    .param p4, "param4"    # Ljava/lang/String;

    .prologue
    .line 262
    const-string/jumbo v0, "H5LoggerSwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "seedId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,param1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,param2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,param3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,param4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method private static setLoggerSwitchModel(Ljava/lang/String;)V
    .locals 2
    .param p0, "loggerSwitchStr"    # Ljava/lang/String;

    .prologue
    .line 110
    :try_start_0
    const-class v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;

    invoke-static {p0, v1}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;

    sput-object v1, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;->loggerSwitchModel:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "H5LoggerSwitch"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
