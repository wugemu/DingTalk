.class final Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;
.super Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;
.source "EncryptPhotoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/alibaba/doraemon/image/ImageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field g:Lcom/alibaba/wukong/im/Message;

.field final synthetic h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

.field private i:Ljava/lang/String;

.field private j:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V
    .locals 1
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "photoObject"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    .line 442
    invoke-direct {p0, p1, p3}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;-><init>(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 698
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a$2;

    invoke-direct {v0, p0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a$2;-><init>(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;)V

    iput-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->j:Lcom/alibaba/wukong/Callback;

    .line 444
    iput-object p2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    .line 445
    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;)Lcom/alibaba/wukong/im/Message;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->i:Ljava/lang/String;

    return-object p1
.end method

.method private q()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->p:Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 7259
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 642
    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/PhotoViewPager;->setMainGestureImageView(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)V

    .line 643
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 8259
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 643
    invoke-virtual {v0, p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 9259
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 644
    invoke-virtual {v0, p0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 646
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 628
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide p1

    .line 631
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(J)V

    .line 632
    return-void
.end method

.method public final a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;)V
    .locals 5
    .param p1, "holder"    # Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 449
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-static {v2, v3}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 450
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-ne v2, p1, :cond_0

    .line 466
    :goto_0
    return-void

    .line 453
    :cond_0
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 455
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g()V

    .line 456
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->f()V

    .line 458
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->q()V

    .line 1649
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->c(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;)Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1651
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 2263
    iget-object v2, v2, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->b:Landroid/view/View;

    .line 1651
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1653
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-static {v2}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->c(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;)Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    new-instance v4, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a$1;

    invoke-direct {v4, p0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a$1;-><init>(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;->getPhotoUrl(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V

    .line 461
    :cond_1
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    if-nez v2, :cond_2

    const-wide/16 v0, 0x0

    .line 462
    .local v0, "id":J
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b(J)Z

    goto :goto_0

    .line 461
    .end local v0    # "id":J
    :cond_2
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    goto :goto_1

    .line 464
    :cond_3
    invoke-super {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4
    .param p1, "isDownloadOrigin"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 507
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    invoke-static {}, Lgzp;->b()Lgzn;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->j:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v1, v3, v3, v2}, Lgzn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(Z)V

    goto :goto_0
.end method

.method public final a(ZLcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p1, "isDownloadOrigin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 518
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    invoke-static {}, Lgzp;->b()Lgzn;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v2, p2}, Lgzn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->a(ZLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;)V
    .locals 4
    .param p1, "holder"    # Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 470
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1, v2}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eq p1, v1, :cond_0

    .line 487
    :goto_0
    return-void

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h()V

    .line 475
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    if-eqz v1, :cond_1

    .line 476
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 3259
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 476
    invoke-virtual {v1, v3}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->setOnImageEventListener(Lcom/davemorrissey/labs/subscaleview/GestureImageView$d;)V

    .line 477
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 4259
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 477
    invoke-virtual {v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->d()V

    .line 478
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 4263
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->b:Landroid/view/View;

    .line 478
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 479
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 480
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 5259
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 480
    invoke-interface {v0, v1, v3, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 481
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    .line 6259
    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .line 481
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Ljava/lang/String;I)V

    .line 483
    .end local v0    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    :cond_1
    iput-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;

    goto :goto_0

    .line 485
    :cond_2
    invoke-super {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b(Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$d;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 4
    .param p1, "isMainPager"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 491
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-static {v2, v3}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 492
    iget-boolean v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->a:Z

    if-ne v2, p1, :cond_0

    .line 503
    :goto_0
    return-void

    .line 495
    :cond_0
    iput-boolean p1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->a:Z

    .line 496
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->q()V

    .line 498
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    .line 499
    .local v0, "id":J
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->b(J)Z

    goto :goto_0

    .line 498
    .end local v0    # "id":J
    :cond_1
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    goto :goto_1

    .line 501
    :cond_2
    invoke-super {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->b(Z)V

    goto :goto_0
.end method

.method public final c()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 529
    invoke-super {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 551
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->c(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;)Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->c(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;)Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;->cancelGet(Lcom/alibaba/wukong/im/Message;)V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    invoke-super {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->d()V

    goto :goto_0
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 562
    invoke-super {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->e()V

    .line 563
    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 535
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-super {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->i()Ljava/lang/String;

    move-result-object v0

    .line 539
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 544
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    invoke-super {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->k()V

    .line 547
    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 567
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Liff$d;->photo_page_view:I

    if-ne v0, v1, :cond_0

    .line 570
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->z:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->z:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$e;

    invoke-interface {v0}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$e;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->a()V

    goto :goto_0

    .line 579
    :cond_2
    invoke-super {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final onDownloadProgressListener(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "progress"    # I
    .param p3, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 614
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->onDownloadProgressListener(Landroid/view/View;ILjava/lang/String;)V

    .line 617
    :cond_0
    return-void
.end method

.method public final onError(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "errCode"    # I
    .param p2, "errDes"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 600
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->onError(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 603
    :cond_0
    return-void
.end method

.method public final onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "size"    # J

    .prologue
    .line 607
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    invoke-super/range {p0 .. p5}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V

    .line 610
    :cond_0
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 585
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    iget-boolean v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-static {v0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->c(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;)Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->b:Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->c(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;)Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;->getPhotoObject(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$c;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 595
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 592
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->onLongClick(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public final onMemoryOverflow(JJ[Ljava/lang/String;)V
    .locals 3
    .param p1, "maxSize"    # J
    .param p3, "currentSize"    # J
    .param p5, "activityStr"    # [Ljava/lang/String;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->g:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    invoke-super/range {p0 .. p5}, Lcom/alibaba/laiwang/photokit/browser/BaseBrowserFragment$a;->onMemoryOverflow(JJ[Ljava/lang/String;)V

    .line 624
    :cond_0
    return-void
.end method
