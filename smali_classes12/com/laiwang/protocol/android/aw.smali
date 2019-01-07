.class public final enum Lcom/laiwang/protocol/android/aw;
.super Ljava/lang/Enum;
.source "ConnectType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/android/aw;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/laiwang/protocol/android/aw;

.field public static final enum b:Lcom/laiwang/protocol/android/aw;

.field private static final synthetic c:[Lcom/laiwang/protocol/android/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/laiwang/protocol/android/aw;

    const-string/jumbo v1, "MASTER"

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/android/aw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/aw;->a:Lcom/laiwang/protocol/android/aw;

    new-instance v0, Lcom/laiwang/protocol/android/aw;

    const-string/jumbo v1, "SLAVER"

    invoke-direct {v0, v1, v3}, Lcom/laiwang/protocol/android/aw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/aw;->b:Lcom/laiwang/protocol/android/aw;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/laiwang/protocol/android/aw;

    sget-object v1, Lcom/laiwang/protocol/android/aw;->a:Lcom/laiwang/protocol/android/aw;

    aput-object v1, v0, v2

    sget-object v1, Lcom/laiwang/protocol/android/aw;->b:Lcom/laiwang/protocol/android/aw;

    aput-object v1, v0, v3

    sput-object v0, Lcom/laiwang/protocol/android/aw;->c:[Lcom/laiwang/protocol/android/aw;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/android/aw;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/laiwang/protocol/android/aw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/aw;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/android/aw;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/laiwang/protocol/android/aw;->c:[Lcom/laiwang/protocol/android/aw;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/android/aw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/android/aw;

    return-object v0
.end method
