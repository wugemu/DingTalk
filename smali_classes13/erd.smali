.class public final Lerd;
.super Leqq;
.source "GlobalAssureSearchPresenter.java"

# interfaces
.implements Lere$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lere$b;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "view"    # Lere$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0}, Leqq;-><init>()V

    .line 23
    const-string/jumbo v0, "activity = null"

    invoke-static {p1, v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string/jumbo v0, "view = null"

    invoke-static {p2, v0}, Lcom/alibaba/doraemon/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Lerd;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 26
    iput-object p2, p0, Lerd;->b:Leqp$b;

    .line 27
    iget-object v0, p0, Lerd;->b:Leqp$b;

    invoke-interface {v0, p0}, Leqp$b;->setPresenter(Lcjd;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0}, Lerd;->r()V

    .line 38
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyWord"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    iput-object p1, p0, Lerd;->e:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public final r()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lerd;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v3}, Lcom/alibaba/android/search/fragment/ContactDetailSearchFragment;->a(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-static {}, Lenf;->a()Lenh;

    move-result-object v2

    .line 49
    .local v2, "presenter":Lenh;
    if-eqz v2, :cond_0

    .line 51
    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    .line 52
    .local v0, "eventButler":Lcom/alibaba/doraemon/eventbus/EventButler;
    new-instance v3, Lerd$1;

    invoke-direct {v3, p0}, Lerd$1;-><init>(Lerd;)V

    const-class v4, Lcov;

    iget-object v5, p0, Lerd;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcov;

    .line 68
    .local v1, "listener":Lcov;, "Lcov<Ljava/util/Collection<Lcom/alibaba/android/search/assure/model/AssureModel;>;>;"
    iget-object v3, p0, Lerd;->e:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lenh;->a(Ljava/lang/String;Lcov;)V

    goto :goto_0
.end method
