.class public final Lcsx;
.super Ljava/lang/Object;
.source "DefaultEmotionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lckk;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v1, "emotionTabModels":Ljava/util/List;, "Ljava/util/List<Lckk;>;"
    new-instance v5, Lckk;

    invoke-direct {v5}, Lckk;-><init>()V

    .line 28
    .local v5, "wwEmotionTabModel":Lckk;
    iput v8, v5, Lckk;->d:I

    .line 29
    const/4 v6, 0x7

    iput v6, v5, Lckk;->e:I

    .line 30
    const/4 v6, 0x3

    iput v6, v5, Lckk;->f:I

    .line 31
    iput v8, v5, Lckk;->c:I

    .line 32
    sget v6, Lcig$e;->inputpanel_ww_emotion_package:I

    iput v6, v5, Lckk;->b:I

    .line 33
    const/4 v6, 0x1

    iput v6, v5, Lckk;->j:I

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v4, "wwEmotionGridItemModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    invoke-static {}, Lcrc;->a()Lcrc;

    move-result-object v6

    invoke-virtual {v6}, Lcrc;->c()Ljava/util/List;

    move-result-object v2

    .line 36
    .local v2, "fileTabModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 37
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    :cond_0
    sget-object v6, Lcqz;->b:Ljava/util/List;

    sget-object v6, Lcqz;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 40
    sget-object v6, Lcqz;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqz$a;

    .line 41
    .local v0, "ei":Lcqz$a;
    if-eqz v0, :cond_1

    .line 44
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;-><init>()V

    .line 45
    .local v3, "m":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    iput v8, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->e:I

    .line 46
    iput v8, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->h:I

    .line 1865
    iget v7, v0, Lcqz$a;->b:I

    .line 47
    iput v7, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->d:I

    .line 48
    iput-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    .line 49
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    .end local v0    # "ei":Lcqz$a;
    .end local v3    # "m":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    :cond_2
    iput-object v4, v5, Lckk;->i:Ljava/util/List;

    .line 53
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-object v1
.end method
