.class public abstract Lgvi;
.super Ljava/lang/Object;
.source "IAlarm.java"


# static fields
.field public static final LIGHT_APP_WARING_LEVEL_DEFAULT:I = 0x1

.field public static final LIGHT_APP_WARING_LOG_TAG:I = 0x7

.field public static final OCASSION_INDEX:Ljava/lang/String; = "1"

.field public static final RES_TYPE_MAIN:I = 0x1

.field public static final RES_TYPE_SUB:I = 0x2

.field public static final TAG:Ljava/lang/String;

.field public static final TYPE_ALIPAY_API_HTTP_REQUEST_ERROR:Ljava/lang/String; = "w"

.field public static final TYPE_ALIPAY_MINI_CORE_ERROR:Ljava/lang/String; = "t_core"

.field public static final TYPE_ALIPAY_MINI_WHITE_SCREEN:Ljava/lang/String; = "t"

.field public static final TYPE_ALIPAY_PACKAGE_ERROR:Ljava/lang/String; = "u"

.field public static final TYPE_AUTO_ATTENDANCE:Ljava/lang/String; = "a"

.field public static final TYPE_BLANKDETECTOR:Ljava/lang/String; = "q"

.field public static final TYPE_CONFIG:Ljava/lang/String; = "b"

.field public static final TYPE_CONFIG_NOT_OAUTH:Ljava/lang/String; = "d"

.field public static final TYPE_FROM_HPM:Ljava/lang/String; = "6"

.field public static final TYPE_FROM_JSAPI:Ljava/lang/String; = "5"

.field public static final TYPE_FROM_UNAUTHORIZED:Ljava/lang/String; = "8"

.field public static final TYPE_FROM_WHITE_DOMAIN:Ljava/lang/String; = "7"

.field public static final TYPE_HPM_UPLOAD:Ljava/lang/String; = "r"

.field public static final TYPE_JS_ERROR:Ljava/lang/String; = "o"

.field public static final TYPE_JS_REPORT:Ljava/lang/String; = "g"

.field public static final TYPE_LONG_RENDER:Ljava/lang/String; = "f"

.field public static final TYPE_LWP_ERROR:Ljava/lang/String; = "m"

.field public static final TYPE_MICROAPP_USABILITY:Ljava/lang/String; = "n"

.field public static final TYPE_OAUTH:Ljava/lang/String; = "c"

.field public static final TYPE_OFFLINE_TASK:Ljava/lang/String; = "9"

.field public static final TYPE_OPEN_WEBVIEW_BLANK:Ljava/lang/String; = "3"

.field public static final TYPE_OPEN_WEBVIEW_FAIL:Ljava/lang/String; = "4"

.field public static final TYPE_OPEN_WEBVIEW_NO_BLANK:Ljava/lang/String; = "10"

.field public static final TYPE_PAGE_ERROR:Ljava/lang/String; = "e"

.field public static final TYPE_PAGE_WRONG:Ljava/lang/String; = "k"

.field public static final TYPE_PARSE_ALIPAY_PACKAGE_ERROR:Ljava/lang/String; = "v"

.field public static final TYPE_SAFE_TUNNEL_LWP:Ljava/lang/String; = "m"

.field public static final TYPE_SSL_ERROR:Ljava/lang/String; = "2"

.field public static final TYPE_UNOPEN:Ljava/lang/String; = "1"

.field public static final TYPE_WEEX_ERROR:Ljava/lang/String; = "p"

.field public static final TYPE_WEEX_PACKAGE_ERROR:Ljava/lang/String; = "s"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lgvi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgvi;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authFailWarn(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    return-void
.end method

.method public authFailWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 133
    return-void
.end method

.method public configNoAuthWarn(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 135
    return-void
.end method

.method public downloadAlipayPackageError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "miniAppId"    # Ljava/lang/String;

    .prologue
    .line 175
    return-void
.end method

.method public downloadWXMiniPackageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;

    .prologue
    .line 167
    return-void
.end method

.method public fetchAlipayPackageConfigError(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 173
    return-void
.end method

.method public hpmUpload(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 163
    return-void
.end method

.method public jsConfigFailWarn(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 127
    return-void
.end method

.method public jsConfigFailWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 129
    return-void
.end method

.method public jsErrorWarn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "sourceId"    # Ljava/lang/String;
    .param p4, "lineNumber"    # I

    .prologue
    .line 157
    return-void
.end method

.method public jsReportWarn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "report"    # Ljava/lang/String;

    .prologue
    .line 145
    return-void
.end method

.method public longRenderWarn(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 141
    return-void
.end method

.method public longRenderWarn(Ljava/lang/String;J)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 143
    return-void
.end method

.method public microAppUsabilityWarn(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 155
    return-void
.end method

.method public miniAppBlankError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "miniAppId"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorType"    # Ljava/lang/String;

    .prologue
    .line 171
    return-void
.end method

.method public miniAppHttpRequestApiError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "miniAppId"    # Ljava/lang/String;

    .prologue
    .line 177
    return-void
.end method

.method public openWebViewBlankWarn(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isBlank"    # Z

    .prologue
    .line 123
    return-void
.end method

.method public openWebViewFailWarn(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    return-void
.end method

.method public openWebViewNewBlankWarn(Ljava/lang/String;ZLjava/util/Map;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isBlank"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p3, "warningMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public pageExceptionWarn(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 137
    return-void
.end method

.method public pageExceptionWarn(Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpCode"    # I

    .prologue
    .line 139
    return-void
.end method

.method public queryWXMiniPackageError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "appName"    # Ljava/lang/String;

    .prologue
    .line 165
    return-void
.end method

.method public ucFailWhenOpenMiniApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "miniAppId"    # Ljava/lang/String;
    .param p2, "errorType"    # Ljava/lang/String;

    .prologue
    .line 169
    return-void
.end method

.method public warn(IILjava/util/Map;)V
    .locals 0
    .param p1, "warningCode"    # I
    .param p2, "warningLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p3, "warningMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public warn(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "warningMessage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public warnAppOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "corpId"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "ocassion"    # Ljava/lang/String;

    .prologue
    .line 117
    return-void
.end method

.method public warnLwpError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorSource"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 161
    return-void
.end method

.method public warnSafeTunnelLwpError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorSource"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;

    .prologue
    .line 151
    return-void
.end method

.method public warnSafeTunnelLwpError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorSource"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "errorCode"    # Ljava/lang/String;
    .param p5, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 153
    return-void
.end method

.method public warnSslError(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "resUrl"    # Ljava/lang/String;
    .param p2, "mainUrl"    # Ljava/lang/String;
    .param p3, "resType"    # I

    .prologue
    .line 119
    return-void
.end method

.method public warnUnauthorized()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public warnUnauthorized(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 113
    return-void
.end method

.method public warnWebViewDead(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p2, "RecentUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public weexErrorWarn(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "exceptionTime"    # J
    .param p4, "viewCreatedTime"    # J

    .prologue
    .line 159
    return-void
.end method
