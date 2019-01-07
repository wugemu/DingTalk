.class public final enum Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;
.super Ljava/lang/Enum;
.source "WebSocketCloseCodes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum CLOSE_ABNORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum CLOSE_NO_STATUS:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum CLOSE_PROTOCOL_ERROR:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum CLOSE_TOO_LARGE:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum CLOSE_UNSUPPORTED:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum INTERNAL_ERROR:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum MISSING_EXTENSION:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum POLICY_VIOLATION:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum SERVICE_RESTART:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum TLS_HANDSHAKE:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum TRY_AGAIN_LATER:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

.field public static final enum UNSUPPORTED_DATA:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string/jumbo v1, "CLOSE_NORMAL"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v4, v2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 28
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string/jumbo v1, "CLOSE_GOING_AWAY"

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v5, v2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 29
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string/jumbo v1, "CLOSE_PROTOCOL_ERROR"

    const/16 v2, 0x3ea

    invoke-direct {v0, v1, v6, v2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_PROTOCOL_ERROR:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 30
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string/jumbo v1, "CLOSE_UNSUPPORTED"

    const/16 v2, 0x3eb

    invoke-direct {v0, v1, v7, v2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_UNSUPPORTED:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 31
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string/jumbo v1, "CLOSE_NO_STATUS"

    const/16 v2, 0x3ed

    invoke-direct {v0, v1, v8, v2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NO_STATUS:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 32
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string/jumbo v1, "CLOSE_ABNORMAL"

    const/4 v2, 0x5

    const/16 v3, 0x3ee

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_ABNORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 33
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string/jumbo v1, "UNSUPPORTED_DATA"

    const/4 v2, 0x6

    const/16 v3, 0x3ef

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->UNSUPPORTED_DATA:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 34
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string/jumbo v1, "POLICY_VIOLATION"

    const/4 v2, 0x7

    const/16 v3, 0x3f0

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->POLICY_VIOLATION:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 35
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string/jumbo v1, "CLOSE_TOO_LARGE"

    const/16 v2, 0x8

    const/16 v3, 0x3f1

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_TOO_LARGE:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 36
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string/jumbo v1, "MISSING_EXTENSION"

    const/16 v2, 0x9

    const/16 v3, 0x3f2

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->MISSING_EXTENSION:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 37
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string/jumbo v1, "INTERNAL_ERROR"

    const/16 v2, 0xa

    const/16 v3, 0x3f3

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->INTERNAL_ERROR:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 38
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string/jumbo v1, "SERVICE_RESTART"

    const/16 v2, 0xb

    const/16 v3, 0x3f4

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->SERVICE_RESTART:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 39
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string/jumbo v1, "TRY_AGAIN_LATER"

    const/16 v2, 0xc

    const/16 v3, 0x3f5

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->TRY_AGAIN_LATER:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 40
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    const-string/jumbo v1, "TLS_HANDSHAKE"

    const/16 v2, 0xd

    const/16 v3, 0x3f7

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->TLS_HANDSHAKE:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    .line 26
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    sget-object v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_PROTOCOL_ERROR:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_UNSUPPORTED:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    aput-object v1, v0, v7

    sget-object v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NO_STATUS:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_ABNORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->UNSUPPORTED_DATA:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->POLICY_VIOLATION:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_TOO_LARGE:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->MISSING_EXTENSION:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->INTERNAL_ERROR:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->SERVICE_RESTART:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->TRY_AGAIN_LATER:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->TLS_HANDSHAKE:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->$VALUES:[Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->code:I

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->$VALUES:[Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v0}, [Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->code:I

    return v0
.end method
