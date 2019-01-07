.class final Ldie$5;
.super Lgl;
.source "TopicEmotionCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldie;


# direct methods
.method constructor <init>(Ldie;)V
    .locals 0
    .param p1, "this$0"    # Ldie;

    .prologue
    .line 303
    iput-object p1, p0, Ldie$5;->a:Ldie;

    invoke-direct {p0}, Lgl;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 331
    instance-of v1, p3, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object v1, p3

    .line 332
    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 333
    instance-of v1, p3, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 334
    check-cast v0, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    .line 335
    .local v0, "gridView":Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->getTopicId()J

    move-result-wide v2

    .line 336
    .local v2, "topicId":J
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->setGifTopicViewStatusListener(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;)V

    .line 337
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->setData(Lcom/alibaba/android/dingtalkim/models/TopicDataObject;)V

    .line 338
    iget-object v1, p0, Ldie$5;->a:Ldie;

    .line 6043
    iget-object v1, v1, Ldie;->p:Ljava/util/HashMap;

    .line 338
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .end local v0    # "gridView":Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;
    .end local v2    # "topicId":J
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Ldie$5;->a:Ldie;

    .line 1043
    iget-object v0, v0, Ldie;->k:Ljava/util/List;

    .line 306
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 346
    const/4 v0, -0x2

    return v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x1

    .line 316
    iget-object v2, p0, Ldie$5;->a:Ldie;

    .line 2043
    iget-object v2, v2, Ldie;->k:Ljava/util/List;

    .line 316
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    .line 317
    .local v0, "object":Lcom/alibaba/android/dingtalkim/models/TopicDataObject;
    if-eqz v0, :cond_0

    .line 318
    new-instance v1, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;-><init>(Landroid/content/Context;)V

    .line 319
    .local v1, "topicEmotionGridView":Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    iget-object v2, p0, Ldie$5;->a:Ldie;

    .line 3043
    iget-object v2, v2, Ldie;->t:Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;

    .line 320
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->setGifTopicViewStatusListener(Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView$a;)V

    .line 321
    iget-object v2, p0, Ldie$5;->a:Ldie;

    .line 4043
    iget-object v2, v2, Ldie;->l:Ldib$a;

    .line 321
    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    invoke-interface {v2, v4, v5}, Ldib$a;->a(J)Lcom/alibaba/android/dingtalkim/models/TopicDataObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;->setData(Lcom/alibaba/android/dingtalkim/models/TopicDataObject;)V

    .line 322
    iget-object v2, p0, Ldie$5;->a:Ldie;

    .line 5043
    iget-object v2, v2, Ldie;->p:Ljava/util/HashMap;

    .line 322
    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/TopicDataObject;->topicId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .end local v1    # "topicEmotionGridView":Lcom/alibaba/android/dingtalkim/gifemotion/TopicEmotionGridView;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 311
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
