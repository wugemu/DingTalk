.class final enum Lcom/laiwang/protocol/android/ai$a;
.super Ljava/lang/Enum;
.source "HelloResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/android/ai$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/laiwang/protocol/android/ai$a;

.field public static final enum b:Lcom/laiwang/protocol/android/ai$a;

.field public static final enum c:Lcom/laiwang/protocol/android/ai$a;

.field public static final enum d:Lcom/laiwang/protocol/android/ai$a;

.field public static final enum e:Lcom/laiwang/protocol/android/ai$a;

.field private static final synthetic g:[Lcom/laiwang/protocol/android/ai$a;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/laiwang/protocol/android/ai$a;

    const-string/jumbo v1, "SYMMETRICKEY"

    invoke-direct {v0, v1, v3, v3}, Lcom/laiwang/protocol/android/ai$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ai$a;->a:Lcom/laiwang/protocol/android/ai$a;

    .line 34
    new-instance v0, Lcom/laiwang/protocol/android/ai$a;

    const-string/jumbo v1, "SESSIONID"

    invoke-direct {v0, v1, v4, v4}, Lcom/laiwang/protocol/android/ai$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ai$a;->b:Lcom/laiwang/protocol/android/ai$a;

    .line 35
    new-instance v0, Lcom/laiwang/protocol/android/ai$a;

    const-string/jumbo v1, "RESULT"

    const/16 v2, 0x82

    invoke-direct {v0, v1, v5, v2}, Lcom/laiwang/protocol/android/ai$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ai$a;->c:Lcom/laiwang/protocol/android/ai$a;

    .line 36
    new-instance v0, Lcom/laiwang/protocol/android/ai$a;

    const-string/jumbo v1, "EXPIRE_TIME"

    const/16 v2, 0x81

    invoke-direct {v0, v1, v6, v2}, Lcom/laiwang/protocol/android/ai$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ai$a;->d:Lcom/laiwang/protocol/android/ai$a;

    .line 37
    new-instance v0, Lcom/laiwang/protocol/android/ai$a;

    const-string/jumbo v1, "SESSION_COOKIE"

    const/16 v2, 0x83

    invoke-direct {v0, v1, v7, v2}, Lcom/laiwang/protocol/android/ai$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ai$a;->e:Lcom/laiwang/protocol/android/ai$a;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/laiwang/protocol/android/ai$a;

    sget-object v1, Lcom/laiwang/protocol/android/ai$a;->a:Lcom/laiwang/protocol/android/ai$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/laiwang/protocol/android/ai$a;->b:Lcom/laiwang/protocol/android/ai$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laiwang/protocol/android/ai$a;->c:Lcom/laiwang/protocol/android/ai$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/protocol/android/ai$a;->d:Lcom/laiwang/protocol/android/ai$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/laiwang/protocol/android/ai$a;->e:Lcom/laiwang/protocol/android/ai$a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/laiwang/protocol/android/ai$a;->g:[Lcom/laiwang/protocol/android/ai$a;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/laiwang/protocol/android/ai$a;->f:I

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/laiwang/protocol/android/ai$a;)I
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/android/ai$a;

    .prologue
    .line 32
    iget v0, p0, Lcom/laiwang/protocol/android/ai$a;->f:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/android/ai$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/laiwang/protocol/android/ai$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/ai$a;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/android/ai$a;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/laiwang/protocol/android/ai$a;->g:[Lcom/laiwang/protocol/android/ai$a;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/android/ai$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/android/ai$a;

    return-object v0
.end method
