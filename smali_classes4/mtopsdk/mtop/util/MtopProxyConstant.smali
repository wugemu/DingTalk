.class public Lmtopsdk/mtop/util/MtopProxyConstant;
.super Ljava/lang/Object;
.source "MtopProxyConstant.java"


# static fields
.field public static BASE_URL_ENV_ONLINE:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static BASE_URL_ENV_PREPARE:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static BASE_URL_ENV_TEST:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static BASE_URL_ENV_TEST_SANDBOX:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MTOP_BIZID:I = 0x1003

.field public static defaultEnvBaseUrls:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const-string/jumbo v0, "acs.m.taobao.com/"

    sput-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->BASE_URL_ENV_ONLINE:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "acs.wapa.taobao.com/"

    sput-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->BASE_URL_ENV_PREPARE:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "acs.waptest.taobao.com/"

    sput-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->BASE_URL_ENV_TEST:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "api.waptest2nd.taobao.com/"

    sput-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->BASE_URL_ENV_TEST_SANDBOX:Ljava/lang/String;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 26
    sput-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->defaultEnvBaseUrls:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "acs.m.taobao.com/"

    aput-object v2, v0, v1

    .line 27
    sget-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->defaultEnvBaseUrls:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string/jumbo v2, "acs.wapa.taobao.com/"

    aput-object v2, v0, v1

    .line 28
    sget-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->defaultEnvBaseUrls:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string/jumbo v2, "acs.waptest.taobao.com/"

    aput-object v2, v0, v1

    .line 29
    sget-object v0, Lmtopsdk/mtop/util/MtopProxyConstant;->defaultEnvBaseUrls:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string/jumbo v2, "acs.waptest2nd.taobao.com/"

    aput-object v2, v0, v1

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
