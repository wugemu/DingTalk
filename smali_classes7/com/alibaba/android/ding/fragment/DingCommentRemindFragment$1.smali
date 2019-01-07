.class final Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment$1;
.super Ljava/lang/Object;
.source "DingCommentRemindFragment.java"

# interfaces
.implements Lbaq$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->j()V

    .line 78
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbbm;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 92
    .line 1106
    .local p1, "dingCommentRemindMergeDatas":Ljava/util/List;, "Ljava/util/List<Lbbm;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->isAdded()Z

    move-result v0

    .line 92
    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2087
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->l()V

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->a(Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;)Laye;

    move-result-object v0

    .line 3068
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3069
    iget-object v1, v0, Laye;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3070
    iget-object v1, v0, Laye;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3071
    invoke-virtual {v0}, Laye;->notifyDataSetChanged()V

    goto :goto_0

    .line 100
    :cond_2
    const-string/jumbo v0, ""

    const-string/jumbo v0, ""

    .line 3082
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->k()V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->k()V

    .line 83
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->i()V

    .line 73
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 64
    check-cast p1, Lbaq$d;

    .line 4067
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment$1;->a:Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;->a(Lcom/alibaba/android/ding/fragment/DingCommentRemindFragment;Lbaq$d;)Lbaq$d;

    .line 64
    return-void
.end method
