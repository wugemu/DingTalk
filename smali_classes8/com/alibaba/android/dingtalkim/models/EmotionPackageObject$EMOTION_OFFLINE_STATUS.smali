.class public final enum Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;
.super Ljava/lang/Enum;
.source "EmotionPackageObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMOTION_OFFLINE_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

.field public static final enum OFFLINE:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

.field public static final enum ONLINE:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

    const-string/jumbo v1, "OFFLINE"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;->OFFLINE:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

    .line 77
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

    const-string/jumbo v1, "ONLINE"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;->ONLINE:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

    sget-object v1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;->OFFLINE:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;->ONLINE:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;->$VALUES:[Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput p3, p0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;->value:I

    .line 83
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 90
    packed-switch p0, :pswitch_data_0

    .line 96
    sget-object v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;->ONLINE:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

    :goto_0
    return-object v0

    .line 92
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;->OFFLINE:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

    goto :goto_0

    .line 94
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;->ONLINE:Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;->$VALUES:[Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;->value:I

    return v0
.end method
