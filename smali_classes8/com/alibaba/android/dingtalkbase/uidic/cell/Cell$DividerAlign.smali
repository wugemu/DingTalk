.class public final enum Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;
.super Ljava/lang/Enum;
.source "Cell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DividerAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

.field public static final enum AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

.field public static final enum AlignHeader:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

.field public static final enum AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    const-string/jumbo v1, "AlignParent"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    .line 36
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    const-string/jumbo v1, "AlignHeader"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignHeader:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    .line 39
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    const-string/jumbo v1, "AlignContent"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignHeader:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignContent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->$VALUES:[Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->value:I

    .line 45
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 63
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->values()[Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 64
    .local v0, "t":Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->typeValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 68
    .end local v0    # "t":Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;
    :goto_1
    return-object v0

    .line 63
    .restart local v0    # "t":Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "t":Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->AlignParent:Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->$VALUES:[Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;

    return-object v0
.end method


# virtual methods
.method public final typeValue()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/cell/Cell$DividerAlign;->value:I

    return v0
.end method
