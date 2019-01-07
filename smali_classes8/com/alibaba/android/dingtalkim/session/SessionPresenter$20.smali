.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$20;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Lcom/alibaba/doraemon/lifecycle/APPStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$20;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnterBackground()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$20;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 2390
    iget-boolean v0, v4, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2392
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    move v1, v2

    .line 2393
    :goto_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2394
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 2395
    if-eqz v0, :cond_2

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v6, :cond_2

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 2775
    invoke-virtual {v4, v0, v2, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/wukong/im/Conversation;ZZ)Z

    move-result v0

    .line 2396
    if-eqz v0, :cond_2

    .line 2398
    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    move v0, v3

    :goto_1
    move v1, v0

    .line 2400
    goto :goto_0

    .line 2401
    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0}, Ldyy$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2402
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0}, Ldyy$b;->a()V

    .line 2403
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2404
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0, v3}, Ldyy$b;->e(Z)V

    .line 289
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final onEnterForeground()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$20;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3116
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->e()V

    .line 294
    return-void
.end method
