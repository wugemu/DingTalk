.class final enum Lcom/laiwang/protocol/android/ag$a;
.super Ljava/lang/Enum;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/android/ag$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/laiwang/protocol/android/ag$a;

.field public static final enum b:Lcom/laiwang/protocol/android/ag$a;

.field private static final synthetic d:[Lcom/laiwang/protocol/android/ag$a;


# instance fields
.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/laiwang/protocol/android/ag$a;

    const-string/jumbo v1, "CHUNK_ID"

    invoke-direct {v0, v1, v2, v2}, Lcom/laiwang/protocol/android/ag$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ag$a;->a:Lcom/laiwang/protocol/android/ag$a;

    .line 77
    new-instance v0, Lcom/laiwang/protocol/android/ag$a;

    const-string/jumbo v1, "CHUNK_TOTALSIZE"

    invoke-direct {v0, v1, v3, v3}, Lcom/laiwang/protocol/android/ag$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/android/ag$a;->b:Lcom/laiwang/protocol/android/ag$a;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/laiwang/protocol/android/ag$a;

    sget-object v1, Lcom/laiwang/protocol/android/ag$a;->a:Lcom/laiwang/protocol/android/ag$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/laiwang/protocol/android/ag$a;->b:Lcom/laiwang/protocol/android/ag$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/laiwang/protocol/android/ag$a;->d:[Lcom/laiwang/protocol/android/ag$a;

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
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lcom/laiwang/protocol/android/ag$a;->c:I

    .line 82
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/android/ag$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/laiwang/protocol/android/ag$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/ag$a;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/android/ag$a;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/laiwang/protocol/android/ag$a;->d:[Lcom/laiwang/protocol/android/ag$a;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/android/ag$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/android/ag$a;

    return-object v0
.end method
