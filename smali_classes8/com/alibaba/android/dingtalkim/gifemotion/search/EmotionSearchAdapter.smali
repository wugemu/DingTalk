.class public Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;
.super Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;
.source "EmotionSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;,
        Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$a;

.field private e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alibaba/doraemon/image/ImageMagician;

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->e:Ljava/util/HashSet;

    .line 49
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 50
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "im_chat_topic_store_play_gif_enable"

    invoke-virtual {v0, v1}, Lchx;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->g:Z

    .line 51
    invoke-static {p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    .line 52
    invoke-static {p1, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->h:I

    .line 53
    iget v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->h:I

    if-gtz v0, :cond_0

    .line 54
    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {p1, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->h:I

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;)Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->a:Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 60
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;>;"
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->e:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 61
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    .local v0, "copiedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 64
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    .line 66
    .local v2, "next":Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->e:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->dynamicEmotionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->e:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->dynamicEmotionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    .end local v2    # "next":Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;
    :cond_2
    invoke-super {p0, v0}, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;->a(Ljava/util/List;)V

    .line 76
    .end local v0    # "copiedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;>;"
    :goto_1
    return-void

    .line 74
    :cond_3
    const/4 v3, 0x0

    invoke-super {p0, v3}, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;->a(Ljava/util/List;)V

    goto :goto_1
.end method

.method public final b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 80
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;>;"
    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    :cond_0
    return-void

    .line 83
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 84
    .local v0, "copiedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 85
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    .line 87
    .local v2, "next":Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->e:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->dynamicEmotionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 88
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 90
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->e:Ljava/util/HashSet;

    iget-object v4, v2, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->dynamicEmotionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    .end local v2    # "next":Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;
    :cond_4
    move-object p1, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 99
    if-nez p2, :cond_0

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->d:Landroid/view/LayoutInflater;

    sget v3, Lctk$g;->item_emotion_search:I

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 101
    new-instance v23, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;

    invoke-direct/range {v23 .. v23}, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;-><init>()V

    .line 102
    .local v23, "viewHolder":Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    sget v2, Lctk$f;->iv_image:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;->a:Landroid/widget/ImageView;

    .line 104
    sget v2, Lctk$f;->tv_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;->b:Landroid/widget/TextView;

    .line 108
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;

    .line 109
    .local v20, "item":Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;
    const/4 v6, 0x0

    .line 110
    .local v6, "displayMode":I
    if-nez v20, :cond_1

    .line 111
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;->a:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;->a:Landroid/widget/ImageView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v2, v3, v7, v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 155
    :goto_1
    return-object p2

    .line 106
    .end local v6    # "displayMode":I
    .end local v20    # "item":Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;
    .end local v23    # "viewHolder":Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;

    .restart local v23    # "viewHolder":Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;
    goto :goto_0

    .line 114
    .restart local v6    # "displayMode":I
    .restart local v20    # "item":Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;
    :cond_1
    const/4 v5, 0x0

    .line 115
    .local v5, "absListView":Landroid/widget/AbsListView;
    move-object/from16 v0, p3

    instance-of v2, v0, Landroid/widget/AbsListView;

    if-eqz v2, :cond_2

    move-object/from16 v5, p3

    .line 116
    check-cast v5, Landroid/widget/AbsListView;

    .line 119
    :cond_2
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->authMediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->mediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 120
    :cond_3
    const-string/jumbo v2, "CUSTOM_EMOTION"

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v7, v8}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    .line 121
    .local v9, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->mediaId:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->authMediaId:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2, v3, v7}, Ldiq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v21

    .line 122
    .local v21, "originalUrl":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcru;->a(Ljava/lang/String;)I

    move-result v19

    .line 123
    .local v19, "emotionObjectType":I
    const/4 v2, 0x2

    move/from16 v0, v19

    if-ne v0, v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->g:Z

    if-eqz v2, :cond_4

    .line 124
    const/4 v6, 0x2

    .line 126
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->h:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->h:I

    const/16 v7, 0x12c

    const/16 v8, 0x12c

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3, v7, v8}, Lebb;->b(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "thumbUrl":Ljava/lang/String;
    const/16 v2, 0x1f4

    const/16 v3, 0x1f4

    const/16 v7, 0x12c

    const/16 v8, 0x12c

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3, v7, v8}, Lebb;->c(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v22

    .line 128
    .local v22, "previewUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;->a:Landroid/widget/ImageView;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v2 .. v10}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    .line 129
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;->a:Landroid/widget/ImageView;

    const/4 v3, 0x0

    new-instance v7, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$1;-><init>(Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;)V

    move-object/from16 v0, v22

    invoke-static {v2, v0, v9, v3, v7}, Lcrq;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnClickListener;)V

    .line 137
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;->a:Landroid/widget/ImageView;

    invoke-static {v2}, Lcrq;->b(Landroid/view/View;)V

    goto/16 :goto_1

    .line 138
    .end local v4    # "thumbUrl":Ljava/lang/String;
    .end local v9    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "emotionObjectType":I
    .end local v21    # "originalUrl":Ljava/lang/String;
    .end local v22    # "previewUrl":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->thumbUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 139
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;->a:Landroid/widget/ImageView;

    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->thumbUrl:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v5

    invoke-interface/range {v10 .. v18}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    .line 140
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;->a:Landroid/widget/ImageView;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;->thumbUrl:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v10, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$2;-><init>(Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;Lcom/alibaba/android/dingtalkim/models/DynamicEmotionObject;)V

    invoke-static {v2, v3, v7, v8, v10}, Lcrq;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnClickListener;)V

    .line 148
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;->a:Landroid/widget/ImageView;

    invoke-static {v2}, Lcrq;->b(Landroid/view/View;)V

    goto/16 :goto_1

    .line 150
    :cond_6
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;->a:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/gifemotion/search/EmotionSearchAdapter$b;->a:Landroid/widget/ImageView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v2, v3, v7, v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_1
.end method
