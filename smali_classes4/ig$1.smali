.class final Lig$1;
.super Ljava/lang/Object;
.source "SessionRequest.java"

# interfaces
.implements Liq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lig$c;

.field final synthetic b:J

.field final synthetic c:Lig;


# direct methods
.method constructor <init>(Lig;Lig$c;J)V
    .locals 1

    .prologue
    .line 376
    iput-object p1, p0, Lig$1;->c:Lig;

    iput-object p2, p0, Lig$1;->a:Lig$c;

    iput-wide p3, p0, Lig$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanet/channel/Session;Lanet/channel/entity/EventType;Lip;)V
    .locals 11
    .param p1, "s"    # Lanet/channel/Session;
    .param p2, "type"    # Lanet/channel/entity/EventType;
    .param p3, "event"    # Lip;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 379
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    if-nez p3, :cond_2

    move v0, v4

    .line 383
    .local v0, "errorcode":I
    :goto_1
    if-nez p3, :cond_3

    const-string/jumbo v1, ""

    .line 384
    .local v1, "errormsg":Ljava/lang/String;
    :goto_2
    sget-object v2, Lig$3;->a:[I

    invoke-virtual {p2}, Lanet/channel/entity/EventType;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 386
    :pswitch_0
    const-string/jumbo v5, "awcn.SessionRequest"

    if-eqz p1, :cond_4

    iget-object v2, p1, Lanet/channel/Session;->o:Ljava/lang/String;

    :goto_3
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "Session"

    aput-object v7, v6, v4

    aput-object p1, v6, v8

    const-string/jumbo v7, "EventType"

    aput-object v7, v6, v9

    aput-object p2, v6, v10

    const/4 v7, 0x4

    const-string/jumbo v8, "Event"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object p3, v6, v7

    invoke-static {v5, v3, v2, v6}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    invoke-static {p1, v4, v3}, Lig;->a(Lanet/channel/Session;ILjava/lang/String;)V

    .line 388
    iget-object v2, p0, Lig$1;->a:Lig$c;

    invoke-interface {v2, p1}, Lig$c;->a(Lanet/channel/Session;)V

    goto :goto_0

    .line 382
    .end local v0    # "errorcode":I
    .end local v1    # "errormsg":Ljava/lang/String;
    :cond_2
    iget v0, p3, Lip;->d:I

    goto :goto_1

    .line 383
    .restart local v0    # "errorcode":I
    :cond_3
    iget-object v1, p3, Lip;->e:Ljava/lang/String;

    goto :goto_2

    .restart local v1    # "errormsg":Ljava/lang/String;
    :cond_4
    move-object v2, v3

    .line 386
    goto :goto_3

    .line 391
    :pswitch_1
    const-string/jumbo v5, "awcn.SessionRequest"

    if-eqz p1, :cond_5

    iget-object v2, p1, Lanet/channel/Session;->o:Ljava/lang/String;

    :goto_4
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "Session"

    aput-object v7, v6, v4

    aput-object p1, v6, v8

    const-string/jumbo v4, "EventType"

    aput-object v4, v6, v9

    aput-object p2, v6, v10

    const/4 v4, 0x4

    const-string/jumbo v7, "Event"

    aput-object v7, v6, v4

    const/4 v4, 0x5

    aput-object p3, v6, v4

    invoke-static {v5, v3, v2, v6}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    invoke-static {p1, v0, v1}, Lig;->a(Lanet/channel/Session;ILjava/lang/String;)V

    .line 1038
    sget-object v2, Lif$a;->a:Lif;

    .line 393
    iget-object v3, p0, Lig$1;->c:Lig;

    invoke-virtual {v2, v3, p1}, Lif;->c(Lig;Lanet/channel/Session;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 394
    iget-object v2, p0, Lig$1;->a:Lig$c;

    invoke-interface {v2, p1}, Lig$c;->b(Lanet/channel/Session;)V

    goto/16 :goto_0

    :cond_5
    move-object v2, v3

    .line 391
    goto :goto_4

    .line 396
    :cond_6
    iget-object v2, p0, Lig$1;->a:Lig$c;

    invoke-interface {v2, p1, p2, v0}, Lig$c;->a(Lanet/channel/Session;Lanet/channel/entity/EventType;I)V

    goto/16 :goto_0

    .line 400
    :pswitch_2
    const-string/jumbo v5, "awcn.SessionRequest"

    if-eqz p1, :cond_7

    iget-object v2, p1, Lanet/channel/Session;->o:Ljava/lang/String;

    :goto_5
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "Session"

    aput-object v7, v6, v4

    aput-object p1, v6, v8

    const-string/jumbo v4, "EventType"

    aput-object v4, v6, v9

    aput-object p2, v6, v10

    const/4 v4, 0x4

    const-string/jumbo v7, "Event"

    aput-object v7, v6, v4

    const/4 v4, 0x5

    aput-object p3, v6, v4

    invoke-static {v5, v3, v2, v6}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    invoke-static {p1, v0, v1}, Lig;->a(Lanet/channel/Session;ILjava/lang/String;)V

    .line 402
    iget-object v2, p0, Lig$1;->a:Lig$c;

    invoke-interface {v2, p1, p2, v0}, Lig$c;->a(Lanet/channel/Session;Lanet/channel/entity/EventType;I)V

    goto/16 :goto_0

    :cond_7
    move-object v2, v3

    .line 400
    goto :goto_5

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
