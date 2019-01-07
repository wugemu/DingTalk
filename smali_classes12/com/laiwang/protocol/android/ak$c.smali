.class final enum Lcom/laiwang/protocol/android/ak$c;
.super Ljava/lang/Enum;
.source "Packet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/android/ak$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/laiwang/protocol/android/ak$c;

.field public static final enum b:Lcom/laiwang/protocol/android/ak$c;

.field public static final enum c:Lcom/laiwang/protocol/android/ak$c;

.field public static final enum d:Lcom/laiwang/protocol/android/ak$c;

.field public static final enum e:Lcom/laiwang/protocol/android/ak$c;

.field private static final synthetic g:[Lcom/laiwang/protocol/android/ak$c;


# instance fields
.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 247
    new-instance v0, Lcom/laiwang/protocol/android/ak$c;

    const-string/jumbo v1, "HELLO_RESPONSE"

    invoke-direct {v0, v1, v3, v3}, Lcom/laiwang/protocol/android/ak$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ak$c;->a:Lcom/laiwang/protocol/android/ak$c;

    .line 248
    new-instance v0, Lcom/laiwang/protocol/android/ak$c;

    const-string/jumbo v1, "HELLO_REQUEST"

    invoke-direct {v0, v1, v4, v4}, Lcom/laiwang/protocol/android/ak$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ak$c;->b:Lcom/laiwang/protocol/android/ak$c;

    .line 249
    new-instance v0, Lcom/laiwang/protocol/android/ak$c;

    const-string/jumbo v1, "DATA"

    invoke-direct {v0, v1, v7, v5}, Lcom/laiwang/protocol/android/ak$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ak$c;->c:Lcom/laiwang/protocol/android/ak$c;

    .line 250
    new-instance v0, Lcom/laiwang/protocol/android/ak$c;

    const-string/jumbo v1, "PING"

    invoke-direct {v0, v1, v5, v6}, Lcom/laiwang/protocol/android/ak$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ak$c;->d:Lcom/laiwang/protocol/android/ak$c;

    .line 251
    new-instance v0, Lcom/laiwang/protocol/android/ak$c;

    const-string/jumbo v1, "PONG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/laiwang/protocol/android/ak$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ak$c;->e:Lcom/laiwang/protocol/android/ak$c;

    .line 246
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/laiwang/protocol/android/ak$c;

    sget-object v1, Lcom/laiwang/protocol/android/ak$c;->a:Lcom/laiwang/protocol/android/ak$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/laiwang/protocol/android/ak$c;->b:Lcom/laiwang/protocol/android/ak$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laiwang/protocol/android/ak$c;->c:Lcom/laiwang/protocol/android/ak$c;

    aput-object v1, v0, v7

    sget-object v1, Lcom/laiwang/protocol/android/ak$c;->d:Lcom/laiwang/protocol/android/ak$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/protocol/android/ak$c;->e:Lcom/laiwang/protocol/android/ak$c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/laiwang/protocol/android/ak$c;->g:[Lcom/laiwang/protocol/android/ak$c;

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
    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 254
    iput p3, p0, Lcom/laiwang/protocol/android/ak$c;->f:I

    .line 255
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/android/ak$c;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 246
    const-class v0, Lcom/laiwang/protocol/android/ak$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/ak$c;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/android/ak$c;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/laiwang/protocol/android/ak$c;->g:[Lcom/laiwang/protocol/android/ak$c;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/android/ak$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/android/ak$c;

    return-object v0
.end method
