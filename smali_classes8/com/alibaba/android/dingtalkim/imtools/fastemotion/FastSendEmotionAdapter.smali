.class public Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;
.super Landroid/widget/BaseAdapter;
.source "FastSendEmotionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter$a;
    }
.end annotation


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

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->a:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->b:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->c:Landroid/view/LayoutInflater;

    .line 48
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 67
    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 74
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 80
    if-nez p2, :cond_1

    .line 81
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->c:Landroid/view/LayoutInflater;

    sget v2, Lctk$g;->item_emotion_fast_send:I

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 82
    new-instance v13, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter$a;

    const/4 v1, 0x0

    invoke-direct {v13, v1}, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter$a;-><init>(B)V

    .line 83
    .local v13, "viewHolder":Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter$a;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    sget v1, Lctk$f;->iv_emotion_thumbnail:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v13, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter$a;->a:Landroid/widget/ImageView;

    .line 85
    sget v1, Lctk$f;->iv_right_space:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v13, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter$a;->b:Landroid/widget/ImageView;

    .line 90
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    move-result-object v11

    .line 91
    .local v11, "item":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    if-eqz v11, :cond_0

    iget-object v1, v11, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    if-eqz v1, :cond_0

    .line 92
    iget-object v12, v11, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->f:Lcrd;

    check-cast v12, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;

    .line 94
    .local v12, "object":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    iget-object v1, v12, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->authMediaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getAuthProvider()Lcom/alibaba/wukong/im/AuthProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/AuthProviderProxy;->useAuth()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    iget-object v1, v12, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->authMediaId:Ljava/lang/String;

    invoke-static {v1}, Ldkj;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v10, 0x1

    .line 99
    .local v10, "isGif":Z
    :goto_1
    const-string/jumbo v1, "CUSTOM_EMOTION"

    const/4 v2, 0x0

    iget-object v3, v11, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 100
    .local v8, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v10, :cond_5

    .line 101
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, v13, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter$a;->a:Landroid/widget/ImageView;

    iget-object v3, v11, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v1 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    .line 106
    .end local v8    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "isGif":Z
    .end local v12    # "object":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_6

    .line 107
    iget-object v1, v13, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter$a;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    :goto_3
    return-object p2

    .line 87
    .end local v11    # "item":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    .end local v13    # "viewHolder":Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter$a;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter$a;

    .restart local v13    # "viewHolder":Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter$a;
    goto :goto_0

    .line 95
    .restart local v11    # "item":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    .restart local v12    # "object":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 97
    :cond_3
    iget-object v1, v12, Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;->emotionMediaId:Ljava/lang/String;

    invoke-static {v1}, Ldkj;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/4 v10, 0x1

    .restart local v10    # "isGif":Z
    :goto_4
    goto :goto_1

    .end local v10    # "isGif":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_4

    .line 103
    .restart local v8    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "isGif":Z
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v5, v13, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter$a;->a:Landroid/widget/ImageView;

    iget-object v6, v11, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->b:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_2

    .line 109
    .end local v8    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "isGif":Z
    .end local v12    # "object":Lcom/alibaba/android/dingtalkim/base/model/EmotionDetailObject;
    :cond_6
    iget-object v1, v13, Lcom/alibaba/android/dingtalkim/imtools/fastemotion/FastSendEmotionAdapter$a;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method
