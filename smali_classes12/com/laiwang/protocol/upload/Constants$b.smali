.class public final enum Lcom/laiwang/protocol/upload/Constants$b;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/upload/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/upload/Constants$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/laiwang/protocol/upload/Constants$b;

.field public static final enum b:Lcom/laiwang/protocol/upload/Constants$b;

.field public static final enum c:Lcom/laiwang/protocol/upload/Constants$b;

.field public static final enum d:Lcom/laiwang/protocol/upload/Constants$b;

.field public static final enum e:Lcom/laiwang/protocol/upload/Constants$b;

.field private static final synthetic g:[Lcom/laiwang/protocol/upload/Constants$b;


# instance fields
.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/laiwang/protocol/upload/Constants$b;

    const-string/jumbo v1, "NO_AUTH"

    invoke-direct {v0, v1, v2, v2}, Lcom/laiwang/protocol/upload/Constants$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/upload/Constants$b;->a:Lcom/laiwang/protocol/upload/Constants$b;

    .line 51
    new-instance v0, Lcom/laiwang/protocol/upload/Constants$b;

    const-string/jumbo v1, "STRICT_AUTH"

    invoke-direct {v0, v1, v3, v3}, Lcom/laiwang/protocol/upload/Constants$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/upload/Constants$b;->b:Lcom/laiwang/protocol/upload/Constants$b;

    .line 52
    new-instance v0, Lcom/laiwang/protocol/upload/Constants$b;

    const-string/jumbo v1, "ONLY_LOGIN_AUTH"

    invoke-direct {v0, v1, v4, v4}, Lcom/laiwang/protocol/upload/Constants$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/upload/Constants$b;->c:Lcom/laiwang/protocol/upload/Constants$b;

    .line 53
    new-instance v0, Lcom/laiwang/protocol/upload/Constants$b;

    const-string/jumbo v1, "ONLY_INTERNAL_AUTH"

    invoke-direct {v0, v1, v5, v5}, Lcom/laiwang/protocol/upload/Constants$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/upload/Constants$b;->d:Lcom/laiwang/protocol/upload/Constants$b;

    .line 54
    new-instance v0, Lcom/laiwang/protocol/upload/Constants$b;

    const-string/jumbo v1, "TEMP_AUTH"

    invoke-direct {v0, v1, v6, v6}, Lcom/laiwang/protocol/upload/Constants$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/upload/Constants$b;->e:Lcom/laiwang/protocol/upload/Constants$b;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/laiwang/protocol/upload/Constants$b;

    sget-object v1, Lcom/laiwang/protocol/upload/Constants$b;->a:Lcom/laiwang/protocol/upload/Constants$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/laiwang/protocol/upload/Constants$b;->b:Lcom/laiwang/protocol/upload/Constants$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/laiwang/protocol/upload/Constants$b;->c:Lcom/laiwang/protocol/upload/Constants$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/laiwang/protocol/upload/Constants$b;->d:Lcom/laiwang/protocol/upload/Constants$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/laiwang/protocol/upload/Constants$b;->e:Lcom/laiwang/protocol/upload/Constants$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/laiwang/protocol/upload/Constants$b;->g:[Lcom/laiwang/protocol/upload/Constants$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/laiwang/protocol/upload/Constants$b;->f:I

    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/upload/Constants$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/laiwang/protocol/upload/Constants$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/upload/Constants$b;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/upload/Constants$b;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/laiwang/protocol/upload/Constants$b;->g:[Lcom/laiwang/protocol/upload/Constants$b;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/upload/Constants$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/upload/Constants$b;

    return-object v0
.end method
