.class public final enum Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;
.super Ljava/lang/Enum;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/inspector/protocol/module/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

.field public static final enum DOCUMENT:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

.field public static final enum FONT:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

.field public static final enum IMAGE:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

.field public static final enum OTHER:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

.field public static final enum SCRIPT:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

.field public static final enum STYLESHEET:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

.field public static final enum WEBSOCKET:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

.field public static final enum XHR:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;


# instance fields
.field private final mProtocolValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 333
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    const-string/jumbo v1, "DOCUMENT"

    const-string/jumbo v2, "Document"

    invoke-direct {v0, v1, v4, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->DOCUMENT:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    .line 334
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    const-string/jumbo v1, "STYLESHEET"

    const-string/jumbo v2, "Stylesheet"

    invoke-direct {v0, v1, v5, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->STYLESHEET:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    .line 335
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    const-string/jumbo v1, "IMAGE"

    const-string/jumbo v2, "Image"

    invoke-direct {v0, v1, v6, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->IMAGE:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    .line 336
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    const-string/jumbo v1, "FONT"

    const-string/jumbo v2, "Font"

    invoke-direct {v0, v1, v7, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->FONT:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    .line 337
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    const-string/jumbo v1, "SCRIPT"

    const-string/jumbo v2, "Script"

    invoke-direct {v0, v1, v8, v2}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->SCRIPT:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    .line 338
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    const-string/jumbo v1, "XHR"

    const/4 v2, 0x5

    const-string/jumbo v3, "XHR"

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->XHR:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    .line 339
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    const-string/jumbo v1, "WEBSOCKET"

    const/4 v2, 0x6

    const-string/jumbo v3, "WebSocket"

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->WEBSOCKET:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    .line 340
    new-instance v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x7

    const-string/jumbo v3, "Other"

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->OTHER:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    .line 332
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->DOCUMENT:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->STYLESHEET:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->IMAGE:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->FONT:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->SCRIPT:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->XHR:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->WEBSOCKET:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->OTHER:Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->$VALUES:[Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "protocolValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 344
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 345
    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->mProtocolValue:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 332
    const-class v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->$VALUES:[Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    invoke-virtual {v0}, [Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;

    return-object v0
.end method


# virtual methods
.method public final getProtocolValue()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonValue;
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/protocol/module/Page$ResourceType;->mProtocolValue:Ljava/lang/String;

    return-object v0
.end method
