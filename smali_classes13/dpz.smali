.class public final Ldpz;
.super Ljava/lang/Object;
.source "RecommendSearchPart.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Ldpz;
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ldpz;"
        }
    .end annotation

    .prologue
    .local p0, "mediaIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x5

    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 32
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v8

    .line 37
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .local v1, "detailObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 39
    .local v5, "mediaId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 42
    new-instance v2, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;-><init>()V

    .line 43
    .local v2, "emotionDetailObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    const-wide/16 v10, 0x1

    iput-wide v10, v2, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionId:J

    .line 44
    iput-object v5, v2, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionMediaId:Ljava/lang/String;

    .line 45
    const-wide/16 v10, -0xd

    iput-wide v10, v2, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->packageId:J

    .line 46
    iput v12, v2, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->type:I

    .line 47
    iput-object p1, v2, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->name:Ljava/lang/String;

    .line 48
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    .end local v2    # "emotionDetailObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    .end local v5    # "mediaId":Ljava/lang/String;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 55
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .local v7, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 57
    .local v0, "detailObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    invoke-static {v0}, Ldpu;->b(Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    move-result-object v3

    .line 58
    .local v3, "emotionGridItemModel":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    if-eqz v3, :cond_4

    .line 59
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 62
    .end local v0    # "detailObject":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    .end local v3    # "emotionGridItemModel":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 66
    const-string/jumbo v9, "IMAGE"

    invoke-static {v9}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 67
    .local v4, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    new-instance v8, Ldpz;

    invoke-direct {v8}, Ldpz;-><init>()V

    .line 68
    .local v8, "recommendSearchPart":Ldpz;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    .line 69
    .local v6, "model":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    iget-object v10, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->a:Ljava/lang/String;

    invoke-interface {v4, v10}, Lcom/alibaba/doraemon/image/ImageMagician;->hasImageCache(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 70
    iget-object v10, v8, Ldpz;->a:Ljava/util/List;

    if-nez v10, :cond_6

    .line 71
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v8, Ldpz;->a:Ljava/util/List;

    .line 73
    :cond_6
    iget-object v10, v8, Ldpz;->a:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 75
    :cond_7
    iget-object v10, v8, Ldpz;->b:Ljava/util/List;

    if-nez v10, :cond_8

    .line 76
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v8, Ldpz;->b:Ljava/util/List;

    .line 78
    :cond_8
    iget-object v10, v8, Ldpz;->b:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 83
    .end local v6    # "model":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    :cond_9
    iget-object v9, v8, Ldpz;->a:Ljava/util/List;

    if-eqz v9, :cond_0

    iget-object v9, v8, Ldpz;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_0

    .line 84
    iget-object v9, v8, Ldpz;->a:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 85
    iget-object v9, v8, Ldpz;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v13, :cond_0

    .line 86
    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v8, Ldpz;->a:Ljava/util/List;

    invoke-interface {v10, v12, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, v8, Ldpz;->a:Ljava/util/List;

    goto/16 :goto_0
.end method
