.class final Lexm$34;
.super Ljava/util/TimerTask;
.source "VideoConfPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexm;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lexm;


# direct methods
.method constructor <init>(Lexm;)V
    .locals 0
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 2328
    iput-object p1, p0, Lexm$34;->a:Lexm;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 2331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2332
    .local v2, "destPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lexm$34;->a:Lexm;

    invoke-static {v5}, Lexm;->l(Lexm;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lexm$34;->a:Lexm;

    invoke-static {v5}, Lexm;->l(Lexm;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2333
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lexm$34;->a:Lexm;

    invoke-static {v5}, Lexm;->l(Lexm;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 2334
    iget-object v5, p0, Lexm$34;->a:Lexm;

    invoke-static {v5}, Lexm;->l(Lexm;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 2335
    .local v4, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-nez v5, :cond_1

    .line 2333
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2338
    :cond_1
    iget-object v5, v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v5}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v1

    .line 2339
    .local v1, "currState":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING_FAIL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-static {v1, v5}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->changeState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Z

    move-result v0

    .line 2340
    .local v0, "canChange":Z
    if-eqz v0, :cond_0

    .line 2341
    iget-object v5, v4, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    sget-object v6, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING_FAIL:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->setUserState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)V

    .line 2343
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2347
    .end local v0    # "canChange":Z
    .end local v1    # "currState":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;
    .end local v3    # "i":I
    .end local v4    # "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lexm$34;->a:Lexm;

    invoke-static {v5}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2348
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "Call timeout "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lexm$34$1;

    invoke-direct {v6, p0, v2}, Lexm$34$1;-><init>(Lexm$34;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2356
    :cond_3
    return-void
.end method
