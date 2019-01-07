.class public final Lgci;
.super Lgcq;
.source "MailMessageFavorite.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lgcq;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 40
    iget-object v0, p0, Lgci;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgci;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    if-eqz v0, :cond_0

    .line 41
    iget-object v1, p0, Lgci;->a:Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    iget-object v2, p0, Lgci;->e:Landroid/content/Context;

    iget-object v3, p0, Lgci;->d:Lcky;

    iget-object v0, p0, Lgci;->g:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    iget-object v4, p0, Lgci;->f:Lcma;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;Lcma;)V

    .line 43
    :cond_0
    return-void
.end method

.method public final a(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-super {p0, p1}, Lgcq;->a(Lcma;)V

    .line 25
    invoke-virtual {p0, p1}, Lgci;->b(Lcma;)V

    .line 26
    return-void
.end method

.method public final b()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 30
    invoke-virtual {p0}, Lgci;->c()V

    .line 31
    iget-object v1, p0, Lgci;->g:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgci;->g:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    if-eqz v1, :cond_0

    .line 32
    iget-object v2, p0, Lgci;->d:Lcky;

    iget-object v1, p0, Lgci;->g:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    invoke-static {v2, v1}, Lgap;->a(Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
