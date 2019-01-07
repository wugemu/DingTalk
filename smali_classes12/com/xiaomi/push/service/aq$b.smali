.class public final Lcom/xiaomi/push/service/aq$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/aq$b$a;,
        Lcom/xiaomi/push/service/aq$b$b;,
        Lcom/xiaomi/push/service/aq$b$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Lkcb;

.field public l:Landroid/content/Context;

.field public m:Lcom/xiaomi/push/service/aq$c;

.field n:I

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/push/service/aq$b$a;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/xiaomi/push/service/XMPushService;

.field q:Lcom/xiaomi/push/service/aq$c;

.field public r:Landroid/os/Messenger;

.field s:Z

.field public t:Lcom/xiaomi/push/service/XMPushService$b;

.field u:Landroid/os/IBinder$DeathRecipient;

.field final v:Lcom/xiaomi/push/service/aq$b$b;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/push/service/aq$c;->a:Lcom/xiaomi/push/service/aq$c;

    iput-object v0, p0, Lcom/xiaomi/push/service/aq$b;->m:Lcom/xiaomi/push/service/aq$c;

    iput v1, p0, Lcom/xiaomi/push/service/aq$b;->n:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/aq$b;->o:Ljava/util/List;

    iput-object v2, p0, Lcom/xiaomi/push/service/aq$b;->q:Lcom/xiaomi/push/service/aq$c;

    iput-boolean v1, p0, Lcom/xiaomi/push/service/aq$b;->s:Z

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$b;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$b;-><init>(Lcom/xiaomi/push/service/aq$b;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/aq$b;->t:Lcom/xiaomi/push/service/XMPushService$b;

    iput-object v2, p0, Lcom/xiaomi/push/service/aq$b;->u:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/xiaomi/push/service/aq$b$b;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/aq$b$b;-><init>(Lcom/xiaomi/push/service/aq$b;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/aq$b;->v:Lcom/xiaomi/push/service/aq$b$b;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/push/service/aq$c;->a:Lcom/xiaomi/push/service/aq$c;

    iput-object v0, p0, Lcom/xiaomi/push/service/aq$b;->m:Lcom/xiaomi/push/service/aq$c;

    iput v1, p0, Lcom/xiaomi/push/service/aq$b;->n:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/aq$b;->o:Ljava/util/List;

    iput-object v2, p0, Lcom/xiaomi/push/service/aq$b;->q:Lcom/xiaomi/push/service/aq$c;

    iput-boolean v1, p0, Lcom/xiaomi/push/service/aq$b;->s:Z

    new-instance v0, Lcom/xiaomi/push/service/XMPushService$b;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/XMPushService$b;-><init>(Lcom/xiaomi/push/service/aq$b;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/aq$b;->t:Lcom/xiaomi/push/service/XMPushService$b;

    iput-object v2, p0, Lcom/xiaomi/push/service/aq$b;->u:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/xiaomi/push/service/aq$b$b;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/aq$b$b;-><init>(Lcom/xiaomi/push/service/aq$b;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/aq$b;->v:Lcom/xiaomi/push/service/aq$b$b;

    iput-object p1, p0, Lcom/xiaomi/push/service/aq$b;->p:Lcom/xiaomi/push/service/XMPushService;

    new-instance v0, Lkat;

    invoke-direct {v0, p0}, Lkat;-><init>(Lcom/xiaomi/push/service/aq$b;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/aq$b;->a(Lcom/xiaomi/push/service/aq$b$a;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/aq$b;->r:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/aq$b;->u:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aq$b;->u:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/aq$b;->q:Lcom/xiaomi/push/service/aq$c;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lcom/xiaomi/push/service/aq$b;->m:Lcom/xiaomi/push/service/aq$c;

    iput-object v1, p0, Lcom/xiaomi/push/service/aq$b;->q:Lcom/xiaomi/push/service/aq$c;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/service/aq$b;->l:Landroid/content/Context;

    .line 4000
    const-string/jumbo v1, "5"

    iget-object v2, p0, Lcom/xiaomi/push/service/aq$b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.xiaomi.push.channel_closed"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/push/service/aq$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lkav;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/push/service/aq$b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "ext_reason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lkav;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/push/service/aq$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lkav;->B:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/push/service/aq$b;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/push/service/aq$b;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lkcb;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 0
    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/push/service/aq$b;->l:Landroid/content/Context;

    .line 5000
    const-string/jumbo v1, "5"

    iget-object v2, p0, Lcom/xiaomi/push/service/aq$b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "mipush kicked by server"

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "com.xiaomi.push.kicked"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/push/service/aq$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ext_kick_type"

    invoke-virtual {v2, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ext_kick_reason"

    invoke-virtual {v2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ext_chid"

    iget-object v3, p0, Lcom/xiaomi/push/service/aq$b;->h:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lkav;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/push/service/aq$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lkav;->B:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/push/service/aq$b;->j:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/push/service/aq$b;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lkcb;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 0
    :cond_3
    if-ne p1, v3, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/aq$b;->m:Lcom/xiaomi/push/service/aq$c;

    sget-object v2, Lcom/xiaomi/push/service/aq$c;->c:Lcom/xiaomi/push/service/aq$c;

    if-ne v1, v2, :cond_5

    :goto_1
    if-nez v3, :cond_6

    const-string/jumbo v1, "wait"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v0, p0, Lcom/xiaomi/push/service/aq$b;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/push/service/aq$b;->n:I

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/xiaomi/push/service/aq$b;->k:Lkcb;

    iget-object v1, p0, Lcom/xiaomi/push/service/aq$b;->l:Landroid/content/Context;

    move-object v2, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lkcb;->a(Landroid/content/Context;Lcom/xiaomi/push/service/aq$b;ZILjava/lang/String;)V

    goto :goto_0

    :cond_5
    move v3, v0

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_4

    iput v0, p0, Lcom/xiaomi/push/service/aq$b;->n:I

    goto :goto_2
.end method

.method public final a(Landroid/os/Messenger;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/aq$b;->a()V

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/xiaomi/push/service/aq$b;->r:Landroid/os/Messenger;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/service/aq$b;->s:Z

    new-instance v0, Lcom/xiaomi/push/service/aq$b$c;

    invoke-direct {v0, p0, p0, p1}, Lcom/xiaomi/push/service/aq$b$c;-><init>(Lcom/xiaomi/push/service/aq$b;Lcom/xiaomi/push/service/aq$b;Landroid/os/Messenger;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/aq$b;->u:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/aq$b;->u:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "peer linked with old sdk chid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/aq$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "peer linkToDeath err: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/aq$b;->r:Landroid/os/Messenger;

    iput-boolean v3, p0, Lcom/xiaomi/push/service/aq$b;->s:Z

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/push/service/aq$b$a;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v1, p0, Lcom/xiaomi/push/service/aq$b;->o:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/aq$b;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/xiaomi/push/service/aq$c;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 0
    iget-object v3, p0, Lcom/xiaomi/push/service/aq$b;->o:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/aq$b;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/aq$b$a;

    iget-object v5, p0, Lcom/xiaomi/push/service/aq$b;->m:Lcom/xiaomi/push/service/aq$c;

    invoke-interface {v0, v5, p1, p3}, Lcom/xiaomi/push/service/aq$b$a;->a(Lcom/xiaomi/push/service/aq$c;Lcom/xiaomi/push/service/aq$c;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/push/service/aq$b;->m:Lcom/xiaomi/push/service/aq$c;

    if-eq v0, p1, :cond_1

    const-string/jumbo v3, "update the client %7$s status. %1$s->%2$s %3$s %4$s %5$s %6$s"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/push/service/aq$b;->m:Lcom/xiaomi/push/service/aq$c;

    aput-object v0, v4, v1

    aput-object p1, v4, v2

    const/4 v5, 0x2

    .line 1000
    packed-switch p2, :pswitch_data_0

    const-string/jumbo v0, "unknown"

    .line 0
    :goto_1
    aput-object v0, v4, v5

    const/4 v0, 0x3

    invoke-static {p3}, Lkav;->a(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object p4, v4, v0

    const/4 v0, 0x5

    aput-object p5, v4, v0

    const/4 v0, 0x6

    iget-object v5, p0, Lcom/xiaomi/push/service/aq$b;->h:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/push/service/aq$b;->m:Lcom/xiaomi/push/service/aq$c;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/service/aq$b;->k:Lkcb;

    if-nez v0, :cond_3

    const-string/jumbo v0, "status changed while the client dispatcher is missing"

    invoke-static {v0}, Ljuw;->d(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    .line 1000
    :pswitch_0
    const-string/jumbo v0, "OPEN"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "CLOSE"

    goto :goto_1

    :pswitch_2
    const-string/jumbo v0, "KICK"

    goto :goto_1

    .line 0
    :cond_3
    sget-object v0, Lcom/xiaomi/push/service/aq$c;->b:Lcom/xiaomi/push/service/aq$c;

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2774

    iget-object v3, p0, Lcom/xiaomi/push/service/aq$b;->q:Lcom/xiaomi/push/service/aq$c;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/xiaomi/push/service/aq$b;->s:Z

    if-nez v3, :cond_7

    :cond_4
    move v0, v1

    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/xiaomi/push/service/aq$b;->p:Lcom/xiaomi/push/service/XMPushService;

    iget-object v4, p0, Lcom/xiaomi/push/service/aq$b;->v:Lcom/xiaomi/push/service/aq$b$b;

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;)V

    .line 2000
    packed-switch p2, :pswitch_data_1

    .line 0
    :cond_6
    :goto_4
    if-eqz v1, :cond_9

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/xiaomi/push/service/aq$b;->a(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/xiaomi/push/service/aq$b;->r:Landroid/os/Messenger;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/xiaomi/push/service/aq$b;->s:Z

    if-eqz v3, :cond_5

    const/16 v0, 0x3e8

    goto :goto_3

    .line 2000
    :pswitch_3
    iget-object v1, p0, Lcom/xiaomi/push/service/aq$b;->p:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v1

    goto :goto_4

    :pswitch_4
    const-string/jumbo v3, "wait"

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_4

    :pswitch_5
    iget-object v3, p0, Lcom/xiaomi/push/service/aq$b;->m:Lcom/xiaomi/push/service/aq$c;

    sget-object v4, Lcom/xiaomi/push/service/aq$c;->c:Lcom/xiaomi/push/service/aq$c;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/xiaomi/push/service/aq$b;->p:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3}, Lcom/xiaomi/push/service/XMPushService;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x15

    if-eq p3, v3, :cond_6

    if-ne p3, v6, :cond_8

    const-string/jumbo v3, "wait"

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_8
    move v1, v2

    goto :goto_4

    .line 0
    :cond_9
    iget-object v1, p0, Lcom/xiaomi/push/service/aq$b;->p:Lcom/xiaomi/push/service/XMPushService;

    iget-object v2, p0, Lcom/xiaomi/push/service/aq$b;->v:Lcom/xiaomi/push/service/aq$b$b;

    .line 3000
    iput p2, v2, Lcom/xiaomi/push/service/aq$b$b;->a:I

    iput p3, v2, Lcom/xiaomi/push/service/aq$b$b;->b:I

    iput-object p5, v2, Lcom/xiaomi/push/service/aq$b$b;->d:Ljava/lang/String;

    iput-object p4, v2, Lcom/xiaomi/push/service/aq$b$b;->c:Ljava/lang/String;

    .line 0
    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    goto/16 :goto_2

    .line 1000
    .line 2000
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
