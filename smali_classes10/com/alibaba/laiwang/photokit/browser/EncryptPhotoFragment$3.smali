.class final Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$3;
.super Lgl;
.source "EncryptPhotoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$3;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-direct {p0}, Lgl;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 398
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    .line 401
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    invoke-virtual {v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a()V

    .line 405
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 408
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$3;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->w:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 409
    return-void
.end method

.method public final getCount()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, "size":I
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$3;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->b(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$3;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->b(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 345
    :cond_0
    return v0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 362
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$3;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->b(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$3;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->b(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 364
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 368
    .end local v0    # "index":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 376
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$3;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->w:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 377
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$3;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->w:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 378
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 385
    .local v0, "holder":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 387
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$3;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;

    .line 388
    .local v1, "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;)V

    .line 1259
    iget-object v3, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 390
    if-eqz v3, :cond_0

    .line 2259
    iget-object v3, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 391
    iget-object v4, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$3;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    sget v5, Liff$f;->pulldown_index_text:I

    invoke-virtual {v4, v5}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, p2, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$3;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 394
    :cond_0
    return-object v2

    .line 380
    .end local v0    # "holder":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;
    .end local v1    # "ppc":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$3;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-virtual {v3}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Liff$e;->pic_gallery_pager:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 381
    .restart local v2    # "view":Landroid/view/View;
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    invoke-direct {v0, v2}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;-><init>(Landroid/view/View;)V

    .line 382
    .restart local v0    # "holder":Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 350
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
