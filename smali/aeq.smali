.class public final Laeq;
.super Ljava/lang/Object;
.source "Chat2MailHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laeq$a;,
        Laeq$b;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field a:Lcom/alibaba/doraemon/image/ImageMagician;

.field b:Landroid/content/Context;

.field c:Landroid/app/Activity;

.field d:Landroid/os/Handler;

.field e:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:I

.field i:Ljava/lang/String;

.field j:I

.field k:Lcom/alibaba/wukong/im/Conversation;

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Z

.field q:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/Object;

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field private v:Laeq$a;

.field private w:I

.field private x:Ladt;

.field private final y:Lcom/alibaba/doraemon/image/ImageEventListener;

.field private z:Lyb;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IILaeq$a;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "messagesToMailStyle"    # I
    .param p3, "editMode"    # I
    .param p4, "listener"    # Laeq$a;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v2, p0, Laeq;->w:I

    .line 327
    new-instance v0, Laeq$1;

    invoke-direct {v0, p0}, Laeq$1;-><init>(Laeq;)V

    iput-object v0, p0, Laeq;->y:Lcom/alibaba/doraemon/image/ImageEventListener;

    .line 362
    new-instance v0, Laeq$2;

    invoke-direct {v0, p0}, Laeq$2;-><init>(Laeq;)V

    iput-object v0, p0, Laeq;->z:Lyb;

    .line 396
    new-instance v0, Laeq$3;

    invoke-direct {v0, p0}, Laeq$3;-><init>(Laeq;)V

    iput-object v0, p0, Laeq;->q:Lcom/alibaba/wukong/Callback;

    .line 547
    const-string/jumbo v0, ""

    iput-object v0, p0, Laeq;->A:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Laeq;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 108
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Laeq;->b:Landroid/content/Context;

    .line 109
    iput-object p1, p0, Laeq;->c:Landroid/app/Activity;

    .line 111
    iput v1, p0, Laeq;->j:I

    .line 112
    iput v1, p0, Laeq;->h:I

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Laeq;->i:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laeq;->m:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laeq;->t:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laeq;->u:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laeq;->s:Ljava/util/HashMap;

    .line 119
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Laeq;->f:Landroid/util/SparseArray;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laeq;->g:Ljava/util/HashMap;

    .line 121
    new-instance v0, Laeq$b;

    invoke-direct {v0, p0}, Laeq$b;-><init>(Laeq;)V

    iput-object v0, p0, Laeq;->d:Landroid/os/Handler;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laeq;->r:Ljava/lang/Object;

    .line 124
    iput-object p4, p0, Laeq;->v:Laeq$a;

    .line 125
    iput-boolean v1, p0, Laeq;->p:Z

    .line 126
    iput p3, p0, Laeq;->w:I

    .line 128
    if-ne p2, v2, :cond_0

    .line 129
    new-instance v0, Lads;

    invoke-direct {v0}, Lads;-><init>()V

    iput-object v0, p0, Laeq;->x:Ladt;

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Ladu;

    invoke-direct {v0}, Ladu;-><init>()V

    iput-object v0, p0, Laeq;->x:Ladt;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Laeq$a;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Laeq$a;
    .param p3, "editMode"    # I

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0, v0, p2}, Laeq;-><init>(Landroid/app/Activity;IILaeq$a;)V

    .line 103
    return-void
.end method

.method static synthetic a(Laeq;)V
    .locals 5
    .param p0, "x0"    # Laeq;

    .prologue
    .line 61
    .line 3465
    iget-object v0, p0, Laeq;->k:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3466
    iget-object v0, p0, Laeq;->b:Landroid/content/Context;

    sget v1, Laxo$i;->dt_mail_body_from_group_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Laeq;->k:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laeq;->o:Ljava/lang/String;

    .line 3467
    invoke-virtual {p0}, Laeq;->b()V

    .line 3468
    :goto_0
    return-void

    .line 3473
    :cond_0
    iget-object v0, p0, Laeq;->k:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lajl;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 3474
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    .line 3475
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    new-instance v4, Laeq$5;

    invoke-direct {v4, p0, v2}, Laeq$5;-><init>(Laeq;Lcom/alibaba/android/dingtalk/userbase/ContactInterface;)V

    invoke-virtual {v3, v0, v1, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0
.end method

.method static synthetic a(Laeq;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Laeq;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    .line 4302
    iget-object v1, p0, Laeq;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 4303
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mCurrentSaveIndex:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Laeq;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lafh;->e()V

    .line 4304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "size:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Laeq;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lafh;->e()V

    .line 4306
    iget v0, p0, Laeq;->h:I

    iget-object v2, p0, Laeq;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    monitor-exit v1

    .line 4323
    :goto_0
    return-void

    .line 4307
    :cond_0
    iget-object v0, p0, Laeq;->i:Ljava/lang/String;

    iget-object v2, p0, Laeq;->f:Landroid/util/SparseArray;

    iget v3, p0, Laeq;->h:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4308
    const-string/jumbo v0, "Chat2MailHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ERROR: mSaveCallback CALLED MANY TIMES AT THE SAME URL:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Laeq;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4309
    monitor-exit v1

    goto :goto_0

    .line 4323
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4312
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "path:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lafh;->e()V

    .line 4313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4314
    iget-object v0, p0, Laeq;->s:Ljava/util/HashMap;

    iget-object v2, p0, Laeq;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4317
    :cond_2
    iget v0, p0, Laeq;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laeq;->h:I

    .line 4318
    iget v0, p0, Laeq;->h:I

    iget-object v2, p0, Laeq;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 4319
    iget-object v0, p0, Laeq;->d:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4323
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 4321
    :cond_3
    iget-object v0, p0, Laeq;->d:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method static synthetic b(Laeq;)I
    .locals 2
    .param p0, "x0"    # Laeq;

    .prologue
    .line 61
    iget v0, p0, Laeq;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laeq;->j:I

    return v0
.end method

.method static synthetic b(Laeq;Ljava/lang/String;)V
    .locals 10
    .param p0, "x0"    # Laeq;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    .line 4499
    if-nez p1, :cond_0

    .line 4500
    invoke-virtual {p0}, Laeq;->b()V

    .line 4544
    :goto_0
    return-void

    .line 4504
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v4

    .line 4507
    :try_start_0
    iget-object v0, p0, Laeq;->e:Lfp;

    .line 5096
    const/4 v1, 0x0

    invoke-virtual {v0, v4, v5, v1}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4507
    check-cast v0, Ljava/lang/String;

    .line 4508
    if-nez v0, :cond_1

    .line 4509
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    .line 4510
    iget-object v1, p0, Laeq;->k:Lcom/alibaba/wukong/im/Conversation;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->CHAT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v6

    .line 4512
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v0

    iget-object v1, p0, Laeq;->k:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laeq;->k:Lcom/alibaba/wukong/im/Conversation;

    .line 4513
    invoke-static {v2}, Lajl;->a(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    new-instance v7, Laeq$6;

    invoke-direct {v7, p0, p1}, Laeq$6;-><init>(Laeq;Ljava/lang/String;)V

    const-class v8, Lcom/alibaba/wukong/Callback;

    iget-object v9, p0, Laeq;->c:Landroid/app/Activity;

    .line 4516
    invoke-static {v7, v8, v9}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/wukong/Callback;

    .line 4512
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4541
    :catch_0
    move-exception v0

    .line 4542
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 4538
    :cond_1
    :try_start_1
    iget-object v0, p0, Laeq;->b:Landroid/content/Context;

    sget v1, Laxo$i;->dt_mail_body_from_singlechat_title:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v6, p0, Laeq;->e:Lfp;

    .line 6096
    const/4 v7, 0x0

    invoke-virtual {v6, v4, v5, v7}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 4538
    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laeq;->o:Ljava/lang/String;

    .line 4539
    invoke-virtual {p0}, Laeq;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Laeq;->p:Z

    .line 212
    iget-object v0, p0, Laeq;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Laeq;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Laeq;->y:Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/image/ImageMagician;->unregisterEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 216
    :cond_0
    invoke-static {}, Lth;->a()Lya;

    move-result-object v0

    iget-object v1, p0, Laeq;->z:Lyb;

    invoke-interface {v0, v1}, Lya;->a(Lyb;)V

    .line 219
    iget-object v0, p0, Laeq;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Laeq;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 223
    :cond_1
    iget-object v0, p0, Laeq;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 224
    iget-object v0, p0, Laeq;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 225
    iget-object v0, p0, Laeq;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 226
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 5
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 169
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v2, p0, Laeq;->b:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iput-object p1, p0, Laeq;->k:Lcom/alibaba/wukong/im/Conversation;

    .line 171
    iput-object p2, p0, Laeq;->l:Ljava/util/List;

    .line 172
    new-instance v2, Lfp;

    iget-object v3, p0, Laeq;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lfp;-><init>(I)V

    iput-object v2, p0, Laeq;->e:Lfp;

    .line 174
    iget-object v2, p0, Laeq;->v:Laeq$a;

    if-eqz v2, :cond_2

    .line 175
    iget-object v2, p0, Laeq;->v:Laeq$a;

    invoke-interface {v2}, Laeq$a;->a()V

    .line 178
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 179
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 180
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v0, :cond_3

    .line 181
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0xfb

    if-ne v3, v4, :cond_5

    .line 182
    :cond_4
    invoke-static {v1}, Lafh;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 183
    instance-of v3, v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    if-eqz v3, :cond_3

    .line 184
    iget-object v3, p0, Laeq;->m:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v3, p0, Laeq;->t:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    :cond_5
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0xcb

    if-ne v3, v4, :cond_3

    .line 188
    instance-of v3, v0, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    if-eqz v3, :cond_3

    .line 189
    iget-object v3, p0, Laeq;->m:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v3, p0, Laeq;->u:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    .end local v0    # "content":Lcom/alibaba/wukong/im/MessageContent;
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_6
    iget-object v2, p0, Laeq;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 196
    iget-object v2, p0, Laeq;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 197
    iget-object v2, p0, Laeq;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v3, p0, Laeq;->y:Lcom/alibaba/doraemon/image/ImageEventListener;

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->registerEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 200
    :cond_7
    iget-object v2, p0, Laeq;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 201
    invoke-static {}, Lth;->a()Lya;

    move-result-object v2

    iget-object v3, p0, Laeq;->z:Lyb;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 203
    :cond_8
    iget-object v2, p0, Laeq;->d:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 205
    :cond_9
    iget-object v2, p0, Laeq;->d:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 611
    iget-object v0, p0, Laeq;->x:Ladt;

    iget-object v1, p0, Laeq;->v:Laeq$a;

    .line 1047
    iput-object v1, v0, Ladt;->f:Laeq$a;

    .line 612
    iget-object v0, p0, Laeq;->x:Ladt;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ladt;->a(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Laeq;->x:Ladt;

    iget-object v1, p0, Laeq;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ladt;->d(Ljava/lang/String;)V

    .line 1563
    const-string/jumbo v0, ""

    iput-object v0, p0, Laeq;->A:Ljava/lang/String;

    .line 1566
    iget-object v0, p0, Laeq;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 1567
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    .line 2549
    invoke-static {v4, v5}, Lafh;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 2550
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2551
    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 2552
    iget-object v2, p0, Laeq;->A:Ljava/lang/String;

    aget-object v4, v0, v8

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2553
    iget-object v2, p0, Laeq;->x:Ladt;

    aget-object v4, v0, v8

    invoke-virtual {v2, v4}, Ladt;->b(Ljava/lang/String;)V

    .line 2554
    aget-object v2, v0, v8

    iput-object v2, p0, Laeq;->A:Ljava/lang/String;

    .line 2556
    :cond_1
    const/4 v2, 0x1

    aget-object v0, v0, v2

    move-object v2, v0

    .line 1568
    :goto_1
    iget-object v4, p0, Laeq;->x:Ladt;

    iget-object v0, p0, Laeq;->e:Lfp;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    .line 3096
    const/4 v5, 0x0

    invoke-virtual {v0, v6, v7, v5}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1568
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Ladt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    iget v0, p0, Laeq;->w:I

    invoke-static {v1, v0}, Lafh;->a(Lcom/alibaba/wukong/im/Message;I)Lafh$b;

    move-result-object v2

    .line 1572
    iget-object v0, p0, Laeq;->x:Ladt;

    iget-object v4, v2, Lafh$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ladt;->c(Ljava/lang/String;)V

    .line 1574
    iget-boolean v0, v2, Lafh$b;->c:Z

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, v2, Lafh$b;->d:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1576
    iget-object v0, v2, Lafh$b;->d:Ljava/lang/String;

    invoke-static {v0}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1577
    iget-object v0, v2, Lafh$b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1578
    iget-object v0, p0, Laeq;->x:Ladt;

    iget-object v1, v2, Lafh$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ladt;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 2558
    :cond_2
    const-string/jumbo v0, ""

    move-object v2, v0

    goto :goto_1

    .line 1580
    :cond_3
    iget-object v0, p0, Laeq;->x:Ladt;

    iget-object v1, v2, Lafh$b;->f:Ljava/lang/String;

    iget-object v2, v2, Lafh$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ladt;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1584
    :cond_4
    iget-object v0, v2, Lafh$b;->d:Ljava/lang/String;

    .line 1586
    iget-object v4, p0, Laeq;->g:Ljava/util/HashMap;

    if-eqz v4, :cond_5

    iget-object v4, p0, Laeq;->g:Ljava/util/HashMap;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1587
    iget-object v0, p0, Laeq;->g:Ljava/util/HashMap;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1590
    :cond_5
    iget-object v1, p0, Laeq;->s:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Laeq;->s:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1591
    iget-object v1, p0, Laeq;->s:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1593
    iget-object v1, v2, Lafh$b;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1594
    iget-object v1, p0, Laeq;->x:Ladt;

    invoke-virtual {v1, v0}, Ladt;->e(Ljava/lang/String;)V

    .line 1595
    iget-object v1, p0, Laeq;->x:Ladt;

    invoke-static {v0}, Lafh;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ladt;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1597
    :cond_6
    iget-object v1, p0, Laeq;->x:Ladt;

    iget-object v2, v2, Lafh$b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ladt;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1601
    :cond_7
    iget-object v0, v2, Lafh$b;->e:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Laeq;->x:Ladt;

    iget-object v1, v2, Lafh$b;->e:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-virtual {v0, v1}, Ladt;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto/16 :goto_0

    .line 1607
    :cond_8
    iget-object v0, p0, Laeq;->x:Ladt;

    invoke-virtual {v0}, Ladt;->a()V

    .line 3229
    invoke-virtual {p0}, Laeq;->a()V

    .line 3231
    iget-object v0, p0, Laeq;->x:Ladt;

    invoke-virtual {v0}, Ladt;->b()V

    .line 617
    return-void
.end method
