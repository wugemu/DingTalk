.class public Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;
.super Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;
.source "TopicEmotionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;,
        Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$a;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
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

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->e:Ljava/util/Set;

    .line 49
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 50
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "im_chat_topic_store_play_gif_enable"

    invoke-virtual {v0, v1}, Lchx;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->g:Z

    .line 52
    invoke-static {p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    .line 53
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

    iput v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->h:I

    .line 54
    iget v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->h:I

    if-gtz v0, :cond_0

    .line 55
    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {p1, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->h:I

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;)Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->a:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 62
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;>;"
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->e:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 63
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    .local v0, "copiedDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 66
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;

    .line 68
    .local v2, "next":Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->e:Ljava/util/Set;

    iget-wide v4, v2, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;->emotionId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 72
    .end local v2    # "next":Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;
    :cond_2
    move-object p1, v0

    .line 74
    .end local v0    # "copiedDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;>;"
    :cond_3
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;->a(Ljava/util/List;)V

    .line 75
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 79
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    .local v0, "copiedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 84
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;

    .line 86
    .local v2, "next":Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->e:Ljava/util/Set;

    iget-wide v4, v2, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;->emotionId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 90
    .end local v2    # "next":Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;
    :cond_4
    move-object p1, v0

    .line 91
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/gifemotion/CommonBaseAdapter;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 97
    if-nez p2, :cond_0

    .line 98
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->d:Landroid/view/LayoutInflater;

    sget v2, Lctk$g;->topic_emotion_grid_item:I

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 99
    new-instance v14, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;

    const/4 v1, 0x0

    invoke-direct {v14, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;-><init>(B)V

    .line 100
    .local v14, "viewHolder":Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    sget v1, Lctk$f;->iv_image:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1151
    iput-object v1, v14, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;->a:Landroid/widget/ImageView;

    .line 102
    sget v1, Lctk$f;->tv_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2151
    iput-object v1, v14, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;->b:Landroid/widget/TextView;

    .line 106
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;

    .line 3151
    .local v11, "item":Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;
    iget-object v1, v14, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;->a:Landroid/widget/ImageView;

    .line 107
    invoke-static {v1}, Lcrq;->a(Landroid/view/View;)V

    .line 108
    if-nez v11, :cond_1

    .line 4151
    iget-object v1, v14, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;->a:Landroid/widget/ImageView;

    .line 109
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5151
    iget-object v1, v14, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;->a:Landroid/widget/ImageView;

    .line 110
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6151
    iget-object v1, v14, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;->b:Landroid/widget/TextView;

    .line 111
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 7151
    iget-object v2, v14, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;->a:Landroid/widget/ImageView;

    .line 112
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v1, v2, v6, v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 140
    :goto_1
    return-object p2

    .line 104
    .end local v11    # "item":Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;
    .end local v14    # "viewHolder":Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;

    .restart local v14    # "viewHolder":Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;
    goto :goto_0

    .line 8151
    .restart local v11    # "item":Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;
    :cond_1
    iget-object v1, v14, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;->b:Landroid/widget/TextView;

    .line 114
    iget-object v2, v11, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9151
    iget-object v1, v14, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;->a:Landroid/widget/ImageView;

    .line 115
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    const-string/jumbo v1, "CUSTOM_EMOTION"

    const/4 v2, 0x0

    iget-object v6, v11, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;->authMediaCode:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2, v6, v7}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 117
    .local v8, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v11, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;->mediaId:Ljava/lang/String;

    iget-object v2, v11, Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;->authMediaId:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v1, v2, v6}, Ldiq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 118
    .local v12, "originalUrl":Ljava/lang/String;
    const/4 v4, 0x0

    .line 119
    .local v4, "absListView":Landroid/widget/AbsListView;
    move-object/from16 v0, p3

    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_2

    move-object/from16 v4, p3

    .line 120
    check-cast v4, Landroid/widget/AbsListView;

    .line 122
    :cond_2
    invoke-static {v12}, Lcru;->a(Ljava/lang/String;)I

    move-result v10

    .line 123
    .local v10, "emotionObjectType":I
    const/4 v5, 0x0

    .line 124
    .local v5, "displayMode":I
    const/4 v1, 0x2

    if-ne v10, v1, :cond_3

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->g:Z

    if-eqz v1, :cond_3

    .line 125
    const/4 v5, 0x2

    .line 127
    :cond_3
    iget v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->h:I

    iget v2, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->h:I

    const/16 v6, 0x12c

    const/16 v7, 0x12c

    invoke-static {v12, v1, v2, v6, v7}, Lebb;->b(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "thumbUrl":Ljava/lang/String;
    const/16 v1, 0x1f4

    const/16 v2, 0x1f4

    const/16 v6, 0x12c

    const/16 v7, 0x12c

    invoke-static {v12, v1, v2, v6, v7}, Lebb;->c(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v13

    .line 129
    .local v13, "previewUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 10151
    iget-object v2, v14, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;->a:Landroid/widget/ImageView;

    .line 129
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v1 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    .line 11151
    iget-object v1, v14, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;->a:Landroid/widget/ImageView;

    .line 130
    const/4 v2, 0x0

    new-instance v6, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$1;

    invoke-direct {v6, p0, v11}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$1;-><init>(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter;Lcom/alibaba/android/dingtalkim/models/TopicEmotionObject;)V

    invoke-static {v1, v13, v8, v2, v6}, Lcrq;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnClickListener;)V

    .line 12151
    iget-object v1, v14, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionAdapter$b;->a:Landroid/widget/ImageView;

    .line 138
    invoke-static {v1}, Lcrq;->b(Landroid/view/View;)V

    goto :goto_1
.end method
