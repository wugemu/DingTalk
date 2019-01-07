.class final Lfub$1;
.super Ljava/lang/Object;
.source "GuideViewHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfub;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfub;


# direct methods
.method constructor <init>(Lfub;)V
    .locals 0
    .param p1, "this$0"    # Lfub;

    .prologue
    .line 124
    iput-object p1, p0, Lfub$1;->a:Lfub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 128
    iget-object v0, p0, Lfub$1;->a:Lfub;

    .line 1021
    iget-object v0, v0, Lfub;->a:Landroid/view/ViewGroup;

    .line 128
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 132
    :goto_0
    iget-object v2, p0, Lfub$1;->a:Lfub;

    .line 2186
    iget-object v0, v2, Lfub;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2187
    if-eqz v0, :cond_0

    .line 2188
    iget-object v4, v2, Lfub;->c:Ljava/util/List;

    .line 3156
    if-nez v0, :cond_2

    .line 3157
    const/4 v0, 0x0

    .line 2188
    :goto_2
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 130
    :cond_1
    iget-object v0, p0, Lfub$1;->a:Lfub;

    .line 2021
    iget-object v0, v0, Lfub;->a:Landroid/view/ViewGroup;

    .line 130
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 3159
    :cond_2
    const/4 v1, 0x2

    new-array v5, v1, [I

    .line 3160
    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3161
    new-instance v1, Lfuc;

    invoke-direct {v1}, Lfuc;-><init>()V

    .line 3162
    sget-object v6, Lfub$2;->a:[I

    iget-object v7, v2, Lfub;->f:Lcom/alibaba/android/user/namecard/guide/LightType;

    invoke-virtual {v7}, Lcom/alibaba/android/user/namecard/guide/LightType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :goto_3
    move-object v0, v1

    .line 3181
    goto :goto_2

    .line 3166
    :pswitch_0
    aget v6, v5, v9

    add-int/lit8 v6, v6, 0x0

    iput v6, v1, Lfuc;->c:I

    .line 3167
    aget v5, v5, v10

    add-int/lit8 v5, v5, 0x0

    iput v5, v1, Lfuc;->d:I

    .line 3168
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    iput v5, v1, Lfuc;->a:I

    .line 3169
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iput v0, v1, Lfuc;->b:I

    goto :goto_3

    .line 3172
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3173
    iput v6, v1, Lfuc;->a:I

    .line 3174
    iput v6, v1, Lfuc;->b:I

    .line 3175
    aget v7, v5, v9

    add-int/lit8 v7, v7, 0x0

    iput v7, v1, Lfuc;->c:I

    .line 3176
    aget v5, v5, v10

    add-int/lit8 v5, v5, 0x0

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v6, v0

    add-int/lit8 v0, v0, 0x0

    sub-int v0, v5, v0

    iput v0, v1, Lfuc;->d:I

    goto :goto_3

    .line 2191
    :cond_3
    iget-object v0, v2, Lfub;->b:Lcom/alibaba/android/user/namecard/guide/GuideView;

    iget-object v1, v2, Lfub;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/guide/GuideView;->setViewInfos(Ljava/util/List;)V

    .line 2208
    iget-object v0, v2, Lfub;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, v2, Lfub;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, v2, Lfub;->h:I

    iget-object v1, v2, Lfub;->e:Ljava/util/List;

    .line 2209
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget v0, v2, Lfub;->h:I

    iget-object v1, v2, Lfub;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2210
    iget-object v0, v2, Lfub;->e:Ljava/util/List;

    iget v1, v2, Lfub;->h:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfud;

    iget-object v1, v2, Lfub;->c:Ljava/util/List;

    iget v3, v2, Lfub;->h:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfuc;

    iget-object v3, v2, Lfub;->b:Lcom/alibaba/android/user/namecard/guide/GuideView;

    invoke-virtual {v0, v1, v3}, Lfud;->a(Lfuc;Landroid/view/ViewGroup;)V

    .line 2212
    :cond_4
    iget-object v0, v2, Lfub;->b:Lcom/alibaba/android/user/namecard/guide/GuideView;

    iget-object v1, v2, Lfub;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/guide/GuideView;->setLayoutStyles(Ljava/util/List;)V

    .line 2214
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2217
    iget-object v1, v2, Lfub;->a:Landroid/view/ViewGroup;

    iget-object v2, v2, Lfub;->b:Lcom/alibaba/android/user/namecard/guide/GuideView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    return-void

    .line 3162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
