.class public final Ldra;
.super Ljava/lang/Object;
.source "CustomEmotionAddResultObject.java"


# instance fields
.field public a:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/models/idl/CustomEmotionAddResultModel;)Ldra;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/android/dingtalkim/models/idl/CustomEmotionAddResultModel;

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 38
    :cond_0
    new-instance v0, Ldra;

    invoke-direct {v0}, Ldra;-><init>()V

    .line 39
    .local v0, "addResultObject":Ldra;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/idl/CustomEmotionAddResultModel;->customEmotion:Ldcj;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->fromIdl(Ldcj;)Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    move-result-object v1

    iput-object v1, v0, Ldra;->a:Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 40
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/idl/CustomEmotionAddResultModel;->version:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 40
    iput-wide v2, v0, Ldra;->b:J

    goto :goto_0
.end method
