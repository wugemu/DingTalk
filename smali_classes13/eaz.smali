.class public final Leaz;
.super Ljava/lang/Object;
.source "ConvertIdlUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ldts;)Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;
    .locals 4
    .param p0, "model"    # Ldts;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 16
    if-nez p0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 25
    :goto_0
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;-><init>()V

    .line 21
    .local v0, "object":Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;
    iget-object v1, p0, Ldts;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;->previewMediaIds:Ljava/util/List;

    .line 22
    iget-object v1, p0, Ldts;->b:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;->mediaIds:Ljava/util/List;

    .line 23
    iget-object v1, p0, Ldts;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;->guideDoc:Ljava/lang/String;

    .line 24
    iget-object v1, p0, Ldts;->d:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 24
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;->moreEmotionTopicId:J

    goto :goto_0
.end method
