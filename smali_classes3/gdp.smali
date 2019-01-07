.class public final Lgdp;
.super Ljava/lang/Object;
.source "SpaceCommentPresenter.java"

# interfaces
.implements Lgdn$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgdp$a;
    }
.end annotation


# instance fields
.field a:Lgdn$b;

.field b:Ljava/lang/String;

.field c:Z

.field d:J

.field e:Z

.field f:Landroid/content/Context;

.field public g:I

.field h:J

.field i:Z

.field public j:Lgdp$a;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lgdn$b;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "objectContainerId"    # Ljava/lang/String;
    .param p4, "objectType"    # I
    .param p5, "conversationId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "spaceCommentView"    # Lgdn$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v0, p0, Lgdp;->c:Z

    .line 64
    iput-wide v2, p0, Lgdp;->d:J

    .line 66
    iput-boolean v0, p0, Lgdp;->e:Z

    .line 71
    const/4 v0, 0x3

    iput v0, p0, Lgdp;->g:I

    .line 78
    iput-wide v2, p0, Lgdp;->h:J

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgdp;->i:Z

    .line 87
    iput-object p2, p0, Lgdp;->k:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lgdp;->l:Ljava/lang/String;

    .line 91
    iput p4, p0, Lgdp;->m:I

    .line 93
    iput-object p6, p0, Lgdp;->a:Lgdn$b;

    .line 94
    iput-object p1, p0, Lgdp;->f:Landroid/content/Context;

    .line 96
    iput-object p5, p0, Lgdp;->n:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lgdp;->a:Lgdn$b;

    invoke-interface {v0, p0}, Lgdn$b;->setPresenter(Lcjd;)V

    .line 2341
    iget-object v0, p0, Lgdp;->o:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 2342
    new-instance v0, Lgdp$3;

    invoke-direct {v0, p0}, Lgdp$3;-><init>(Lgdp;)V

    iput-object v0, p0, Lgdp;->o:Landroid/content/BroadcastReceiver;

    .line 2370
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2371
    const-string/jumbo v1, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2373
    iget-object v1, p0, Lgdp;->f:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 2374
    iget-object v1, p0, Lgdp;->f:Landroid/content/Context;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lgdp;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :goto_0
    return-void

    .line 2376
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lgdp;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 113
    .line 2398
    iget-boolean v0, p0, Lgdp;->e:Z

    if-eqz v0, :cond_1

    .line 2399
    iget-object v0, p0, Lgdp;->a:Lgdn$b;

    invoke-interface {v0}, Lgdn$b;->b()V

    .line 115
    :goto_0
    iget-object v0, p0, Lgdp;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lgdp;->a:Lgdn$b;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgdn$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lgdp;->a:Lgdn$b;

    invoke-interface {v0}, Lgdn$b;->a()V

    .line 118
    invoke-virtual {p0}, Lgdp;->c()V

    .line 160
    :cond_0
    :goto_1
    return-void

    .line 2401
    :cond_1
    iget-object v0, p0, Lgdp;->a:Lgdn$b;

    invoke-interface {v0}, Lgdn$b;->k()V

    goto :goto_0

    .line 122
    :cond_2
    iget-boolean v0, p0, Lgdp;->c:Z

    if-nez v0, :cond_3

    .line 124
    iget-object v0, p0, Lgdp;->a:Lgdn$b;

    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->alm_cmail_load_complete:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgdn$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lgdp;->c()V

    goto :goto_1

    .line 129
    :cond_3
    new-instance v7, Lgdp$1;

    invoke-direct {v7, p0}, Lgdp$1;-><init>(Lgdp;)V

    .line 155
    .local v7, "callback":Lcma;, "Lcma<Lgqv;>;"
    iget-object v0, p0, Lgdp;->f:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgdp;->f:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 156
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v0, p0, Lgdp;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v7, v2, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "callback":Lcma;, "Lcma<Lgqv;>;"
    check-cast v7, Lcma;

    .line 159
    .restart local v7    # "callback":Lcma;, "Lcma<Lgqv;>;"
    :cond_4
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v1, p0, Lgdp;->k:Ljava/lang/String;

    iget v2, p0, Lgdp;->m:I

    iget-object v3, p0, Lgdp;->b:Ljava/lang/String;

    .line 2505
    if-eqz v7, :cond_0

    .line 2509
    new-instance v6, Lgon$15;

    invoke-direct {v6, v0, v7}, Lgon$15;-><init>(Lgon;Lcma;)V

    .line 2522
    iget-object v0, v0, Lgon;->b:Lcom/alibaba/dingtalk/cspace/idl/service/CommentIService;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/dingtalk/cspace/idl/service/CommentIService;->listComment(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p2, "atMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 171
    iget-object v0, p0, Lgdp;->a:Lgdn$b;

    invoke-interface {v0}, Lgdn$b;->g()V

    .line 173
    iget-boolean v0, p0, Lgdp;->i:Z

    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgdp;->i:Z

    .line 3384
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lgdp$4;

    invoke-direct {v1, p0}, Lgdp$4;-><init>(Lgdp;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    new-instance v10, Lgdp$2;

    invoke-direct {v10, p0}, Lgdp$2;-><init>(Lgdp;)V

    .line 224
    .local v10, "listener":Lcma;, "Lcma<Lgqw;>;"
    iget-object v0, p0, Lgdp;->f:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgdp;->f:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 225
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    iget-object v0, p0, Lgdp;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v10, v2, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "listener":Lcma;, "Lcma<Lgqw;>;"
    check-cast v10, Lcma;

    .line 228
    .restart local v10    # "listener":Lcma;, "Lcma<Lgqw;>;"
    :cond_1
    invoke-static {p2, p1}, Lgpm;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 230
    .local v7, "willSendContent":Ljava/lang/String;
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v1, p0, Lgdp;->k:Ljava/lang/String;

    iget v2, p0, Lgdp;->m:I

    iget-object v3, p0, Lgdp;->l:Ljava/lang/String;

    iget-wide v4, p0, Lgdp;->d:J

    move-object v6, p2

    move-object v9, v8

    invoke-virtual/range {v0 .. v10}, Lgon;->a(Ljava/lang/String;ILjava/lang/String;JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 252
    iget v0, p0, Lgdp;->m:I

    if-nez v0, :cond_0

    iget v0, p0, Lgdp;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 253
    const/4 v0, 0x0

    .line 257
    :goto_0
    return v0

    .line 256
    :cond_0
    iput-wide p1, p0, Lgdp;->d:J

    .line 257
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 235
    iget-object v0, p0, Lgdp;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgdp;->n:Ljava/lang/String;

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget v0, p0, Lgdp;->m:I

    if-nez v0, :cond_2

    iget v0, p0, Lgdp;->g:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lgdp;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 245
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lgdp;->h:J

    .line 247
    iget-object v0, p0, Lgdp;->f:Landroid/content/Context;

    iget-object v1, p0, Lgdp;->n:Ljava/lang/String;

    iget-wide v2, p0, Lgdp;->h:J

    invoke-static {v0, v1, v2, v3}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method c()V
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lgdp;->e:Z

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lgdp;->a:Lgdn$b;

    invoke-interface {v0}, Lgdn$b;->H_()V

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lgdp;->a:Lgdn$b;

    invoke-interface {v0}, Lgdn$b;->l()V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 297
    iget-object v0, p0, Lgdp;->o:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lgdp;->f:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lgdp;->f:Landroid/content/Context;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lgdp;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lgdp;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
