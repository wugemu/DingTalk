.class public final Ldie;
.super Ljava/lang/Object;
.source "TopicEmotionCenter.java"

# interfaces
.implements Ldib$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldie$a;
    }
.end annotation


# instance fields
.field a:J

.field public b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

.field public c:Landroid/view/ViewGroup;

.field public d:Landroid/support/v4/view/ViewPager;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/support/v7/widget/RecyclerView;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/view/ViewGroup;

.field public i:Landroid/app/Activity;

.field public j:Z

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/TopicDataObject;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ldib$a;

.field public m:Ldiz;

.field public n:Ldie$a;

.field public o:Z

.field public p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

.field public r:Lgl;

.field public s:Landroid/support/v4/view/ViewPager$d;

.field t:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;Ldpy;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "inputPanelView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;
    .param p3, "imEmotionManager"    # Ldpy;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldie;->k:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldie;->p:Ljava/util/HashMap;

    .line 303
    new-instance v0, Ldie$5;

    invoke-direct {v0, p0}, Ldie$5;-><init>(Ldie;)V

    iput-object v0, p0, Ldie;->r:Lgl;

    .line 350
    new-instance v0, Ldie$6;

    invoke-direct {v0, p0}, Ldie$6;-><init>(Ldie;)V

    iput-object v0, p0, Ldie;->s:Landroid/support/v4/view/ViewPager$d;

    .line 374
    new-instance v0, Ldie$7;

    invoke-direct {v0, p0}, Ldie$7;-><init>(Ldie;)V

    iput-object v0, p0, Ldie;->t:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;

    .line 67
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "TopicEmotionCenter params cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    iput-object p1, p0, Ldie;->i:Landroid/app/Activity;

    .line 71
    iput-object p2, p0, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 72
    new-instance v0, Ldic;

    invoke-direct {v0, p0, p3}, Ldic;-><init>(Ldib$b;Ldpy;)V

    iput-object v0, p0, Ldie;->l:Ldib$a;

    .line 73
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, -0x64

    .line 234
    iget-object v1, p0, Ldie;->p:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    .line 235
    .local v0, "gridView":Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;
    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Ldie;->l:Ldib$a;

    invoke-interface {v1, v4, v5}, Ldib$a;->a(J)Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->setData(Lcom/alibaba/android/dingtalkim/models/TopicDataObject;)V

    .line 238
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 428
    iget-boolean v0, p0, Ldie;->o:Z

    if-nez v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Ldie;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final a(Ldtc;)V
    .locals 6
    .param p1, "emotionIconResultObject"    # Ldtc;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 268
    if-eqz p1, :cond_0

    iget-object v1, p0, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    iget-object v2, p1, Ldtc;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setFaceEventIcon(Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ldie;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 271
    iget-object v1, p0, Ldie;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldie;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    iget-wide v4, p1, Ldtc;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 272
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ldie;->c(Z)V

    .line 273
    iget-object v1, p0, Ldie;->d:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 274
    iget-object v1, p0, Ldie;->f:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 275
    iget-object v1, p0, Ldie;->q:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->b(I)V

    .line 276
    iget-object v1, p0, Ldie;->q:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->notifyDataSetChanged()V

    .line 281
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 270
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8
    .param p1, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 285
    iget-object v0, p0, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 6298
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v1, :cond_1

    .line 6299
    iget-object v6, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .line 7166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7170
    :try_start_0
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v0

    .line 7171
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaId;->getType()Lcom/laiwang/protocol/media/MediaType;

    move-result-object v0

    sget-object v1, Lcom/laiwang/protocol/media/MediaType;->IMAGE_GIF:Lcom/laiwang/protocol/media/MediaType;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_4

    .line 7172
    const/4 v0, 0x1

    .line 7174
    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    move v4, v0

    .line 7178
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7179
    iget-object v0, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->h:Lcom/alibaba/doraemon/image/ImageMagician;

    if-nez v0, :cond_0

    .line 7180
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->h:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 7182
    :cond_0
    const-string/jumbo v0, "CUSTOM_EMOTION"

    invoke-static {v0, v3, v3, v3}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 7183
    iget-object v0, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->h:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->f:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    :goto_2
    move v6, v5

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 7184
    :cond_1
    :goto_3
    return-void

    .line 7175
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v5

    .line 7176
    :goto_4
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    move-object v2, v3

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v5

    .line 7183
    goto :goto_2

    .line 7187
    :cond_3
    iget-object v0, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->f:Landroid/widget/ImageView;

    iget-object v1, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->j:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7188
    iget-object v0, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->j:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 7189
    iget-object v0, v6, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->j:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_3

    .line 7175
    :catch_1
    move-exception v1

    goto :goto_4

    :cond_4
    move v0, v5

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/TopicDataObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    .local p1, "topicDataObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/TopicDataObject;>;"
    iget-object v0, p0, Ldie;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 224
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Ldie;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 227
    :cond_0
    iget-object v0, p0, Ldie;->r:Lgl;

    invoke-virtual {v0}, Lgl;->notifyDataSetChanged()V

    .line 228
    iget-object v0, p0, Ldie;->q:Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;

    .line 5041
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5042
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5043
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5045
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/EmotionTabAdapter;->notifyDataSetChanged()V

    .line 230
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "hasTopicData"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 247
    if-eqz p1, :cond_0

    .line 248
    iget-object v0, p0, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setDynamicEmotionVisible(Z)V

    .line 252
    iget-object v0, p0, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setHasFaceGifTips(Z)V

    .line 259
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setDynamicEmotionVisible(Z)V

    .line 256
    iget-object v0, p0, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->j()V

    .line 257
    iget-object v0, p0, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setHasFaceGifTips(Z)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 2
    .param p1, "hasNew"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 263
    iget-object v0, p0, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 5901
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v1, :cond_0

    .line 5902
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->b(Z)V

    .line 264
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 242
    iget-object v2, p0, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 5279
    iget-object v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v3, :cond_1

    .line 5280
    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .line 5581
    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 242
    :goto_0
    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 5280
    goto :goto_0

    :cond_1
    move v2, v1

    .line 5282
    goto :goto_0

    :cond_2
    move v0, v1

    .line 242
    goto :goto_1
.end method

.method public final c(Z)V
    .locals 4
    .param p1, "hideEventGifTip"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 188
    iget-boolean v0, p0, Ldie;->o:Z

    if-nez v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Ldie;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .line 2266
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    if-eqz v1, :cond_2

    .line 2267
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .line 2563
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2564
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2565
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2566
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->e:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 195
    :cond_2
    if-eqz p1, :cond_3

    .line 196
    iget-object v0, p0, Ldie;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setFaceEventIcon(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Ldia;->a()Ldia;

    move-result-object v0

    .line 3124
    invoke-virtual {v0, v3}, Ldia;->a(Ldtc;)V

    .line 4099
    :cond_3
    iget-object v0, p0, Ldie;->l:Ldib$a;

    invoke-interface {v0}, Ldib$a;->f()V

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 435
    iget-boolean v0, p0, Ldie;->o:Z

    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 438
    :cond_0
    if-eqz p1, :cond_1

    .line 439
    iget-object v0, p0, Ldie;->h:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Ldie;->h:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public final e(Z)V
    .locals 3
    .param p1, "isNew"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 446
    iget-boolean v1, p0, Ldie;->o:Z

    if-nez v1, :cond_0

    .line 455
    :goto_0
    return-void

    .line 7458
    :cond_0
    new-instance v0, Lecw;

    iget-object v1, p0, Ldie;->i:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$j;->icon_search:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcig$c;->ui_common_content_fg_color_alpha_56:I

    .line 7459
    invoke-static {v2}, Leda;->b(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 7460
    iget-object v1, p0, Ldie;->i:Landroid/app/Activity;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 8079
    iput v1, v0, Lecw;->b:I

    .line 9070
    iput v1, v0, Lecw;->a:I

    .line 450
    .local v0, "emotionSearchDrawable":Lecw;
    if-eqz p1, :cond_1

    .line 451
    iget-object v1, p0, Ldie;->g:Landroid/widget/ImageView;

    invoke-static {v0}, Lecx;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 453
    :cond_1
    iget-object v1, p0, Ldie;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
