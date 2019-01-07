.class final Lhdw$2$1;
.super Ljava/lang/Object;
.source "CommentDelegate.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdw$2;->c()V
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
        "Lgqw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhdw$2;


# direct methods
.method constructor <init>(Lhdw$2;)V
    .locals 0
    .param p1, "this$1"    # Lhdw$2;

    .prologue
    .line 135
    iput-object p1, p0, Lhdw$2$1;->a:Lhdw$2;

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
    const/4 v4, 0x0

    .line 135
    .line 1138
    iget-object v0, p0, Lhdw$2$1;->a:Lhdw$2;

    iget-object v0, v0, Lhdw$2;->d:Lhdw;

    invoke-static {v0}, Lhdw;->b(Lhdw;)Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lhdw$2$1;->a:Lhdw$2;

    iget-object v0, v0, Lhdw$2;->d:Lhdw;

    invoke-static {v0}, Lhdw;->b(Lhdw;)Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    move-result-object v0

    iget-object v1, p0, Lhdw$2$1;->a:Lhdw$2;

    iget-object v1, v1, Lhdw$2;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->a(Ljava/lang/String;ZZ)V

    .line 1142
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lhdw$2$1;->a:Lhdw$2;

    iget-object v1, v1, Lhdw$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lhdw$2$1;->a:Lhdw$2;

    iget-object v2, v2, Lhdw$2;->a:Ljava/lang/String;

    invoke-static {v2}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;JZLcma;)V

    .line 135
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
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lhdw$2$1;->a:Lhdw$2;

    iget-object v0, v0, Lhdw$2;->d:Lhdw;

    invoke-static {v0}, Lhdw;->b(Lhdw;)Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lhdw$2$1;->a:Lhdw$2;

    iget-object v0, v0, Lhdw$2;->d:Lhdw;

    invoke-static {v0}, Lhdw;->b(Lhdw;)Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    move-result-object v0

    iget-object v1, p0, Lhdw$2$1;->a:Lhdw$2;

    iget-object v1, v1, Lhdw$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->a(Ljava/lang/String;ZZ)V

    .line 156
    :cond_0
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "likeCancel"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "like cancel error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 148
    return-void
.end method
