.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;
.super Landroid/widget/BaseAdapter;
.source "DynamicEmotionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->f(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 265
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 271
    if-nez p2, :cond_0

    .line 272
    new-instance v9, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$c;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$c;-><init>()V

    .line 273
    .local v9, "viewHolder":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$c;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcig$h;->dynamic_emotion_item:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 274
    sget v1, Lcig$f;->img_emotion:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$c;->a:Landroid/widget/ImageView;

    .line 276
    invoke-virtual {p2, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 280
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->g(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)I

    move-result v1

    if-lez v1, :cond_1

    .line 281
    iget-object v1, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$c;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->g(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    .line 286
    .local v8, "model":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 287
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v1, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$c;->a:Landroid/widget/ImageView;

    iget-object v2, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    iget-object v6, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;->a:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    :goto_2
    move v6, v5

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 288
    return-object p2

    .line 278
    .end local v0    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v8    # "model":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    .end local v9    # "viewHolder":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$c;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$c;

    .restart local v9    # "viewHolder":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$c;
    goto :goto_0

    .line 283
    :cond_1
    iget-object v1, v9, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$c;->a:Landroid/widget/ImageView;

    sget v2, Lcig$c;->gray:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .restart local v0    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .restart local v8    # "model":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;
    :cond_2
    move v4, v5

    .line 287
    goto :goto_2
.end method
