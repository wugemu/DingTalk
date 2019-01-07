.class final Lflj$4;
.super Ljava/lang/Object;
.source "ManagerOrgCustomizePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lflj;


# direct methods
.method constructor <init>(Lflj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lflj;

    .prologue
    .line 265
    iput-object p1, p0, Lflj$4;->c:Lflj;

    iput-object p2, p0, Lflj$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lflj$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 265
    .line 3268
    iget-object v0, p0, Lflj$4;->c:Lflj;

    .line 4043
    iget-object v0, v0, Lflj;->f:Lfli$b;

    .line 3268
    if-eqz v0, :cond_0

    iget-object v0, p0, Lflj$4;->c:Lflj;

    .line 5043
    iget-object v0, v0, Lflj;->f:Lfli$b;

    .line 3268
    invoke-interface {v0}, Lfli$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3269
    :cond_0
    :goto_0
    return-void

    .line 3271
    :cond_1
    iget-object v0, p0, Lflj$4;->c:Lflj;

    .line 6043
    iget-object v0, v0, Lflj;->f:Lfli$b;

    .line 3271
    invoke-interface {v0}, Lfli$b;->H_()V

    .line 3273
    const/4 v4, 0x0

    .line 3275
    :try_start_0
    iget-object v0, p0, Lflj$4;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 3279
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3282
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 3283
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v0

    .line 3284
    sget v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    sget v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    invoke-virtual {v0, v4, v1, v3}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 3285
    iget-object v1, p0, Lflj$4;->c:Lflj;

    .line 7043
    iget-object v1, v1, Lflj;->d:Ljava/lang/String;

    .line 3285
    sget v5, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    sget v6, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    invoke-virtual {v0, v1, v5, v6}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 3289
    const-string/jumbo v0, "ManageOrgCustomizePresenter"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    new-instance v0, Lflj$4$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lflj$4$1;-><init>(Lflj$4;Lcom/alibaba/doraemon/image/ImageMagician;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3276
    :catch_0
    move-exception v0

    .line 3277
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v0, p0, Lflj$4;->c:Lflj;

    .line 1043
    iget-object v0, v0, Lflj;->f:Lfli$b;

    .line 335
    if-eqz v0, :cond_0

    iget-object v0, p0, Lflj$4;->c:Lflj;

    .line 2043
    iget-object v0, v0, Lflj;->f:Lfli$b;

    .line 335
    invoke-interface {v0}, Lfli$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lflj$4;->c:Lflj;

    .line 3043
    iget-object v0, v0, Lflj;->f:Lfli$b;

    .line 336
    invoke-interface {v0}, Lfli$b;->H_()V

    .line 337
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 331
    return-void
.end method
