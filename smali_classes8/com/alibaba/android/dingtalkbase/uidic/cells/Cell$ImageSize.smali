.class public final enum Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
.super Ljava/lang/Enum;
.source "Cell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

.field public static final enum SIZE_L:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

.field public static final enum SIZE_M:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

.field public static final enum SIZE_S:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

.field public static final enum SIZE_XL:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

.field public static final enum SIZE_XS:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

.field public static final enum SIZE_XXL:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

.field public static final enum SIZE_XXS:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    const-string/jumbo v1, "SIZE_XXS"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_XXS:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    .line 99
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    const-string/jumbo v1, "SIZE_XS"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_XS:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    .line 102
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    const-string/jumbo v1, "SIZE_S"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_S:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    .line 105
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    const-string/jumbo v1, "SIZE_M"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_M:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    .line 108
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    const-string/jumbo v1, "SIZE_L"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_L:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    .line 111
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    const-string/jumbo v1, "SIZE_XL"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_XL:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    .line 114
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    const-string/jumbo v1, "SIZE_XXL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_XXL:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    .line 92
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_XXS:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_XS:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_S:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_M:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_L:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_XL:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_XXL:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->$VALUES:[Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

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
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->value:I

    .line 120
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 132
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->values()[Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 133
    .local v0, "t":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->typeValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 137
    .end local v0    # "t":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
    :goto_1
    return-object v0

    .line 132
    .restart local v0    # "t":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "t":Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->SIZE_S:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    const-class v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->$VALUES:[Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;

    return-object v0
.end method


# virtual methods
.method public final typeValue()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$ImageSize;->value:I

    return v0
.end method
