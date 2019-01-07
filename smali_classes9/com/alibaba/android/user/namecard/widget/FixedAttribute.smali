.class public final enum Lcom/alibaba/android/user/namecard/widget/FixedAttribute;
.super Ljava/lang/Enum;
.source "FixedAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/namecard/widget/FixedAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

.field public static final enum HEIGHT:Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

.field public static final enum WIDTH:Lcom/alibaba/android/user/namecard/widget/FixedAttribute;


# instance fields
.field final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    const-string/jumbo v1, "HEIGHT"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;->HEIGHT:Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    new-instance v0, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    const-string/jumbo v1, "WIDTH"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;->WIDTH:Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    sget-object v1, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;->HEIGHT:Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;->WIDTH:Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;->$VALUES:[Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;->id:I

    .line 9
    return-void
.end method

.method public static fromId(I)Lcom/alibaba/android/user/namecard/widget/FixedAttribute;
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 12
    invoke-static {}, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;->values()[Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 13
    .local v0, "f":Lcom/alibaba/android/user/namecard/widget/FixedAttribute;
    iget v4, v0, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;->id:I

    if-ne v4, p0, :cond_0

    return-object v0

    .line 12
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    .end local v0    # "f":Lcom/alibaba/android/user/namecard/widget/FixedAttribute;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/namecard/widget/FixedAttribute;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/namecard/widget/FixedAttribute;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/alibaba/android/user/namecard/widget/FixedAttribute;->$VALUES:[Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/namecard/widget/FixedAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/namecard/widget/FixedAttribute;

    return-object v0
.end method
