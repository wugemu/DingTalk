.class public final enum Lcom/squareup/okhttp/ws/WebSocket$PayloadType;
.super Ljava/lang/Enum;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/ws/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayloadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/okhttp/ws/WebSocket$PayloadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

.field public static final enum BINARY:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

.field public static final enum TEXT:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;->TEXT:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    .line 29
    new-instance v0, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    const-string/jumbo v1, "BINARY"

    invoke-direct {v0, v1, v3}, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;->BINARY:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    sget-object v1, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;->TEXT:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;->BINARY:Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;->$VALUES:[Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/okhttp/ws/WebSocket$PayloadType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    return-object v0
.end method

.method public static values()[Lcom/squareup/okhttp/ws/WebSocket$PayloadType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/squareup/okhttp/ws/WebSocket$PayloadType;->$VALUES:[Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    invoke-virtual {v0}, [Lcom/squareup/okhttp/ws/WebSocket$PayloadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/okhttp/ws/WebSocket$PayloadType;

    return-object v0
.end method
