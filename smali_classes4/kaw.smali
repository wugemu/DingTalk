.class public final Lkaw;
.super Lkbd$a;

# interfaces
.implements Ljyw$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkaw$b;,
        Lkaw$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/push/service/XMPushService;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    invoke-direct {p0}, Lkbd$a;-><init>()V

    iput-object p1, p0, Lkaw;->a:Lcom/xiaomi/push/service/XMPushService;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljyv;Ljyw$b;Ljava/lang/String;)Ljyw;
    .locals 1

    new-instance v0, Lkaw$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lkaw$b;-><init>(Landroid/content/Context;Ljyv;Ljyw$b;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lkac$b;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 0
    .line 1000
    iget-boolean v0, p1, Lkac$b;->a:Z

    .line 0
    if-eqz v0, :cond_1

    .line 2000
    iget-boolean v0, p1, Lkac$b;->b:Z

    .line 0
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lkaw;->b:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "fetch bucket :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3000
    iget-boolean v2, p1, Lkac$b;->b:Z

    .line 0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lkaw;->b:J

    invoke-static {}, Ljyw;->a()Ljyw;

    move-result-object v0

    invoke-virtual {v0}, Ljyw;->c()V

    invoke-virtual {v0}, Ljyw;->d()V

    iget-object v2, p0, Lkaw;->a:Lcom/xiaomi/push/service/XMPushService;

    .line 4000
    iget-object v3, v2, Lcom/xiaomi/push/service/XMPushService;->b:Lkde;

    .line 0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lkde;->d()Lkdf;

    move-result-object v2

    .line 5000
    iget-object v2, v2, Lkdf;->e:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v2}, Ljyw;->b(Ljava/lang/String;)Ljys;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljys;->b()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v2, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3}, Lkde;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "bucket changed, force reconnect"

    invoke-static {v0}, Ljuw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lkaw;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    iget-object v0, p0, Lkaw;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->b(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method
