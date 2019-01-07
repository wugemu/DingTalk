.class public Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;
.super Ljava/lang/Object;
.source "EmotionResultObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x776c5ca1081356f8L


# instance fields
.field public defaultEmotion:Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "defaultEmotion"
    .end annotation
.end field

.field public gifEmotionIcon:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "gifEmotionIcon"
    .end annotation
.end field

.field public hotSearchWords:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "hotSearchWordObject"
    .end annotation
.end field

.field public iconRedPointVer:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "iconRedPointVer"
    .end annotation
.end field

.field public likeEmotionObject:Ldro;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "likeEmotionObject"
    .end annotation
.end field

.field public topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "topicResultObject"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIdl(Ldtd;)Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;
    .locals 12
    .param p0, "model"    # Ldtd;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 38
    if-nez p0, :cond_0

    .line 48
    :goto_0
    return-object v2

    .line 41
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;-><init>()V

    .line 42
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;
    iget-object v5, p0, Ldtd;->a:Ldty;

    .line 1033
    if-nez v5, :cond_1

    move-object v1, v2

    .line 42
    :goto_1
    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->likeEmotionObject:Ldro;

    .line 43
    iget-object v1, p0, Ldtd;->b:Ldut;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->fromIdl(Ldut;)Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 44
    iget-object v1, p0, Ldtd;->c:Ldtu;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;->fromIdl(Ldtu;)Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->hotSearchWords:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    .line 45
    iget-object v1, p0, Ldtd;->d:Ljava/lang/Long;

    .line 4044
    invoke-static {v1, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 45
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->iconRedPointVer:J

    .line 46
    iget-object v1, p0, Ldtd;->e:Ldtj;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;->fromIdl(Ldtj;)Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->gifEmotionIcon:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    .line 47
    iget-object v1, p0, Ldtd;->f:Ldsx;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->fromIdl(Ldsx;)Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->defaultEmotion:Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    move-object v2, v0

    .line 48
    goto :goto_0

    .line 1036
    :cond_1
    new-instance v3, Ldro;

    invoke-direct {v3}, Ldro;-><init>()V

    .line 1037
    iget-object v1, v5, Ldty;->a:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, v5, Ldty;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1038
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v3, Ldro;->a:Ljava/util/List;

    .line 1039
    iget-object v1, v5, Ldty;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldtx;

    .line 1050
    if-nez v1, :cond_3

    move-object v1, v2

    .line 1041
    :goto_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ldrn;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1042
    iget-object v4, v3, Ldro;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1053
    :cond_3
    new-instance v4, Ldrn;

    invoke-direct {v4}, Ldrn;-><init>()V

    .line 1054
    iget-object v7, v1, Ldtx;->a:Ljava/lang/String;

    iput-object v7, v4, Ldrn;->a:Ljava/lang/String;

    .line 1055
    iget-object v7, v1, Ldtx;->b:Ljava/lang/String;

    iput-object v7, v4, Ldrn;->b:Ljava/lang/String;

    .line 1056
    iget-object v7, v1, Ldtx;->c:Ljava/lang/String;

    iput-object v7, v4, Ldrn;->c:Ljava/lang/String;

    .line 1057
    iget-object v7, v1, Ldtx;->e:Ljava/lang/Integer;

    .line 2033
    invoke-static {v7, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v7

    .line 1057
    iput v7, v4, Ldrn;->d:I

    .line 1058
    iget-object v7, v1, Ldtx;->f:Ljava/lang/Integer;

    .line 3033
    invoke-static {v7, v8}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v7

    .line 1058
    iput v7, v4, Ldrn;->e:I

    .line 1059
    iget-object v7, v1, Ldtx;->g:Ljava/lang/String;

    iput-object v7, v4, Ldrn;->f:Ljava/lang/String;

    .line 1060
    iget-object v7, v1, Ldtx;->h:Ljava/lang/String;

    iput-object v7, v4, Ldrn;->g:Ljava/lang/String;

    .line 1061
    iget-object v7, v1, Ldtx;->i:Ljava/lang/String;

    iput-object v7, v4, Ldrn;->h:Ljava/lang/String;

    .line 1062
    iget-object v7, v1, Ldtx;->j:Ljava/util/List;

    iput-object v7, v4, Ldrn;->i:Ljava/util/List;

    .line 1063
    iget-object v1, v1, Ldtx;->k:Ljava/lang/String;

    iput-object v1, v4, Ldrn;->j:Ljava/lang/String;

    move-object v1, v4

    .line 1064
    goto :goto_3

    .line 1046
    :cond_4
    iget-object v1, v5, Ldty;->b:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1046
    iput-wide v4, v3, Ldro;->b:J

    move-object v1, v3

    .line 1047
    goto/16 :goto_1
.end method


# virtual methods
.method public copy()Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 52
    new-instance v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;-><init>()V

    .line 53
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->likeEmotionObject:Ldro;

    if-eqz v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->likeEmotionObject:Ldro;

    .line 4056
    new-instance v2, Ldro;

    invoke-direct {v2}, Ldro;-><init>()V

    .line 4057
    iget-wide v4, v1, Ldro;->b:J

    iput-wide v4, v2, Ldro;->b:J

    .line 4058
    iget-object v3, v1, Ldro;->a:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v1, Ldro;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4059
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, v1, Ldro;->a:Ljava/util/List;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Ldro;->a:Ljava/util/List;

    .line 54
    :cond_0
    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->likeEmotionObject:Ldro;

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->copy()Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->hotSearchWords:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    if-eqz v1, :cond_3

    .line 60
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->hotSearchWords:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;->copy()Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->hotSearchWords:Lcom/alibaba/android/dingtalkim/models/HotSearchWordResultObject;

    .line 62
    :cond_3
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->iconRedPointVer:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->iconRedPointVer:J

    .line 63
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->gifEmotionIcon:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    if-eqz v1, :cond_4

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->gifEmotionIcon:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;->copy()Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->gifEmotionIcon:Lcom/alibaba/android/dingtalkim/models/GifEmotionIconObject;

    .line 66
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->defaultEmotion:Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    if-eqz v1, :cond_5

    .line 67
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->defaultEmotion:Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;->copy()Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->defaultEmotion:Lcom/alibaba/android/dingtalkim/models/DynamicDefaultEmotionObject;

    .line 69
    :cond_5
    return-object v0
.end method

.method public isTopicResultObjectHasDataAndValid()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/EmotionResultObject;->topicResultObject:Lcom/alibaba/android/dingtalkim/models/TopicResultObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/models/TopicResultObject;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
