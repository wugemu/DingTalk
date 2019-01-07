.class public final enum Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;
.super Ljava/lang/Enum;
.source "WSResultEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

.field public static final enum CANNOT_SEND_UNTIL_CONNECTION_IS_OPEN:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

.field public static final enum CONNECTION_TIMEOUT:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

.field public static final enum ERROR_WRITING_TO_STREAM:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

.field public static final enum INVALID_SEC_WS_ACCEPT_RESP:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

.field public static final enum LAST_ITEM:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

.field private static final MSG_TO_RESULT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum SERVER_SPEC_SEC_WS_PROTO_NOT_REQ:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

.field public static final enum SSL_HANDSHAKE_ERROR:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

.field public static final enum UNABLE_ALLOC_MEM_TO_READ:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

.field public static final enum UNKNOW_ERROR:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

.field public static final enum URL_IS_NULL_MSG:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

.field public static final enum URL_NOT_WELL_FORMAT:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

.field public static final enum URL_NOT_WS_OR_WSS:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

.field public static final enum WEBSOCKET_IS_CONNECTED_MSG:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;


# instance fields
.field private errCode:I

.field private errMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 14
    new-instance v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    const-string/jumbo v1, "UNKNOW_ERROR"

    const/4 v2, 0x0

    const-string/jumbo v3, "\u672a\u77e5\u9519\u8bef."

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->UNKNOW_ERROR:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    .line 16
    new-instance v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    const-string/jumbo v1, "WEBSOCKET_IS_CONNECTED_MSG"

    const-string/jumbo v2, "\u5f53\u524d\u5b58\u5728\u4e00\u4e2a\u5df2\u6709\u7684\u8fde\u63a5."

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->WEBSOCKET_IS_CONNECTED_MSG:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    .line 18
    new-instance v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    const-string/jumbo v1, "URL_IS_NULL_MSG"

    const-string/jumbo v2, "URL \u4e3a\u7a7a."

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->URL_IS_NULL_MSG:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    .line 20
    new-instance v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    const-string/jumbo v1, "URL_NOT_WELL_FORMAT"

    const-string/jumbo v2, "URL \u683c\u5f0f\u4e0d\u5408\u6cd5."

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->URL_NOT_WELL_FORMAT:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    .line 22
    new-instance v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    const-string/jumbo v1, "URL_NOT_WS_OR_WSS"

    const-string/jumbo v2, "URL \u5730\u5740\u4e0d\u662f ws \u6216\u8005 wss."

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->URL_NOT_WS_OR_WSS:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    .line 24
    new-instance v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    const/4 v2, 0x6

    const-string/jumbo v3, "\u5efa\u8fde\u8d85\u65f6."

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->CONNECTION_TIMEOUT:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    .line 26
    new-instance v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    const-string/jumbo v1, "SSL_HANDSHAKE_ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string/jumbo v4, "SSL \u63e1\u624b\u5931\u8d25."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->SSL_HANDSHAKE_ERROR:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    .line 28
    new-instance v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    const-string/jumbo v1, "INVALID_SEC_WS_ACCEPT_RESP"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string/jumbo v4, "Invalid Sec-WebSocket-Accept response."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->INVALID_SEC_WS_ACCEPT_RESP:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    .line 30
    new-instance v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    const-string/jumbo v1, "SERVER_SPEC_SEC_WS_PROTO_NOT_REQ"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string/jumbo v4, "Server specified Sec-WebSocket-Protocol that wasn\'t requested."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->SERVER_SPEC_SEC_WS_PROTO_NOT_REQ:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    .line 32
    new-instance v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    const-string/jumbo v1, "CANNOT_SEND_UNTIL_CONNECTION_IS_OPEN"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string/jumbo v4, "\u6ca1\u6709\u5efa\u8fde\u6210\u529f\u4e4b\u524d\u65e0\u6cd5\u53d1\u9001\u6d88\u606f."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->CANNOT_SEND_UNTIL_CONNECTION_IS_OPEN:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    .line 34
    new-instance v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    const-string/jumbo v1, "ERROR_WRITING_TO_STREAM"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string/jumbo v4, "Error writing to stream."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->ERROR_WRITING_TO_STREAM:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    .line 36
    new-instance v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    const-string/jumbo v1, "UNABLE_ALLOC_MEM_TO_READ"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string/jumbo v4, "\u4e0d\u80fd\u5206\u914d\u5185\u5b58\u7ed9\u5f53\u524d\u7684 Websocket \u8fde\u63a5\u4f7f\u7528."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->UNABLE_ALLOC_MEM_TO_READ:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    .line 41
    new-instance v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    const-string/jumbo v1, "LAST_ITEM"

    const/16 v2, 0xc

    const v3, 0x186a0

    const-string/jumbo v4, "$v"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->LAST_ITEM:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    .line 12
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->UNKNOW_ERROR:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->WEBSOCKET_IS_CONNECTED_MSG:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->URL_IS_NULL_MSG:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->URL_NOT_WELL_FORMAT:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->URL_NOT_WS_OR_WSS:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->CONNECTION_TIMEOUT:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->SSL_HANDSHAKE_ERROR:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->INVALID_SEC_WS_ACCEPT_RESP:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->SERVER_SPEC_SEC_WS_PROTO_NOT_REQ:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->CANNOT_SEND_UNTIL_CONNECTION_IS_OPEN:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->ERROR_WRITING_TO_STREAM:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->UNABLE_ALLOC_MEM_TO_READ:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->LAST_ITEM:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->$VALUES:[Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    sput-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->MSG_TO_RESULT_MAP:Ljava/util/Map;

    const-string/jumbo v1, "Payloadsize is to big..."

    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->UNABLE_ALLOC_MEM_TO_READ:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->MSG_TO_RESULT_MAP:Ljava/util/Map;

    const-string/jumbo v1, "Pending\u00a0frame\u00a0exploded"

    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->UNABLE_ALLOC_MEM_TO_READ:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->MSG_TO_RESULT_MAP:Ljava/util/Map;

    const-string/jumbo v1, "Connection\u00a0time\u00a0out"

    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->CONNECTION_TIMEOUT:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->MSG_TO_RESULT_MAP:Ljava/util/Map;

    const-string/jumbo v1, "Invalid State: Cannot send until connection is open."

    sget-object v2, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->CANNOT_SEND_UNTIL_CONNECTION_IS_OPEN:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "errCode"    # I
    .param p4, "errMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->errCode:I

    .line 59
    iput-object p4, p0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->errMsg:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static final getResultEnumByWsMsg(Ljava/lang/String;)Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v1, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->MSG_TO_RESULT_MAP:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    .line 72
    .local v0, "wsResultEnum":Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;
    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->UNKNOW_ERROR:Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    .end local v0    # "wsResultEnum":Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->$VALUES:[Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    invoke-virtual {v0}, [Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;

    return-object v0
.end method


# virtual methods
.method public final getErrCode()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->errCode:I

    return v0
.end method

.method public final getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/ws/WSResultEnum;->errMsg:Ljava/lang/String;

    return-object v0
.end method
