.class final Lhdw$3;
.super Ljava/lang/Object;
.source "CommentDelegate.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdw;
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
        "Lgqx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lhdw;


# direct methods
.method constructor <init>(Lhdw;Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lhdw;

    .prologue
    .line 173
    iput-object p1, p0, Lhdw$3;->c:Lhdw;

    iput-object p2, p0, Lhdw$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    iput-object p3, p0, Lhdw$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 173
    check-cast p1, Lgqx;

    .line 1176
    iget-object v0, p0, Lhdw$3;->c:Lhdw;

    invoke-static {v0}, Lhdw;->f(Lhdw;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1177
    iget-object v0, p0, Lhdw$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    iget-object v1, p1, Lgqx;->i:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1177
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setCommentCount(J)V

    .line 1178
    iget-object v0, p0, Lhdw$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    iget-object v1, p1, Lgqx;->j:Ljava/lang/Long;

    .line 3044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 1178
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setLikeGoodCount(J)V

    .line 1179
    iget-object v0, p0, Lhdw$3;->c:Lhdw;

    invoke-static {v0}, Lhdw;->b(Lhdw;)Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setVisibility(I)V

    .line 173
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 190
    iget-object v0, p0, Lhdw$3;->c:Lhdw;

    invoke-static {v0}, Lhdw;->g(Lhdw;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string/jumbo v0, "14020013"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lhdw$3;->c:Lhdw;

    invoke-static {v0}, Lhdw;->b(Lhdw;)Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setVisibility(I)V

    .line 200
    :cond_1
    :goto_1
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "info topic: "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "info topic error---errorCode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "--objectId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lhdw$3;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_2
    invoke-static {}, Lhdw;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lhdw$3;->c:Lhdw;

    invoke-static {v0}, Lhdw;->b(Lhdw;)Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 186
    return-void
.end method
