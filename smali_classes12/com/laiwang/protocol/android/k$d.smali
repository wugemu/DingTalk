.class public final enum Lcom/laiwang/protocol/android/k$d;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/android/k$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/laiwang/protocol/android/k$d;

.field public static final enum b:Lcom/laiwang/protocol/android/k$d;

.field public static final enum c:Lcom/laiwang/protocol/android/k$d;

.field public static final enum d:Lcom/laiwang/protocol/android/k$d;

.field public static final enum e:Lcom/laiwang/protocol/android/k$d;

.field private static final synthetic g:[Lcom/laiwang/protocol/android/k$d;


# instance fields
.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    new-instance v0, Lcom/laiwang/protocol/android/k$d;

    const-string/jumbo v1, "CONNECTFAILED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/laiwang/protocol/android/k$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/k$d;->a:Lcom/laiwang/protocol/android/k$d;

    .line 165
    new-instance v0, Lcom/laiwang/protocol/android/k$d;

    const-string/jumbo v1, "INIT"

    invoke-direct {v0, v1, v4, v3}, Lcom/laiwang/protocol/android/k$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/k$d;->b:Lcom/laiwang/protocol/android/k$d;

    .line 169
    new-instance v0, Lcom/laiwang/protocol/android/k$d;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v5, v4}, Lcom/laiwang/protocol/android/k$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/k$d;->c:Lcom/laiwang/protocol/android/k$d;

    .line 173
    new-instance v0, Lcom/laiwang/protocol/android/k$d;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v6, v5}, Lcom/laiwang/protocol/android/k$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    .line 177
    new-instance v0, Lcom/laiwang/protocol/android/k$d;

    const-string/jumbo v1, "CLOSED"

    invoke-direct {v0, v1, v7, v6}, Lcom/laiwang/protocol/android/k$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/k$d;->e:Lcom/laiwang/protocol/android/k$d;

    .line 157
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/laiwang/protocol/android/k$d;

    sget-object v1, Lcom/laiwang/protocol/android/k$d;->a:Lcom/laiwang/protocol/android/k$d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/laiwang/protocol/android/k$d;->b:Lcom/laiwang/protocol/android/k$d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laiwang/protocol/android/k$d;->c:Lcom/laiwang/protocol/android/k$d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/protocol/android/k$d;->d:Lcom/laiwang/protocol/android/k$d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/laiwang/protocol/android/k$d;->e:Lcom/laiwang/protocol/android/k$d;

    aput-object v1, v0, v7

    sput-object v0, Lcom/laiwang/protocol/android/k$d;->g:[Lcom/laiwang/protocol/android/k$d;

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
    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 181
    iput p3, p0, Lcom/laiwang/protocol/android/k$d;->f:I

    .line 182
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/android/k$d;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 157
    const-class v0, Lcom/laiwang/protocol/android/k$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/k$d;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/android/k$d;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/laiwang/protocol/android/k$d;->g:[Lcom/laiwang/protocol/android/k$d;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/android/k$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/android/k$d;

    return-object v0
.end method
