.class final Lazw$5;
.super Ljava/lang/Object;
.source "DingCommentPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazw;->a(JLjava/util/Map;JLjava/lang/String;)V
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
    .line 237
    iput-object p1, p0, Lazw$5;->b:Lazw;

    iput-object p2, p0, Lazw$5;->a:Lcom/alibaba/android/ding/base/objects/CommentObject;

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
    .line 237
    check-cast p1, Lbdy;

    .line 1240
    iget-object v0, p0, Lazw$5;->b:Lazw;

    iget-object v1, p0, Lazw$5;->a:Lcom/alibaba/android/ding/base/objects/CommentObject;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lazw;->a(Lazw;Lcom/alibaba/android/ding/base/objects/CommentObject;Lbdy;Z)V

    .line 237
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 249
    invoke-static {}, Lazw;->d()Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "err code "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lazw$5;->b:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    invoke-interface {v0}, Lazv$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lazw$5;->b:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    invoke-interface {v0}, Lazv$b;->H_()V

    .line 253
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 245
    return-void
.end method
