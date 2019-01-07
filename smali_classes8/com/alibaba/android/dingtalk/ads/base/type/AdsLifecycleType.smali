.class public final enum Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;
.super Ljava/lang/Enum;
.source "AdsLifecycleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

.field public static final enum LIFECYCLE_CLICK:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

.field public static final enum LIFECYCLE_ONETIME:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

.field public static final enum LIFECYCLE_TIME:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

.field public static final enum LIFECYCLE_UPGRADE:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    const-string/jumbo v1, "LIFECYCLE_CLICK"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->LIFECYCLE_CLICK:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    .line 32
    new-instance v0, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    const-string/jumbo v1, "LIFECYCLE_TIME"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->LIFECYCLE_TIME:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    .line 37
    new-instance v0, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    const-string/jumbo v1, "LIFECYCLE_UPGRADE"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->LIFECYCLE_UPGRADE:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    .line 42
    new-instance v0, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    const-string/jumbo v1, "LIFECYCLE_ONETIME"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->LIFECYCLE_ONETIME:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    sget-object v1, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->LIFECYCLE_CLICK:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->LIFECYCLE_TIME:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->LIFECYCLE_UPGRADE:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->LIFECYCLE_ONETIME:Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->$VALUES:[Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->mValue:I

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->$VALUES:[Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/android/dingtalk/ads/base/type/AdsLifecycleType;->mValue:I

    return v0
.end method
