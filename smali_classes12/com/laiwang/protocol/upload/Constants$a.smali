.class public final enum Lcom/laiwang/protocol/upload/Constants$a;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/upload/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/upload/Constants$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/laiwang/protocol/upload/Constants$a;

.field public static final enum b:Lcom/laiwang/protocol/upload/Constants$a;

.field public static final enum c:Lcom/laiwang/protocol/upload/Constants$a;

.field private static final synthetic e:[Lcom/laiwang/protocol/upload/Constants$a;


# instance fields
.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/laiwang/protocol/upload/Constants$a;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v2, v2}, Lcom/laiwang/protocol/upload/Constants$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/upload/Constants$a;->a:Lcom/laiwang/protocol/upload/Constants$a;

    .line 69
    new-instance v0, Lcom/laiwang/protocol/upload/Constants$a;

    const-string/jumbo v1, "CSPACE"

    invoke-direct {v0, v1, v3, v3}, Lcom/laiwang/protocol/upload/Constants$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/upload/Constants$a;->b:Lcom/laiwang/protocol/upload/Constants$a;

    .line 70
    new-instance v0, Lcom/laiwang/protocol/upload/Constants$a;

    const-string/jumbo v1, "AUTH"

    invoke-direct {v0, v1, v4, v4}, Lcom/laiwang/protocol/upload/Constants$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/protocol/upload/Constants$a;->c:Lcom/laiwang/protocol/upload/Constants$a;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/laiwang/protocol/upload/Constants$a;

    sget-object v1, Lcom/laiwang/protocol/upload/Constants$a;->a:Lcom/laiwang/protocol/upload/Constants$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/laiwang/protocol/upload/Constants$a;->b:Lcom/laiwang/protocol/upload/Constants$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/laiwang/protocol/upload/Constants$a;->c:Lcom/laiwang/protocol/upload/Constants$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/laiwang/protocol/upload/Constants$a;->e:[Lcom/laiwang/protocol/upload/Constants$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lcom/laiwang/protocol/upload/Constants$a;->d:I

    .line 76
    return-void
.end method

.method public static a(I)Lcom/laiwang/protocol/upload/Constants$a;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 83
    invoke-static {}, Lcom/laiwang/protocol/upload/Constants$a;->values()[Lcom/laiwang/protocol/upload/Constants$a;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 84
    .local v0, "t":Lcom/laiwang/protocol/upload/Constants$a;
    invoke-virtual {v0}, Lcom/laiwang/protocol/upload/Constants$a;->a()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 88
    .end local v0    # "t":Lcom/laiwang/protocol/upload/Constants$a;
    :goto_1
    return-object v0

    .line 83
    .restart local v0    # "t":Lcom/laiwang/protocol/upload/Constants$a;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "t":Lcom/laiwang/protocol/upload/Constants$a;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/upload/Constants$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v0, Lcom/laiwang/protocol/upload/Constants$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/upload/Constants$a;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/upload/Constants$a;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/laiwang/protocol/upload/Constants$a;->e:[Lcom/laiwang/protocol/upload/Constants$a;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/upload/Constants$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/upload/Constants$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/laiwang/protocol/upload/Constants$a;->d:I

    return v0
.end method
