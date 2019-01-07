.class public Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;
.super Ljava/lang/Object;
.source "UcSetupExceptionHelper.java"


# static fields
.field public static final ERROR_TYPE_FROM_ERROR:I = 0x7532

.field public static final ERROR_TYPE_FROM_INIT:I = 0x7533

.field public static final ERROR_TYPE_FROM_WARN:I = 0x7531

.field public static final H5_UC_INIT_FAIL_INFO:Ljava/lang/String; = "h5_uc_init_fail_info"

.field public static final H5_UC_RETRY_FLAG:Ljava/lang/String; = "h5_uc_retry_flag"

.field public static final TAG:Ljava/lang/String; = "UcSetupExceptionHelper"

.field public static errorCodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static isResultUpload:Z

.field public static isRetryInitUc:Z

.field public static lastErrorInfo:Ljava/lang/String;

.field public static setupKeyMap:Ljava/util/Map;
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

.field public static ucErrorCode:Ljava/lang/String;

.field public static ucErrorInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 38
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorInfo:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorCode:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->lastErrorInfo:Ljava/lang/String;

    .line 45
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc:Z

    .line 51
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isResultUpload:Z

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "1001"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "1002"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "1003"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "1004"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "1005"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "1006"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "1007"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "1008"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "1009"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "1010"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "1011"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "2001"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "2002"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "2003"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "2004"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "2005"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "2006"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "2007"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "2008"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "3001"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "3003"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "3005"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "3007"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "4001"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "4005"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "4007"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "4012"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "4016"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "6015"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "9004"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "9101"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    const-string/jumbo v1, "-99999"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->setupKeyMap:Ljava/util/Map;

    const-string/jumbo v1, "OPTION_VIDEO_HARDWARE_ACCELERATED"

    const-string/jumbo v2, "VIDEO_AC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->setupKeyMap:Ljava/util/Map;

    const-string/jumbo v1, "OPTION_WEBVIEW_POLICY"

    const-string/jumbo v2, "WEBVIEW_POLICY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->setupKeyMap:Ljava/util/Map;

    const-string/jumbo v1, "OPTION_SETUP_THREAD_PRIORITY"

    const-string/jumbo v2, "setup_priority"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static containRetryCode(Ljava/lang/String;)Z
    .locals 3
    .param p0, "errStr"    # Ljava/lang/String;

    .prologue
    .line 229
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 230
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->errorCodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    const/4 v1, 0x1

    .line 236
    .end local v0    # "code":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getErrorCodeFromThrowable(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 130
    instance-of v0, p0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    .end local p0    # "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .restart local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static getExtraReportInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "model="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^sdk_int="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^manufacturer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^board="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "extraInfo":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v3

    .line 142
    .local v3, "service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v2

    .line 144
    .local v2, "page":Liop;
    if-eqz v2, :cond_0

    .line 145
    invoke-interface {v2}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "appId"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "appId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^appId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .end local v0    # "appId":Ljava/lang/String;
    .end local v2    # "page":Liop;
    :cond_0
    return-object v1
.end method

.method private static getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "df"    # Ljava/lang/String;

    .prologue
    .line 261
    const-string/jumbo v2, ""

    .line 263
    .local v2, "str":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v4

    if-nez v4, :cond_1

    .line 264
    const-class v4, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 266
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 267
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_0

    .line 268
    const-class v4, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 269
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 270
    .local v1, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    if-eqz v1, :cond_0

    .line 271
    invoke-interface {v1, p0, p1}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local v1    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    :goto_0
    return-object v2

    .line 275
    :cond_1
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 277
    :catch_0
    move-exception v3

    .line 278
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "UcSetupExceptionHelper"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static inRightProcess()Z
    .locals 2

    .prologue
    .line 198
    const-class v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 200
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 201
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->isAllLiteProcessHide()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 204
    :goto_0
    return v1

    .line 202
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 204
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v1

    goto :goto_0
.end method

.method public static isRetryInitUc()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->inRightProcess()Z

    move-result v4

    if-nez v4, :cond_0

    .line 177
    const-string/jumbo v3, "UcSetupExceptionHelper"

    const-string/jumbo v4, "not inRightProcess"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .local v0, "failStr":Ljava/lang/String;
    .local v1, "retryFlag":Ljava/lang/String;
    :goto_0
    return v2

    .line 180
    .end local v0    # "failStr":Ljava/lang/String;
    .end local v1    # "retryFlag":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "h5_uc_init_fail_info"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .restart local v0    # "failStr":Ljava/lang/String;
    const-string/jumbo v4, "h5_uc_retry_flag"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .restart local v1    # "retryFlag":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 183
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 184
    :cond_1
    const-string/jumbo v3, "UcSetupExceptionHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "failStr : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " retryFlag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_2
    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->lastErrorInfo:Ljava/lang/String;

    .line 189
    const-string/jumbo v2, "h5_uc_init_fail_info"

    const-string/jumbo v4, ""

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->saveStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v2, "h5_uc_retry_flag"

    const-string/jumbo v4, "retry"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->saveStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sput-boolean v3, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc:Z

    .line 193
    const-string/jumbo v2, "UcSetupExceptionHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isRetryInitUc : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 194
    goto :goto_0
.end method

.method public static logUcInitException(Ljava/lang/Throwable;I)V
    .locals 8
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "errorType"    # I

    .prologue
    .line 102
    const-string/jumbo v1, "no"

    const-string/jumbo v3, "h5_log_uc_init_exception"

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "errString":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->getErrorCodeFromThrowable(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorCode:Ljava/lang/String;

    .line 110
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 111
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_2

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isTinyApp="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "^errorType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "^ucVersion="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/nebulaucsdk/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "^isRetry="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "^errorCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "param1":Ljava/lang/String;
    const-string/jumbo v1, "H5_UC_INIT_EXCEPTION_DETAIL"

    .line 118
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->getExtraReportInfo()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    const/4 v6, 0x0

    .line 117
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v2    # "param1":Ljava/lang/String;
    :cond_2
    invoke-static {v5}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->saveUcErrorInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v0    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v5    # "errString":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 122
    .local v7, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "UcSetupExceptionHelper"

    const-string/jumbo v3, "throwable : "

    invoke-static {v1, v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private static saveStringConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 241
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v3

    if-nez v3, :cond_1

    .line 242
    const-class v3, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 244
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 245
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_0

    .line 246
    const-class v3, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 247
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 248
    .local v1, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    if-eqz v1, :cond_0

    .line 249
    invoke-interface {v1, p0, p1}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local v1    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v2

    .line 256
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v3, "UcSetupExceptionHelper"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static saveUcErrorInfo(Ljava/lang/String;)V
    .locals 5
    .param p0, "errStr"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x0

    .line 153
    const-string/jumbo v1, "no"

    const-string/jumbo v2, "h5_uc_init_retry"

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string/jumbo v1, "\\n\\t"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "saveStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 160
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_2
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->containRetryCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorInfo:Ljava/lang/String;

    .line 166
    const-string/jumbo v1, "h5_uc_init_fail_info"

    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->saveStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->lastErrorInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc:Z

    if-eqz v1, :cond_0

    .line 170
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->uploadUcRetryResult(Z)V

    goto :goto_0
.end method

.method public static uploadUcRetryResult(Z)V
    .locals 7
    .param p0, "success"    # Z

    .prologue
    .line 209
    sget-boolean v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isResultUpload:Z

    if-eqz v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isResultUpload:Z

    .line 214
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 215
    .local v0, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isTinyApp="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "^success="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "^errorCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "param1":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ucErrorInfo="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->ucErrorInfo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "^lastErrorInfo="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->lastErrorInfo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "param4":Ljava/lang/String;
    const-string/jumbo v1, "H5_UC_INIT_RETRY_RESULT"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v0    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v2    # "param1":Ljava/lang/String;
    .end local v5    # "param4":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 224
    .local v6, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "UcSetupExceptionHelper"

    const-string/jumbo v3, "throwable : "

    invoke-static {v1, v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
