.class final Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$4;
.super Ljava/lang/Object;
.source "DocScanFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$4;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 481
    const-string/jumbo v0, "DocScanFragment"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "correction taken picture exception : "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " msg : "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    sget v0, Liff$f;->dt_photo_scan_doc_fail:I

    invoke-static {v0}, Lhcn;->a(I)V

    .line 483
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$4;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->k(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)V

    .line 484
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 461
    check-cast p1, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    .line 1464
    if-eqz p1, :cond_0

    .line 1466
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$4;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->g(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1468
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$4;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->h(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1469
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$4;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->i(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1470
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$4;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->i(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$4;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->g(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1471
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$4;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->j(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$4;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->h(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->getCorrectDocPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment$4;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;->k(Lcom/alibaba/dingtalk/doclens/acitvity/DocScanFragment;)V

    .line 461
    return-void

    .line 1473
    :catch_0
    move-exception v0

    const-string/jumbo v0, "DocScanFragment"

    const-string/jumbo v1, "set num red dot image exception"

    .line 2018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
