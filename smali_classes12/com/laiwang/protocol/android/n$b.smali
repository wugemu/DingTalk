.class public final enum Lcom/laiwang/protocol/android/n$b;
.super Ljava/lang/Enum;
.source "LwpRequestConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/android/n$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/laiwang/protocol/android/n$b;

.field public static final enum b:Lcom/laiwang/protocol/android/n$b;

.field public static final enum c:Lcom/laiwang/protocol/android/n$b;

.field public static final enum d:Lcom/laiwang/protocol/android/n$b;

.field private static final synthetic f:[Lcom/laiwang/protocol/android/n$b;


# instance fields
.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 678
    new-instance v0, Lcom/laiwang/protocol/android/n$b;

    const-string/jumbo v1, "DISCONNECTED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/laiwang/protocol/android/n$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/n$b;->a:Lcom/laiwang/protocol/android/n$b;

    new-instance v0, Lcom/laiwang/protocol/android/n$b;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v4, v3}, Lcom/laiwang/protocol/android/n$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/n$b;->b:Lcom/laiwang/protocol/android/n$b;

    new-instance v0, Lcom/laiwang/protocol/android/n$b;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v5, v4}, Lcom/laiwang/protocol/android/n$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/n$b;->c:Lcom/laiwang/protocol/android/n$b;

    new-instance v0, Lcom/laiwang/protocol/android/n$b;

    const-string/jumbo v1, "AUTHED"

    invoke-direct {v0, v1, v6, v5}, Lcom/laiwang/protocol/android/n$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/n$b;->d:Lcom/laiwang/protocol/android/n$b;

    .line 677
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/laiwang/protocol/android/n$b;

    sget-object v1, Lcom/laiwang/protocol/android/n$b;->a:Lcom/laiwang/protocol/android/n$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/laiwang/protocol/android/n$b;->b:Lcom/laiwang/protocol/android/n$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laiwang/protocol/android/n$b;->c:Lcom/laiwang/protocol/android/n$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/protocol/android/n$b;->d:Lcom/laiwang/protocol/android/n$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/laiwang/protocol/android/n$b;->f:[Lcom/laiwang/protocol/android/n$b;

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
    .line 681
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 682
    iput p3, p0, Lcom/laiwang/protocol/android/n$b;->e:I

    .line 683
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/android/n$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 677
    const-class v0, Lcom/laiwang/protocol/android/n$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/n$b;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/android/n$b;
    .locals 1

    .prologue
    .line 677
    sget-object v0, Lcom/laiwang/protocol/android/n$b;->f:[Lcom/laiwang/protocol/android/n$b;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/android/n$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/android/n$b;

    return-object v0
.end method
