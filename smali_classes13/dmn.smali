.class public final Ldmn;
.super Ldmd;
.source "QuickPraiseSceneRender.java"


# instance fields
.field e:Ldkj;

.field f:Ljava/lang/String;

.field private g:Ldct$a;


# direct methods
.method public constructor <init>(Ldkj;)V
    .locals 2
    .param p1, "quickPraiseController"    # Ldkj;

    .prologue
    .line 41
    invoke-direct {p0}, Ldmd;-><init>()V

    .line 119
    new-instance v0, Ldmn$1;

    invoke-direct {v0, p0}, Ldmn$1;-><init>(Ldmn;)V

    iput-object v0, p0, Ldmn;->g:Ldct$a;

    .line 42
    iput-object p1, p0, Ldmn;->e:Ldkj;

    .line 43
    iget-object v0, p0, Ldmn;->e:Ldkj;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Ldmn;->e:Ldkj;

    iget-object v1, p0, Ldmn;->g:Ldct$a;

    .line 1719
    iput-object v1, v0, Ldkj;->p:Ldct$a;

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Ldmn;->e:Ldkj;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Ldmn;->e:Ldkj;

    .line 3709
    iget-boolean v0, v0, Ldkj;->h:Z

    .line 60
    if-nez v0, :cond_0

    iget-object v0, p0, Ldmn;->e:Ldkj;

    .line 3714
    iget-boolean v0, v0, Ldkj;->m:Z

    .line 60
    if-eqz v0, :cond_1

    .line 61
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;->ANIMATING:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

    .line 64
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;->NORMAL:Lcom/alibaba/android/dingtalkim/imtools/scene/SceneRender$STATE;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 7
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 50
    invoke-super {p0, p1}, Ldmd;->a(Lcom/alibaba/wukong/im/Conversation;)V

    .line 51
    iget-object v0, p0, Ldmn;->e:Ldkj;

    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Ldmn;->e:Ldkj;

    .line 2154
    iput-object p1, v1, Ldkj;->r:Lcom/alibaba/wukong/im/Conversation;

    .line 2155
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v2, "f_im_praise_belong_org"

    .line 3083
    invoke-virtual {v0, v2, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 2155
    if-nez v0, :cond_1

    .line 2156
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "FeatureSwitchManager"

    aput-object v4, v2, v3

    const-string/jumbo v3, "f_im_praise_belong_org closed"

    aput-object v3, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_0
    iget-object v0, p0, Ldmn;->e:Ldkj;

    .line 3283
    invoke-virtual {v0}, Ldkj;->a()V

    .line 55
    :cond_0
    return-void

    .line 2159
    :cond_1
    iget-object v0, v1, Ldkj;->q:Ldki;

    if-nez v0, :cond_3

    .line 2160
    new-instance v0, Ldki;

    invoke-direct {v0, p1}, Ldki;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iput-object v0, v1, Ldkj;->q:Ldki;

    .line 2164
    :cond_2
    :goto_1
    iget-object v2, v1, Ldkj;->q:Ldki;

    iget-object v3, v1, Ldkj;->l:Ldro;

    const-string/jumbo v0, "EVENTBUTLER"

    .line 2165
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    iget-object v4, v1, Ldkj;->s:Ldki$a;

    const-class v5, Ldki$a;

    iget-object v6, v1, Ldkj;->j:Landroid/app/Activity;

    invoke-interface {v0, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldki$a;

    .line 2164
    invoke-virtual {v2, v3, v0}, Ldki;->a(Ldro;Ldki$a;)Ldro;

    move-result-object v0

    iput-object v0, v1, Ldkj;->l:Ldro;

    goto :goto_0

    .line 2162
    :cond_3
    iget-object v0, v1, Ldkj;->q:Ldki;

    .line 3195
    iget-object v2, v0, Ldki;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eq v2, p1, :cond_2

    .line 3198
    iput-object p1, v0, Ldki;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 3199
    iput-boolean v5, v0, Ldki;->b:Z

    goto :goto_1
.end method

.method public final a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
    .locals 6
    .param p2, "dataType"    # Lcom/alibaba/wukong/im/MessageListener$DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/im/MessageListener$DataType;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-super {p0, p1, p2}, Ldmd;->a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    .line 101
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ldmn;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 103
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 104
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ldmn;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 107
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ldmn;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ldmn;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v1, p0, Ldmn;->e:Ldkj;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Ldmn;->e:Ldkj;

    invoke-virtual {v1}, Ldkj;->a()V

    .line 117
    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Ldmd;->f()V

    .line 207
    iget-object v0, p0, Ldmn;->e:Ldkj;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Ldmn;->e:Ldkj;

    .line 7723
    invoke-virtual {v0}, Ldkj;->c()V

    .line 210
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Ldmn;->e:Ldkj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldmn;->e:Ldkj;

    .line 4195
    iget-object v0, v0, Ldkj;->a:Landroid/view/View;

    .line 69
    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Ldmn;->e:Ldkj;

    .line 5195
    iget-object v0, v0, Ldkj;->a:Landroid/view/View;

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Ldmn;->e:Ldkj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldmn;->e:Ldkj;

    .line 6195
    iget-object v0, v0, Ldkj;->a:Landroid/view/View;

    .line 76
    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Ldmn;->e:Ldkj;

    .line 7195
    iget-object v0, v0, Ldkj;->a:Landroid/view/View;

    .line 77
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ldmn;->e:Ldkj;

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    iget-object v0, p0, Ldmn;->e:Ldkj;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Ldmn;->e:Ldkj;

    .line 7617
    invoke-virtual {v0}, Ldkj;->a()V

    .line 7618
    iget-object v1, v0, Ldkj;->n:Ldpy;

    iget-object v0, v0, Ldkj;->t:Ldpy$a;

    invoke-virtual {v1, v0}, Ldpy;->b(Ldpy$a;)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Ldmn;->e:Ldkj;

    .line 96
    :cond_0
    return-void
.end method
