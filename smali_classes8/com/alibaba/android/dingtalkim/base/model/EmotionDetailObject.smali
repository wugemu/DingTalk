.class public Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
.super Lcrd;
.source "EmotionDetailObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public authCode:Ljava/lang/String;

.field public authMediaId:Ljava/lang/String;

.field public emotionId:J

.field public emotionMediaId:Ljava/lang/String;

.field public isPraise:I

.field public name:Ljava/lang/String;

.field public originPath:Ljava/lang/String;

.field public packageId:J

.field public thumnailPath:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcrd;-><init>()V

    return-void
.end method

.method public static fromIdl(Ldcj;)Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    .locals 4
    .param p0, "model"    # Ldcj;

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;-><init>()V

    .line 56
    .local v0, "customEmotionObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    iget-object v1, p0, Ldcj;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 56
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionId:J

    .line 57
    iget-object v1, p0, Ldcj;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->name:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Ldcj;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionMediaId:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Ldcj;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->authMediaId:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Ldcj;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->authCode:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Ldcj;->h:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 64
    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->isPraise:I

    goto :goto_0
.end method


# virtual methods
.method public getTalkBackDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->name:Ljava/lang/String;

    return-object v0
.end method
