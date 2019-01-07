.class public final enum Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;
.super Ljava/lang/Enum;
.source "WMLError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/common/WMLError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

.field public static final enum APP_CONFIG_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

.field public static final enum APP_INFO_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

.field public static final enum APP_UNZIP_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

.field public static final enum BAD_APP_CODE:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

.field public static final enum BAD_APP_CONFIG:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

.field public static final enum INVALID_APP_URL:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

.field public static final enum INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

.field public static final enum INVALID_ZCACHEKEY_AND_APP_URL:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

.field public static final enum JSON_PARSE_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

.field public static final enum PAGE_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

.field public static final enum PARAM_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

.field public static final enum ZCACHE_LOAD_APP_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

.field public static final enum ZCACHE_TIMEOUT_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;


# instance fields
.field public errorCode:Ljava/lang/String;

.field public errorMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 12
    new-instance v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    const-string/jumbo v1, "BAD_APP_CODE"

    const-string/jumbo v2, "AC_BAD_APP_CODE"

    const-string/jumbo v3, "\u975e\u6cd5\u7684\u7a0b\u5e8f\u7801"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->BAD_APP_CODE:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    .line 13
    new-instance v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    const-string/jumbo v1, "INVALID_APP_URL"

    const-string/jumbo v2, "AC_INVALID_APP_URL"

    const-string/jumbo v3, "\u7a0b\u5e8f\u5305\u65e0\u6cd5\u4e0b\u8f7d"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_APP_URL:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    .line 14
    new-instance v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    const-string/jumbo v1, "APP_CONFIG_NOT_FOUND"

    const-string/jumbo v2, "AC_APP_CONFIG_NOT_FOUND"

    const-string/jumbo v3, "\u7a0b\u5e8f\u5305\u7f3a\u5c11\u5fc5\u8981\u7684\u914d\u7f6e\u4fe1\u606f"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_CONFIG_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    .line 15
    new-instance v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    const-string/jumbo v1, "APP_INFO_NOT_FOUND"

    const-string/jumbo v2, "AC_APP_INFO_NOT_FOUND"

    const-string/jumbo v3, "\u7a0b\u5e8f\u5305\u7f3a\u5c11\u5fc5\u8981\u7684\u914d\u7f6e\u4fe1\u606f"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_INFO_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    .line 16
    new-instance v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    const-string/jumbo v1, "BAD_APP_CONFIG"

    const-string/jumbo v2, "AC_BAD_APP_CONFIG"

    const-string/jumbo v3, "\u7a0b\u5e8f\u5305\u89e3\u6790\u5931\u8d25"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->BAD_APP_CONFIG:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    .line 17
    new-instance v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    const-string/jumbo v1, "PAGE_NOT_FOUND"

    const/4 v2, 0x5

    const-string/jumbo v3, "AC_PAGE_NOT_FOUND"

    const-string/jumbo v4, "\u4e0d\u5b58\u5728\u7684\u9875\u9762\u8def\u5f84"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PAGE_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    .line 18
    new-instance v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    const-string/jumbo v1, "PARAM_ERROR"

    const/4 v2, 0x6

    const-string/jumbo v3, "AC_PARAM_ERROR"

    const-string/jumbo v4, "\u53c2\u6570\u4e3a\u7a7a\u6216\u89e3\u6790\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PARAM_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    .line 19
    new-instance v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    const-string/jumbo v1, "INVALID_OPERATION"

    const/4 v2, 0x7

    const-string/jumbo v3, "AC_INVALID_OPERATION"

    const-string/jumbo v4, "\u65e0\u6548\u7684\u64cd\u4f5c"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    .line 20
    new-instance v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    const-string/jumbo v1, "APP_UNZIP_ERROR"

    const/16 v2, 0x8

    const-string/jumbo v3, "AC_APP_UNZIP_ERROR"

    const-string/jumbo v4, "\u7a0b\u5e8f\u5305\u89e3\u538b\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_UNZIP_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    .line 21
    new-instance v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    const-string/jumbo v1, "JSON_PARSE_ERROR"

    const/16 v2, 0x9

    const-string/jumbo v3, "AC_JSON_PARSE_ERROR"

    const-string/jumbo v4, "\u8be5\u65b9\u6cd5\u5728\u5c0f\u7a0b\u5e8f\u5916\u8c03\u7528\u65e0\u6548"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->JSON_PARSE_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    .line 22
    new-instance v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    const-string/jumbo v1, "ZCACHE_LOAD_APP_ERROR"

    const/16 v2, 0xa

    const-string/jumbo v3, "AC_ZCACHE_LOAD_APP_ERROR"

    const-string/jumbo v4, "zcache\u52a0\u8f7d\u5c0f\u7a0b\u5e8f\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->ZCACHE_LOAD_APP_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    .line 23
    new-instance v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    const-string/jumbo v1, "ZCACHE_TIMEOUT_ERROR"

    const/16 v2, 0xb

    const-string/jumbo v3, "AC_ZCACHE_TIMEOUT_ERROR"

    const-string/jumbo v4, "zcache\u52a0\u8f7d\u5c0f\u7a0b\u5e8f\u8d85\u65f6"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->ZCACHE_TIMEOUT_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    .line 24
    new-instance v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    const-string/jumbo v1, "INVALID_ZCACHEKEY_AND_APP_URL"

    const/16 v2, 0xc

    const-string/jumbo v3, "AC_INVALID_ZCACHEKEY_AND_APP_URL"

    const-string/jumbo v4, "zcachekey\u548czipurl\u90fd\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_ZCACHEKEY_AND_APP_URL:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    .line 10
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    sget-object v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->BAD_APP_CODE:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_APP_URL:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_CONFIG_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_INFO_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->BAD_APP_CONFIG:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PAGE_NOT_FOUND:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->PARAM_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_OPERATION:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->APP_UNZIP_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->JSON_PARSE_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->ZCACHE_LOAD_APP_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->ZCACHE_TIMEOUT_ERROR:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->INVALID_ZCACHEKEY_AND_APP_URL:Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->$VALUES:[Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorMsg:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->$VALUES:[Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    invoke-virtual {v0}, [Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;

    return-object v0
.end method


# virtual methods
.method public final toJson()Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/common/WMLError$ErrorType;->errorMsg:Ljava/lang/String;

    .line 1041
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1042
    const-string/jumbo v3, "errorCode"

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    const-string/jumbo v0, "errorMsg"

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-object v2
.end method
