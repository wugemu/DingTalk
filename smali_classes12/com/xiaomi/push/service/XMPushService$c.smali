.class public final Lcom/xiaomi/push/service/XMPushService$c;
.super Lcom/xiaomi/push/service/XMPushService$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;

.field private b:Lkcy;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lkcy;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$c;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$h;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/XMPushService$c;->b:Lkcy;

    iput-object p2, p0, Lcom/xiaomi/push/service/XMPushService$c;->b:Lkcy;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 0
    iget-object v2, p0, Lcom/xiaomi/push/service/XMPushService$c;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/push/service/XMPushService;->f(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/PacketSync;

    move-result-object v10

    iget-object v11, p0, Lcom/xiaomi/push/service/XMPushService$c;->b:Lkcy;

    .line 1000
    const/4 v2, 0x5

    .line 2000
    iget-object v3, v11, Lkcy;->a:Lkac$a;

    .line 3000
    iget v3, v3, Lkac$a;->a:I

    .line 1000
    if-eq v2, v3, :cond_0

    .line 4000
    invoke-virtual {v11}, Lkcy;->h()Ljava/lang/String;

    move-result-object v2

    .line 5000
    iget-object v3, v11, Lkcy;->a:Lkac$a;

    .line 6000
    iget v3, v3, Lkac$a;->a:I

    .line 4000
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/xiaomi/push/service/aq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/aq$b;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v2, v10, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v3, v3, Lcom/xiaomi/push/service/aq$b;->a:Ljava/lang/String;

    invoke-virtual {v11}, Lkcy;->i()I

    move-result v4

    int-to-long v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static/range {v2 .. v8}, Lkeh;->a(Landroid/content/Context;Ljava/lang/String;JZJ)V

    .line 8000
    :cond_0
    :try_start_0
    iget-object v2, v11, Lkcy;->a:Lkac$a;

    .line 9000
    iget-object v2, v2, Lkac$a;->f:Ljava/lang/String;

    .line 10000
    iget-object v3, v11, Lkcy;->a:Lkac$a;

    .line 11000
    iget v3, v3, Lkac$a;->a:I

    .line 7000
    packed-switch v3, :pswitch_data_0

    .line 50000
    iget-object v3, v11, Lkcy;->a:Lkac$a;

    .line 51000
    iget v3, v3, Lkac$a;->a:I

    .line 7000
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v3, "SECMSG"

    .line 51001
    iget-object v4, v11, Lkcy;->a:Lkac$a;

    .line 51002
    iget-object v4, v4, Lkac$a;->f:Ljava/lang/String;

    .line 7000
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 51003
    iget-object v2, v11, Lkcy;->a:Lkac$a;

    .line 51004
    iget-boolean v2, v2, Lkac$a;->l:Z

    .line 7000
    if-nez v2, :cond_c

    iget-object v2, v10, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    .line 51005
    iget-object v2, v2, Lcom/xiaomi/push/service/XMPushService;->c:Lkcb;

    .line 7000
    iget-object v2, v10, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    .line 51006
    invoke-static {v11}, Lkcb;->a(Lkcy;)Lcom/xiaomi/push/service/aq$b;

    move-result-object v3

    if-nez v3, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "error while notify channel closed! channel "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->d(Ljava/lang/String;)V

    .line 1000
    :cond_1
    :goto_0
    return-void

    .line 7000
    :pswitch_0
    const-string/jumbo v3, "PING"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12000
    iget-object v2, v11, Lkcy;->c:[B

    .line 7000
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 13000
    new-instance v3, Lkac$j;

    invoke-direct {v3}, Lkac$j;-><init>()V

    invoke-virtual {v3, v2}, Lkac$j;->a([B)Liwy;

    move-result-object v2

    check-cast v2, Lkac$j;

    check-cast v2, Lkac$j;

    .line 14000
    iget-boolean v3, v2, Lkac$j;->a:Z

    .line 7000
    if-eqz v3, :cond_2

    invoke-static {}, Lkbd;->a()Lkbd;

    move-result-object v3

    .line 15000
    iget-object v2, v2, Lkac$j;->b:Lkac$b;

    .line 7000
    invoke-virtual {v3, v2}, Lkbd;->a(Lkac$b;)V

    :cond_2
    const-string/jumbo v2, "1"

    invoke-virtual {v11}, Lkcy;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v10, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    .line 16000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Lcom/xiaomi/push/service/XMPushService;->a:J

    sub-long/2addr v4, v6

    invoke-static {}, Lkdm;->c()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    invoke-static {v2}, Ljvn;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Z)V

    .line 7000
    :cond_3
    :goto_1
    iget-object v2, v10, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    .line 17000
    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/xiaomi/push/service/XMPushService;->e:Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/service/XMPushService$k;

    invoke-interface {v2}, Lcom/xiaomi/push/service/XMPushService$k;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1000
    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handle Blob chid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51026
    iget-object v4, v11, Lkcy;->a:Lkac$a;

    .line 51027
    iget v4, v4, Lkac$a;->a:I

    .line 1000
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cmd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 51028
    iget-object v4, v11, Lkcy;->a:Lkac$a;

    .line 51029
    iget-object v4, v4, Lkac$a;->f:Ljava/lang/String;

    .line 1000
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " packetid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lkcy;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failure "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljuw;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 7000
    :cond_4
    :try_start_1
    invoke-static {}, Lkeq;->b()V

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "SYNC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "CONF"

    .line 18000
    iget-object v3, v11, Lkcy;->a:Lkac$a;

    .line 19000
    iget-object v3, v3, Lkac$a;->h:Ljava/lang/String;

    .line 7000
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 20000
    iget-object v2, v11, Lkcy;->c:[B

    .line 7000
    invoke-static {v2}, Lkac$b;->b([B)Lkac$b;

    move-result-object v2

    invoke-static {}, Lkbd;->a()Lkbd;

    move-result-object v3

    invoke-virtual {v3, v2}, Lkbd;->a(Lkac$b;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "U"

    .line 21000
    iget-object v3, v11, Lkcy;->a:Lkac$a;

    .line 22000
    iget-object v3, v3, Lkac$a;->h:Ljava/lang/String;

    .line 7000
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 23000
    iget-object v2, v11, Lkcy;->c:[B

    .line 24000
    new-instance v3, Lkac$k;

    invoke-direct {v3}, Lkac$k;-><init>()V

    invoke-virtual {v3, v2}, Lkac$k;->a([B)Liwy;

    move-result-object v2

    check-cast v2, Lkac$k;

    check-cast v2, Lkac$k;

    .line 7000
    iget-object v3, v10, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v3}, Ljzd;->a(Landroid/content/Context;)Ljzd;

    move-result-object v3

    .line 25000
    iget-object v7, v2, Lkac$k;->a:Ljava/lang/String;

    .line 26000
    iget-object v8, v2, Lkac$k;->b:Ljava/lang/String;

    .line 7000
    new-instance v5, Ljava/util/Date;

    .line 27000
    iget-wide v12, v2, Lkac$k;->c:J

    .line 7000
    invoke-direct {v5, v12, v13}, Ljava/util/Date;-><init>(J)V

    new-instance v6, Ljava/util/Date;

    .line 28000
    iget-wide v12, v2, Lkac$k;->d:J

    .line 7000
    invoke-direct {v6, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 29000
    iget v4, v2, Lkac$k;->f:I

    .line 7000
    mul-int/lit16 v4, v4, 0x400

    .line 30000
    iget-boolean v9, v2, Lkac$k;->e:Z

    .line 31000
    iget-object v12, v3, Ljzd;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljze;

    invoke-direct/range {v2 .. v9}, Ljze;-><init>(Ljzd;ILjava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v12, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljzd;->a(J)V

    .line 7000
    new-instance v2, Lkcy;

    invoke-direct {v2}, Lkcy;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lkcy;->a(I)V

    .line 32000
    iget-object v3, v11, Lkcy;->a:Lkac$a;

    .line 33000
    iget-object v3, v3, Lkac$a;->f:Ljava/lang/String;

    .line 7000
    const-string/jumbo v4, "UCA"

    invoke-virtual {v2, v3, v4}, Lkcy;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lkcy;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkcy;->a(Ljava/lang/String;)V

    iget-object v3, v10, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v4, Lkbb;

    iget-object v5, v10, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v4, v5, v2}, Lkbb;-><init>(Lcom/xiaomi/push/service/XMPushService;Lkcy;)V

    .line 34000
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    goto/16 :goto_0

    .line 7000
    :cond_7
    const-string/jumbo v2, "P"

    .line 35000
    iget-object v3, v11, Lkcy;->a:Lkac$a;

    .line 36000
    iget-object v3, v3, Lkac$a;->h:Ljava/lang/String;

    .line 7000
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37000
    iget-object v2, v11, Lkcy;->c:[B

    .line 38000
    new-instance v3, Lkac$i;

    invoke-direct {v3}, Lkac$i;-><init>()V

    invoke-virtual {v3, v2}, Lkac$i;->a([B)Liwy;

    move-result-object v2

    check-cast v2, Lkac$i;

    check-cast v2, Lkac$i;

    .line 7000
    new-instance v3, Lkcy;

    invoke-direct {v3}, Lkcy;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lkcy;->a(I)V

    .line 39000
    iget-object v4, v11, Lkcy;->a:Lkac$a;

    .line 40000
    iget-object v4, v4, Lkac$a;->f:Ljava/lang/String;

    .line 7000
    const-string/jumbo v5, "PCA"

    invoke-virtual {v3, v4, v5}, Lkcy;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lkcy;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkcy;->a(Ljava/lang/String;)V

    new-instance v4, Lkac$i;

    invoke-direct {v4}, Lkac$i;-><init>()V

    .line 41000
    iget-boolean v5, v2, Lkac$i;->a:Z

    .line 7000
    if-eqz v5, :cond_8

    .line 42000
    iget-object v2, v2, Lkac$i;->b:Liww;

    .line 7000
    invoke-virtual {v4, v2}, Lkac$i;->a(Liww;)Lkac$i;

    :cond_8
    invoke-virtual {v4}, Lkac$i;->c()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lkcy;->a([BLjava/lang/String;)V

    iget-object v2, v10, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v4, Lkbb;

    iget-object v5, v10, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {v4, v5, v3}, Lkbb;-><init>(Lcom/xiaomi/push/service/XMPushService;Lkcy;)V

    .line 43000
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v4, v6, v7}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$h;J)V

    .line 7000
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ACK msgP: id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lkcy;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "NOTIFY"

    .line 44000
    iget-object v3, v11, Lkcy;->a:Lkac$a;

    .line 45000
    iget-object v3, v3, Lkac$a;->f:Ljava/lang/String;

    .line 7000
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46000
    iget-object v2, v11, Lkcy;->c:[B

    .line 47000
    new-instance v3, Lkac$h;

    invoke-direct {v3}, Lkac$h;-><init>()V

    invoke-virtual {v3, v2}, Lkac$h;->a([B)Liwy;

    move-result-object v2

    check-cast v2, Lkac$h;

    check-cast v2, Lkac$h;

    .line 7000
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notify by server err = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48000
    iget v4, v2, Lkac$h;->a:I

    .line 7000
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " desc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 49000
    iget-object v2, v2, Lkac$h;->b:Ljava/lang/String;

    .line 7000
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 51006
    :cond_a
    const-string/jumbo v4, "5"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v2, v11, v3}, Lkcv;->a(Lcom/xiaomi/push/service/XMPushService;Lkcy;Lcom/xiaomi/push/service/aq$b;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "don\'t support binary yet"

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7000
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Recv SECMSG errCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51007
    iget-object v3, v11, Lkcy;->a:Lkac$a;

    .line 51008
    iget v3, v3, Lkac$a;->m:I

    .line 7000
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " errStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 51009
    iget-object v3, v11, Lkcy;->a:Lkac$a;

    .line 51010
    iget-object v3, v3, Lkac$a;->n:Ljava/lang/String;

    .line 7000
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v3, "BIND"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 51011
    iget-object v2, v11, Lkcy;->c:[B

    .line 51012
    new-instance v3, Lkac$d;

    invoke-direct {v3}, Lkac$d;-><init>()V

    invoke-virtual {v3, v2}, Lkac$d;->a([B)Liwy;

    move-result-object v2

    check-cast v2, Lkac$d;

    move-object v0, v2

    check-cast v0, Lkac$d;

    move-object v8, v0

    .line 7000
    invoke-virtual {v11}, Lkcy;->h()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v2

    invoke-virtual {v2, v9, v12}, Lcom/xiaomi/push/service/aq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/aq$b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 51013
    iget-boolean v3, v8, Lkac$d;->a:Z

    .line 7000
    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SMACK: channel bind succeeded, chid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51014
    iget-object v4, v11, Lkcy;->a:Lkac$a;

    .line 51015
    iget v4, v4, Lkac$a;->a:I

    .line 7000
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljuw;->a(Ljava/lang/String;)V

    sget-object v3, Lcom/xiaomi/push/service/aq$c;->c:Lcom/xiaomi/push/service/aq$c;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/service/aq$b;->a(Lcom/xiaomi/push/service/aq$c;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 51016
    :cond_e
    iget-object v7, v8, Lkac$d;->b:Ljava/lang/String;

    .line 7000
    const-string/jumbo v3, "auth"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string/jumbo v3, "invalid-sig"

    .line 51017
    iget-object v4, v8, Lkac$d;->c:Ljava/lang/String;

    .line 7000
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SMACK: bind error invalid-sig token = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/xiaomi/push/service/aq$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " sec = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/xiaomi/push/service/aq$b;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljuw;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    sget-object v4, Lcom/xiaomi/push/thrift/a;->Q:Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v4}, Lcom/xiaomi/push/thrift/a;->a()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-static {v3, v4, v5, v6, v10}, Lkeq;->a(IIILjava/lang/String;I)V

    :cond_f
    sget-object v3, Lcom/xiaomi/push/service/aq$c;->a:Lcom/xiaomi/push/service/aq$c;

    const/4 v4, 0x1

    const/4 v5, 0x5

    .line 51018
    iget-object v6, v8, Lkac$d;->c:Ljava/lang/String;

    .line 7000
    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/service/aq$b;->a(Lcom/xiaomi/push/service/aq$c;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v2

    invoke-virtual {v2, v9, v12}, Lcom/xiaomi/push/service/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SMACK: channel bind failed, chid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 51021
    iget-object v3, v8, Lkac$d;->c:Ljava/lang/String;

    .line 7000
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v3, "cancel"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Lcom/xiaomi/push/service/aq$c;->a:Lcom/xiaomi/push/service/aq$c;

    const/4 v4, 0x1

    const/4 v5, 0x7

    .line 51019
    iget-object v6, v8, Lkac$d;->c:Ljava/lang/String;

    .line 7000
    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/service/aq$b;->a(Lcom/xiaomi/push/service/aq$c;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v2

    invoke-virtual {v2, v9, v12}, Lcom/xiaomi/push/service/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_12
    const-string/jumbo v3, "wait"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v10, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/aq$b;)V

    sget-object v3, Lcom/xiaomi/push/service/aq$c;->a:Lcom/xiaomi/push/service/aq$c;

    const/4 v4, 0x1

    const/4 v5, 0x7

    .line 51020
    iget-object v6, v8, Lkac$d;->c:Ljava/lang/String;

    .line 7000
    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/service/aq$b;->a(Lcom/xiaomi/push/service/aq$c;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_13
    const-string/jumbo v3, "KICK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51022
    iget-object v2, v11, Lkcy;->c:[B

    .line 51023
    new-instance v3, Lkac$g;

    invoke-direct {v3}, Lkac$g;-><init>()V

    invoke-virtual {v3, v2}, Lkac$g;->a([B)Liwy;

    move-result-object v2

    check-cast v2, Lkac$g;

    check-cast v2, Lkac$g;

    .line 7000
    invoke-virtual {v11}, Lkcy;->h()Ljava/lang/String;

    move-result-object v4

    .line 51024
    iget-object v7, v2, Lkac$g;->a:Ljava/lang/String;

    .line 51025
    iget-object v6, v2, Lkac$g;->b:Ljava/lang/String;

    .line 7000
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "kicked by server, chid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljuw;->a(Ljava/lang/String;)V

    const-string/jumbo v2, "wait"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v2

    invoke-virtual {v2, v9, v4}, Lcom/xiaomi/push/service/aq;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/aq$b;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v10, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v3, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/aq$b;)V

    sget-object v3, Lcom/xiaomi/push/service/aq$c;->a:Lcom/xiaomi/push/service/aq$c;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/service/aq$b;->a(Lcom/xiaomi/push/service/aq$c;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    iget-object v2, v10, Lcom/xiaomi/push/service/PacketSync;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 v5, 0x3

    move-object v3, v9

    invoke-virtual/range {v2 .. v7}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/aq;->a()Lcom/xiaomi/push/service/aq;

    move-result-object v2

    invoke-virtual {v2, v9, v4}, Lcom/xiaomi/push/service/aq;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "receive a message."

    return-object v0
.end method
