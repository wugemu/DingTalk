.class public final enum Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;
.super Ljava/lang/Enum;
.source "AdsBlueGuideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArrowAlign"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

.field public static final enum CENTER:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

.field public static final enum LEFT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

.field public static final enum RIGHT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 289
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->LEFT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    .line 290
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->RIGHT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    .line 291
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    const-string/jumbo v1, "CENTER"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->CENTER:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    .line 287
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->LEFT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->RIGHT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->CENTER:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

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
    .line 295
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 296
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->value:I

    .line 297
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 305
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->values()[Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 306
    .local v0, "t":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;
    iget v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->value:I

    if-ne v4, p0, :cond_0

    .line 310
    .end local v0    # "t":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;
    :goto_1
    return-object v0

    .line 305
    .restart local v0    # "t":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v0    # "t":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->LEFT:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 287
    const-class v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;

    return-object v0
.end method


# virtual methods
.method public final typeValue()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowAlign;->value:I

    return v0
.end method
