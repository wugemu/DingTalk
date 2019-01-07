.class public final Lgco;
.super Lgcq;
.source "SpaceMessageFavorite.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lgcq;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    .line 24
    iget-object v0, p0, Lgco;->d:Lcky;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x1f6

    if-ne v0, v1, :cond_0

    .line 26
    iget-object v0, p0, Lgco;->d:Lcky;

    invoke-static {p3}, Lgpt;->c(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    .line 1075
    iput-wide v2, v0, Lcky;->g:J

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 38
    iget-object v0, p0, Lgco;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgco;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v0, :cond_0

    .line 39
    iget-object v1, p0, Lgco;->a:Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    iget-object v2, p0, Lgco;->e:Landroid/content/Context;

    iget-object v3, p0, Lgco;->d:Lcky;

    iget-object v0, p0, Lgco;->g:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v4, p0, Lgco;->f:Lcma;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    .line 41
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
    .line 32
    .local p1, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-super {p0, p1}, Lgcq;->a(Lcma;)V

    .line 33
    invoke-virtual {p0, p1}, Lgco;->b(Lcma;)V

    .line 34
    return-void
.end method

.method public final b()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 45
    invoke-virtual {p0}, Lgco;->c()V

    .line 46
    iget-object v1, p0, Lgco;->g:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgco;->g:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v1, :cond_0

    .line 47
    iget-object v2, p0, Lgco;->d:Lcky;

    iget-object v1, p0, Lgco;->g:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v2, v1}, Lgap;->a(Lcky;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
