.class final Lazw$8;
.super Ljava/lang/Object;
.source "DingCommentPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazw;->a(Lcom/alibaba/android/ding/base/objects/CommentObject;)V
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
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/CommentObject;

.field final synthetic b:Lazw;


# direct methods
.method constructor <init>(Lazw;Lcom/alibaba/android/ding/base/objects/CommentObject;)V
    .locals 0
    .param p1, "this$0"    # Lazw;

    .prologue
    .line 373
    iput-object p1, p0, Lazw$8;->b:Lazw;

    iput-object p2, p0, Lazw$8;->a:Lcom/alibaba/android/ding/base/objects/CommentObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 373
    .line 1376
    iget-object v0, p0, Lazw$8;->b:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    invoke-interface {v0}, Lazv$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1379
    iget-object v0, p0, Lazw$8;->b:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    invoke-interface {v0}, Lazv$b;->H_()V

    .line 1380
    iget-object v0, p0, Lazw$8;->b:Lazw;

    invoke-static {v0}, Lazw;->e(Lazw;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1381
    iget-object v0, p0, Lazw$8;->b:Lazw;

    invoke-static {v0}, Lazw;->e(Lazw;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    iget-object v1, p0, Lazw$8;->b:Lazw;

    invoke-static {v1}, Lazw;->e(Lazw;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->V()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f(J)V

    .line 1383
    :cond_0
    iget-object v0, p0, Lazw$8;->b:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    iget-object v1, p0, Lazw$8;->a:Lcom/alibaba/android/ding/base/objects/CommentObject;

    invoke-interface {v0, v1}, Lazv$b;->a(Lcom/alibaba/android/ding/base/objects/CommentObject;)V

    .line 373
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 392
    iget-object v0, p0, Lazw$8;->b:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    invoke-interface {v0}, Lazv$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lazw$8;->b:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxp$i;->dt_ding_delete_comment_failed:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lazv$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lazw$8;->b:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    invoke-interface {v0}, Lazv$b;->H_()V

    .line 396
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 388
    return-void
.end method
