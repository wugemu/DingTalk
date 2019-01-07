.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$24;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/wukong/im/category/CategoryObject;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$24;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 537
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$24;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 1116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 537
    invoke-interface {v0}, Ldyy$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$24;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 2116
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Z)V

    .line 539
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$24;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$24;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3116
    iget v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m:I

    .line 539
    and-int/lit8 v1, v1, -0x5

    .line 4116
    iput v1, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m:I

    .line 542
    :cond_0
    const-string/jumbo v0, "SessionPresenter"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[Presenter] loadSessionByCategory fail s:"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " s1:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 513
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 513
    check-cast p1, Ljava/util/List;

    .line 5516
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$24;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 6116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 5516
    invoke-interface {v1}, Ldyy$b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5517
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "load session by category suc activity null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5518
    :goto_0
    return-void

    .line 5521
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5523
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$24;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 7116
    iput-boolean v0, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->h:Z

    .line 5524
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$24;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 8116
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 5524
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$24;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 9116
    iget-boolean v3, v3, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->h:Z

    .line 5524
    invoke-interface {v2, v3}, Ldyy$b;->a(Z)V

    .line 5525
    const-string/jumbo v2, "im"

    sget-object v3, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->l:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "load session by category suc size :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5527
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$24;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 10116
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 5527
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-interface {v2, v0}, Ldyy$b;->e(Z)V

    .line 5528
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$24;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 11116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 5528
    invoke-interface {v0}, Ldyy$b;->i()V

    .line 5530
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$24;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 12116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 5530
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5531
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$24;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 13116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 5531
    invoke-interface {v0}, Ldyy$b;->a()V

    .line 5532
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$24;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 14116
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->d(Ljava/util/List;)V

    goto :goto_0

    .line 5527
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
