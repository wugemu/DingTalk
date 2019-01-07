.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;
.super Lgl;
.source "EmotionHorizontalFooterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    .prologue
    const/4 v1, 0x0

    .line 212
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-direct {p0}, Lgl;-><init>()V

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->b:I

    .line 216
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->c:Ljava/util/List;

    .line 217
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->d:Ljava/util/List;

    .line 219
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v1, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->e:I

    .line 220
    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v1, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->f:I

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 285
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v2, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;I)Lckk;

    move-result-object v0

    .line 286
    .local v0, "model":Lckk;
    instance-of v2, p3, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;

    if-eqz v2, :cond_1

    move-object v1, p3

    .line 287
    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;

    .line 288
    .local v1, "v":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;
    if-eqz v0, :cond_0

    .line 289
    iget v2, v0, Lckk;->e:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    iget v2, v0, Lckk;->f:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 290
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 297
    .end local v1    # "v":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;
    :cond_1
    return-void

    .line 292
    .restart local v1    # "v":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final getCount()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "count":I
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lckk;

    .line 227
    .local v1, "m":Lckk;
    iget v3, v1, Lckk;->c:I

    add-int/2addr v0, v3

    .line 228
    goto :goto_0

    .line 230
    .end local v1    # "m":Lckk;
    :cond_0
    return v0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 307
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->b:I

    if-lez v0, :cond_0

    .line 308
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->b:I

    .line 309
    const/4 v0, -0x2

    .line 311
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lgl;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 241
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v2, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;I)Lckk;

    move-result-object v0

    .line 242
    .local v0, "model":Lckk;
    if-eqz v0, :cond_3

    .line 244
    iget v2, v0, Lckk;->e:I

    if-ne v2, v5, :cond_1

    iget v2, v0, Lckk;->f:I

    if-ne v2, v4, :cond_1

    .line 245
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;

    .line 275
    .local v1, "view":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v2, v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;Lckk;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->setData(Ljava/util/List;)V

    .line 276
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 279
    .end local v1    # "view":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;
    :goto_1
    return-object v1

    .line 248
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;-><init>(Landroid/content/Context;)V

    .line 249
    .restart local v1    # "view":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->e:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->e:I

    invoke-virtual {v1, v5, v4, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->a(IIII)V

    .line 250
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->setEmotionClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V

    goto :goto_0

    .line 260
    .end local v1    # "view":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;

    .restart local v1    # "view":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;
    goto :goto_0

    .line 263
    .end local v1    # "view":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;
    :cond_2
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;-><init>(Landroid/content/Context;)V

    .line 264
    .restart local v1    # "view":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;
    const/4 v2, 0x4

    const/4 v3, 0x2

    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->f:I

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->f:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->a(IIII)V

    .line 265
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;->setEmotionClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V

    goto :goto_0

    .line 279
    .end local v1    # "view":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 235
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->getCount()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$1;->b:I

    .line 302
    invoke-super {p0}, Lgl;->notifyDataSetChanged()V

    .line 303
    return-void
.end method
