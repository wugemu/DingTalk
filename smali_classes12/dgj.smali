.class public final Ldgj;
.super Ljava/lang/Object;
.source "ChatListDetailPresenter.java"

# interfaces
.implements Ldgi$a;


# instance fields
.field a:Landroid/app/Activity;

.field b:Ldgi$b;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:J

.field private g:Landroid/content/BroadcastReceiver;

.field private h:Ldnf;

.field private i:Lldm;

.field private j:Ldne;

.field private k:Ldxc;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;JLdgi$b;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "forwardSeed"    # J
    .param p5, "view"    # Ldgi$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;",
            ">;J",
            "Ldgi$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Ldgj;->a:Landroid/app/Activity;

    .line 78
    iput-object p2, p0, Ldgj;->c:Ljava/util/List;

    .line 79
    iput-wide p3, p0, Ldgj;->f:J

    .line 80
    iput-object p5, p0, Ldgj;->b:Ldgi$b;

    .line 81
    iget-object v0, p0, Ldgj;->b:Ldgi$b;

    invoke-interface {v0, p0}, Ldgi$b;->setPresenter(Lcjd;)V

    .line 83
    new-instance v0, Ldne;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ldne;-><init>(I)V

    iput-object v0, p0, Ldgj;->j:Ldne;

    .line 84
    iget-object v0, p0, Ldgj;->j:Ldne;

    invoke-static {v0}, Ldna;->a(Ldne;)Lldm;

    move-result-object v0

    iput-object v0, p0, Ldgj;->i:Lldm;

    .line 85
    new-instance v0, Ldnf;

    const-wide/16 v2, 0xc8

    iget-object v1, p0, Ldgj;->j:Ldne;

    invoke-direct {v0, v2, v3, v1}, Ldnf;-><init>(JLdne;)V

    iput-object v0, p0, Ldgj;->h:Ldnf;

    .line 86
    new-instance v0, Ldxc;

    const-string/jumbo v1, "md-instant-render-combine"

    const/4 v2, 0x1

    sget-object v3, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-direct {v0, v1, v2, v3}, Ldxc;-><init>(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)V

    iput-object v0, p0, Ldgj;->k:Ldxc;

    .line 87
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    iget-object v1, p0, Ldgj;->c:Ljava/util/List;

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Ldgj;->b:Ldgi$b;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ldgi$b;->a(Ljava/util/List;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Ldgj;->b:Ldgi$b;

    invoke-interface {v1}, Ldgi$b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v0, Ldgj$1;

    invoke-direct {v0, p0}, Ldgj$1;-><init>(Ldgj;)V

    .line 105
    .local v0, "onLoadResult":Ldnf$a;
    iget-object v1, p0, Ldgj;->a:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 106
    const-class v1, Ldnf$a;

    iget-object v2, p0, Ldgj;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    .line 108
    :cond_2
    iget-object v1, p0, Ldgj;->h:Ldnf;

    iget-object v2, p0, Ldgj;->c:Ljava/util/List;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->toMessageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ldnf;->a(Ljava/lang/Object;Ldnf$a;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/ScrollView;)V
    .locals 3
    .param p1, "scrollView"    # Landroid/widget/ScrollView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    iget-object v1, p0, Ldgj;->b:Ldgi$b;

    invoke-interface {v1}, Ldgi$b;->a()V

    .line 184
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Ldgj;->b:Ldgi$b;

    invoke-interface {v1}, Ldgi$b;->b()V

    .line 156
    invoke-static {p1}, Ldgk;->a(Landroid/widget/ScrollView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 158
    sget v1, Lctk$i;->dt_save_failed:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 159
    iget-object v1, p0, Ldgj;->b:Ldgi$b;

    invoke-interface {v1}, Ldgi$b;->H_()V

    goto :goto_0

    .line 162
    :cond_1
    const-string/jumbo v1, "screenshot"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Ldgj$3;

    invoke-direct {v2, p0, v0}, Ldgj$3;-><init>(Ldgj;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    if-eqz p1, :cond_1

    .line 115
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 116
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 117
    .local v2, "uid":J
    new-instance v0, Ldgj$2;

    invoke-direct {v0, p0, p1}, Ldgj$2;-><init>(Ldgj;Lcom/alibaba/wukong/im/Conversation;)V

    .line 138
    .local v0, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget-object v1, p0, Ldgj;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 139
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v4, Lcma;

    iget-object v5, p0, Ldgj;->a:Landroid/app/Activity;

    invoke-interface {v1, v0, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    check-cast v0, Lcma;

    .line 141
    .restart local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 147
    .end local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .end local v2    # "uid":J
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldgj;->e:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Ldgj;->b:Ldgi$b;

    iget-object v4, p0, Ldgj;->e:Ljava/lang/String;

    invoke-interface {v1, v4}, Ldgi$b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V
    .locals 7
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 230
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    new-instance v0, Ldpa;

    invoke-direct {v0}, Ldpa;-><init>()V

    iget-object v1, p0, Ldgj;->a:Landroid/app/Activity;

    iget-wide v4, p0, Ldgj;->f:J

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Ldpa;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    iget-object v1, p0, Ldgj;->g:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 189
    new-instance v1, Ldgj$4;

    invoke-direct {v1, p0}, Ldgj$4;-><init>(Ldgj;)V

    iput-object v1, p0, Ldgj;->g:Landroid/content/BroadcastReceiver;

    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.alibaba.dingtalk.cspace.savefile2space"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string/jumbo v1, "action_ding_create_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string/jumbo v1, "com.workapp.conversation.FORWARD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Ldgj;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 226
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public final b(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)V
    .locals 4
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    iget-object v0, p0, Ldgj;->a:Landroid/app/Activity;

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, p2, v2, v3}, Ldjm;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;J)V

    .line 239
    return-void
.end method

.method public final c()Lldm;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Ldgj;->i:Lldm;

    return-object v0
.end method

.method public final d()Ldne;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Ldgj;->j:Ldne;

    return-object v0
.end method

.method public final e()Ldxc;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Ldgj;->k:Ldxc;

    return-object v0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    iget-object v0, p0, Ldgj;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 274
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Ldgj;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Ldgj;->g:Landroid/content/BroadcastReceiver;

    .line 278
    :cond_0
    iget-object v0, p0, Ldgj;->h:Ldnf;

    invoke-virtual {v0}, Ldnf;->a()V

    .line 279
    iget-object v0, p0, Ldgj;->j:Ldne;

    invoke-virtual {v0}, Ldne;->a()V

    .line 280
    iget-object v0, p0, Ldgj;->k:Ldxc;

    invoke-virtual {v0}, Ldxc;->a()V

    .line 282
    return-void
.end method
