.class public Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
.super Ljava/lang/Object;
.source "EmotionPackageObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject$EMOTION_OFFLINE_STATUS;
    }
.end annotation


# instance fields
.field public iconMediaId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public order:I

.field public packageId:J

.field public packageMediaId:Ljava/lang/String;

.field public price:I

.field public shortDesc:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ldre;)V
    .locals 2
    .param p1, "detailObject"    # Ldre;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-wide v0, p1, Ldre;->h:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    .line 48
    iget-object v0, p1, Ldre;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->name:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Ldre;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageMediaId:Ljava/lang/String;

    .line 50
    iget v0, p1, Ldre;->j:I

    iput v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->state:I

    .line 51
    iget-object v0, p1, Ldre;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->iconMediaId:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Ldre;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->shortDesc:Ljava/lang/String;

    .line 53
    iget v0, p1, Ldre;->m:I

    iput v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->price:I

    .line 55
    :cond_0
    return-void
.end method

.method public static fromIdl(Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageModel;)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    .locals 5
    .param p0, "model"    # Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageModel;

    .prologue
    const/4 v4, 0x0

    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    .line 63
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;-><init>()V

    .line 64
    .local v0, "emotionPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageModel;->packageId:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 64
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    .line 65
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageModel;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->name:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageModel;->packageMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageMediaId:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageModel;->state:Ljava/lang/Integer;

    .line 2033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 67
    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->state:I

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageModel;->iconMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->iconMediaId:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageModel;->shortDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->shortDesc:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageModel;->price:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 70
    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->price:I

    goto :goto_0
.end method
