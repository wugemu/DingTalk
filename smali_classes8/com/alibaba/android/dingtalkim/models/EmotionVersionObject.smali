.class public Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;
.super Ljava/lang/Object;
.source "EmotionVersionObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x52506be52fa19b55L


# instance fields
.field public defaultEmotionVer:J

.field public hotSearchWordsVer:J

.field public iconRedPointVer:J

.field public likeEmotionVer:J

.field public mainOrgId:J

.field public topicVersionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Ldte;)Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;
    .locals 6
    .param p0, "model"    # Ldte;

    .prologue
    const-wide/16 v4, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;-><init>()V

    .line 34
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;
    iget-object v1, p0, Ldte;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 34
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->likeEmotionVer:J

    .line 35
    iget-object v1, p0, Ldte;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->topicVersionList:Ljava/util/List;

    .line 36
    iget-object v1, p0, Ldte;->c:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 36
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->mainOrgId:J

    .line 37
    iget-object v1, p0, Ldte;->d:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 37
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->hotSearchWordsVer:J

    .line 38
    iget-object v1, p0, Ldte;->e:Ljava/lang/Long;

    .line 4044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 38
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->iconRedPointVer:J

    .line 39
    iget-object v1, p0, Ldte;->f:Ljava/lang/Long;

    .line 5044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 39
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->defaultEmotionVer:J

    goto :goto_0
.end method

.method public static toIdl(Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;)Ldte;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    .line 47
    :cond_0
    new-instance v0, Ldte;

    invoke-direct {v0}, Ldte;-><init>()V

    .line 48
    .local v0, "model":Ldte;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->likeEmotionVer:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ldte;->a:Ljava/lang/Long;

    .line 49
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->topicVersionList:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/TopicVersionObject;->toIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ldte;->b:Ljava/util/List;

    .line 50
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->mainOrgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ldte;->c:Ljava/lang/Long;

    .line 51
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->hotSearchWordsVer:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ldte;->d:Ljava/lang/Long;

    .line 52
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->iconRedPointVer:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ldte;->e:Ljava/lang/Long;

    .line 53
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/EmotionVersionObject;->defaultEmotionVer:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ldte;->f:Ljava/lang/Long;

    goto :goto_0
.end method
