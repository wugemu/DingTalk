.class public final enum Lcom/laiwang/update/base/UpdateEnum;
.super Ljava/lang/Enum;
.source "UpdateEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/update/base/UpdateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laiwang/update/base/UpdateEnum;

.field public static final enum FORCE:Lcom/laiwang/update/base/UpdateEnum;

.field public static final enum ORDINARY:Lcom/laiwang/update/base/UpdateEnum;

.field public static final enum QUIESCE:Lcom/laiwang/update/base/UpdateEnum;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/laiwang/update/base/UpdateEnum;

    const-string/jumbo v1, "ORDINARY"

    invoke-direct {v0, v1, v2, v2}, Lcom/laiwang/update/base/UpdateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/update/base/UpdateEnum;->ORDINARY:Lcom/laiwang/update/base/UpdateEnum;

    .line 12
    new-instance v0, Lcom/laiwang/update/base/UpdateEnum;

    const-string/jumbo v1, "FORCE"

    invoke-direct {v0, v1, v3, v3}, Lcom/laiwang/update/base/UpdateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/update/base/UpdateEnum;->FORCE:Lcom/laiwang/update/base/UpdateEnum;

    .line 13
    new-instance v0, Lcom/laiwang/update/base/UpdateEnum;

    const-string/jumbo v1, "QUIESCE"

    invoke-direct {v0, v1, v4, v4}, Lcom/laiwang/update/base/UpdateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/laiwang/update/base/UpdateEnum;->QUIESCE:Lcom/laiwang/update/base/UpdateEnum;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/laiwang/update/base/UpdateEnum;

    sget-object v1, Lcom/laiwang/update/base/UpdateEnum;->ORDINARY:Lcom/laiwang/update/base/UpdateEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/laiwang/update/base/UpdateEnum;->FORCE:Lcom/laiwang/update/base/UpdateEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/laiwang/update/base/UpdateEnum;->QUIESCE:Lcom/laiwang/update/base/UpdateEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/laiwang/update/base/UpdateEnum;->$VALUES:[Lcom/laiwang/update/base/UpdateEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/laiwang/update/base/UpdateEnum;->value:I

    .line 18
    iput p3, p0, Lcom/laiwang/update/base/UpdateEnum;->value:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/update/base/UpdateEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/laiwang/update/base/UpdateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/update/base/UpdateEnum;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/update/base/UpdateEnum;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/laiwang/update/base/UpdateEnum;->$VALUES:[Lcom/laiwang/update/base/UpdateEnum;

    invoke-virtual {v0}, [Lcom/laiwang/update/base/UpdateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/update/base/UpdateEnum;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/laiwang/update/base/UpdateEnum;->value:I

    return v0
.end method
