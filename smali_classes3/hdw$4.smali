.class final Lhdw$4;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

.field final synthetic b:Lhdw;


# direct methods
.method constructor <init>(Lhdw;Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;)V
    .locals 0
    .param p1, "this$0"    # Lhdw;

    .prologue
    .line 209
    iput-object p1, p0, Lhdw$4;->b:Lhdw;

    iput-object p2, p0, Lhdw$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 209
    check-cast p1, Ljava/lang/Boolean;

    .line 1212
    iget-object v0, p0, Lhdw$4;->b:Lhdw;

    invoke-static {v0}, Lhdw;->b(Lhdw;)Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2022
    invoke-static {p1, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1216
    if-eqz v0, :cond_1

    .line 1217
    iget-object v0, p0, Lhdw$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setLikeGoodSelected(Z)V

    :cond_0
    :goto_0
    return-void

    .line 1219
    :cond_1
    iget-object v0, p0, Lhdw$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView;->setLikeGoodSelected(Z)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 231
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 226
    return-void
.end method
