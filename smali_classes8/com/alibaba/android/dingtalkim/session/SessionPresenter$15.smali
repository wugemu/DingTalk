.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$15;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/im/ConversationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b()Lcom/alibaba/wukong/im/ConversationListener;
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
    .line 1395
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$15;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1398
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1399
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$15;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;Z)V

    .line 1400
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$15;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Ljava/util/List;)V

    .line 1401
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$15;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 2116
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b(Ljava/util/List;)V

    .line 1402
    return-void
.end method

.method public final onRefreshed(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1413
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$15;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3608
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->d:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_0

    .line 3609
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 3610
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->d(Ljava/util/List;)V

    .line 1414
    :cond_0
    return-void
.end method

.method public final onRemoved(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1406
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-static {p1}, Leax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1407
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$15;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;Z)V

    .line 1408
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$15;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;)V

    .line 1409
    return-void
.end method
