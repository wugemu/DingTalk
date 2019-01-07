.class public final Lgcb;
.super Lgcq;
.source "AnnounceMessageFavorite.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lgcq;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    .line 23
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 38
    iget-object v2, p0, Lgcb;->g:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgcb;->g:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    if-eqz v2, :cond_0

    .line 39
    iget-object v0, p0, Lgcb;->g:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    .line 40
    .local v0, "announce":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    iget-object v3, p0, Lgcb;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .end local v0    # "announce":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 33
    invoke-direct {p0}, Lgcb;->d()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lgcb;->a:Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    iget-object v2, p0, Lgcb;->e:Landroid/content/Context;

    iget-object v3, p0, Lgcb;->d:Lcky;

    iget-object v4, p0, Lgcb;->f:Lcma;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcky;Ljava/lang/String;Lcma;)V

    .line 35
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
    .line 27
    .local p1, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-super {p0, p1}, Lgcq;->a(Lcma;)V

    .line 28
    invoke-virtual {p0, p1}, Lgcb;->b(Lcma;)V

    .line 29
    return-void
.end method

.method public final b()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 50
    invoke-virtual {p0}, Lgcb;->c()V

    .line 51
    invoke-direct {p0}, Lgcb;->d()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lgcb;->d:Lcky;

    invoke-static {v2, v0}, Lgap;->a(Lcky;Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v1

    .line 53
    .local v1, "favViewModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    return-object v1
.end method
