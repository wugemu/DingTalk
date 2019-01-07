.class public abstract Lgcj;
.super Ljava/lang/Object;
.source "MessageFavorite.java"


# instance fields
.field protected a:Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

.field protected b:Lcom/alibaba/wukong/im/Message;

.field protected c:Lcom/alibaba/wukong/im/Conversation;

.field protected d:Lcky;

.field protected e:Landroid/content/Context;

.field protected f:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lgcj$2;

    invoke-direct {v0, p0}, Lgcj$2;-><init>(Lgcj;)V

    iput-object v0, p0, Lgcj;->g:Lcma;

    .line 32
    iput-object p1, p0, Lgcj;->e:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lgcj;->b:Lcom/alibaba/wukong/im/Message;

    .line 34
    iput-object p3, p0, Lgcj;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 35
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->b()Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    move-result-object v0

    iput-object v0, p0, Lgcj;->a:Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    .line 1044
    new-instance v1, Lcky;

    const-string/jumbo v0, "IM"

    invoke-direct {v1, v0}, Lcky;-><init>(Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lgcj;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lgcj;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 2055
    :goto_0
    iput-object v0, v1, Lcky;->a:Ljava/lang/String;

    .line 1046
    iget-object v0, p0, Lgcj;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1047
    iget-object v0, p0, Lgcj;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lgcj;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v0

    .line 2103
    :goto_1
    iput-object v0, v1, Lcky;->b:Ljava/lang/String;

    .line 1049
    :cond_0
    iget-object v0, p0, Lgcj;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 3083
    iput-object v0, v1, Lcky;->h:Ljava/lang/String;

    .line 1050
    iget-object v0, p0, Lgcj;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    .line 4067
    iput-wide v2, v1, Lcky;->c:J

    .line 1051
    iget-object v0, p0, Lgcj;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 1053
    iget-object v0, p0, Lgcj;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lgpt;->c(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    .line 4075
    iput-wide v2, v1, Lcky;->g:J

    .line 36
    :cond_1
    iput-object v1, p0, Lgcj;->d:Lcky;

    .line 37
    return-void

    .line 1045
    :cond_2
    iget-object v0, p0, Lgcj;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1047
    :cond_3
    iget-object v0, p0, Lgcj;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public abstract a(Lcma;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
.end method

.method protected final b(Lcma;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 59
    .local p1, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lgcj;->f:Lcma;

    .line 61
    iget-object v1, p0, Lgcj;->e:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 62
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    iget-object v3, p0, Lgcj;->g:Lcma;

    const-class v4, Lcma;

    iget-object v2, p0, Lgcj;->e:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-interface {v1, v3, v4, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 67
    .local v0, "userListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lgcj;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 68
    return-void

    .line 65
    .end local v0    # "userListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_0
    iget-object v0, p0, Lgcj;->g:Lcma;

    .restart local v0    # "userListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    goto :goto_0
.end method

.method public final c(Lcma;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 71
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lgcj;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    new-instance v1, Lgcj$1;

    invoke-direct {v1, p0, p1}, Lgcj$1;-><init>(Lgcj;Lcma;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 95
    return-void
.end method
