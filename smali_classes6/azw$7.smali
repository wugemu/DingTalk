.class final Lazw$7;
.super Ljava/lang/Object;
.source "DingCommentPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazw;->b(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;JJ)V
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
        "Lbdy;",
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
    .line 317
    iput-object p1, p0, Lazw$7;->b:Lazw;

    iput-object p2, p0, Lazw$7;->a:Lcom/alibaba/android/ding/base/objects/CommentObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 317
    check-cast p1, Lbdy;

    .line 1320
    iget-object v0, p0, Lazw$7;->b:Lazw;

    iget-object v1, p0, Lazw$7;->a:Lcom/alibaba/android/ding/base/objects/CommentObject;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lazw;->a(Lazw;Lcom/alibaba/android/ding/base/objects/CommentObject;Lbdy;Z)V

    .line 317
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v0, p0, Lazw$7;->b:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    invoke-interface {v0}, Lazv$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    sget v0, Laxp$i;->dt_ding_file_comment_upload_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 333
    iget-object v0, p0, Lazw$7;->b:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    invoke-interface {v0}, Lazv$b;->H_()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 325
    return-void
.end method