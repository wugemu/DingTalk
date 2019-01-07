.class public final enum Lcom/taobao/accs/ErrorCode$INIT_ERROR;
.super Ljava/lang/Enum;
.source "ErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/ErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "INIT_ERROR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/accs/ErrorCode$INIT_ERROR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum APPKEY_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum APPRECEIVER_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum APPSECRET_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field private static final BASE_ORDINAL:I = 0x3e8

.field public static final enum CONN_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum NO_CONNECTTION:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum NO_NETWORK:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum REQ_TIME_OUT:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum SERVER_APPKEY_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum SERVER_DEVICEID_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum SERVER_PACKAGENAME_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum SERVER_TAIR_ERROR:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum SUCCESS:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

.field public static final enum UNKNOWN_ERROR:Lcom/taobao/accs/ErrorCode$INIT_ERROR;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const-string/jumbo v1, "NO_NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->NO_NETWORK:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 61
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const-string/jumbo v1, "APPKEY_NULL"

    invoke-direct {v0, v1, v4}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->APPKEY_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 62
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const-string/jumbo v1, "APPSECRET_NULL"

    invoke-direct {v0, v1, v5}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->APPSECRET_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 63
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const-string/jumbo v1, "APPRECEIVER_NULL"

    invoke-direct {v0, v1, v6}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->APPRECEIVER_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 64
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const-string/jumbo v1, "REQ_TIME_OUT"

    invoke-direct {v0, v1, v7}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->REQ_TIME_OUT:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 65
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const-string/jumbo v1, "CONN_INVALID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->CONN_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 66
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const-string/jumbo v1, "NO_CONNECTTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->NO_CONNECTTION:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 67
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const-string/jumbo v1, "UNKNOWN_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->UNKNOWN_ERROR:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 68
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const-string/jumbo v1, "SERVER_TAIR_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_TAIR_ERROR:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 69
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const-string/jumbo v1, "SERVER_DEVICEID_INVALID"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_DEVICEID_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 70
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const-string/jumbo v1, "SERVER_APPKEY_INVALID"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_APPKEY_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 71
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const-string/jumbo v1, "SERVER_PACKAGENAME_INVALID"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_PACKAGENAME_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 72
    new-instance v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    const-string/jumbo v1, "SUCCESS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SUCCESS:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    .line 59
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    sget-object v1, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->NO_NETWORK:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->APPKEY_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->APPSECRET_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->APPRECEIVER_NULL:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->REQ_TIME_OUT:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->CONN_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->NO_CONNECTTION:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->UNKNOWN_ERROR:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_TAIR_ERROR:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_DEVICEID_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_APPKEY_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SERVER_PACKAGENAME_INVALID:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->SUCCESS:Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->$VALUES:[Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/accs/ErrorCode$INIT_ERROR;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    return-object v0
.end method

.method public static values()[Lcom/taobao/accs/ErrorCode$INIT_ERROR;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->$VALUES:[Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    invoke-virtual {v0}, [Lcom/taobao/accs/ErrorCode$INIT_ERROR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/accs/ErrorCode$INIT_ERROR;

    return-object v0
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/taobao/accs/ErrorCode$INIT_ERROR;->ordinal()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method
