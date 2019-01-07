.class public final enum Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;
.super Ljava/lang/Enum;
.source "AdsBlueGuideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArrowOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

.field public static final enum DOWN:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

.field public static final enum UP:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    const-string/jumbo v1, "UP"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->UP:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    .line 264
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    const-string/jumbo v1, "DOWN"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->DOWN:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    .line 261
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->UP:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->DOWN:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

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
    .line 268
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 269
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->value:I

    .line 270
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 278
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->values()[Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 279
    .local v0, "t":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;
    iget v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->value:I

    if-ne v4, p0, :cond_0

    .line 283
    .end local v0    # "t":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;
    :goto_1
    return-object v0

    .line 278
    .restart local v0    # "t":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "t":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->UP:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 261
    const-class v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->$VALUES:[Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;

    return-object v0
.end method


# virtual methods
.method public final typeValue()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$ArrowOrientation;->value:I

    return v0
.end method
