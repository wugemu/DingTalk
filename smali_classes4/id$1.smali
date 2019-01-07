.class final Lid$1;
.super Ljava/lang/Object;
.source "HorseRide.java"

# interfaces
.implements Liq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 128
    iput-wide p1, p0, Lid$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanet/channel/Session;Lanet/channel/entity/EventType;Lip;)V
    .locals 8
    .param p1, "s"    # Lanet/channel/Session;
    .param p2, "type"    # Lanet/channel/entity/EventType;
    .param p3, "event"    # Lip;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 133
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 166
    .end local p3    # "event":Lip;
    :cond_0
    :goto_0
    return-void

    .line 137
    .restart local p3    # "event":Lip;
    :cond_1
    new-instance v0, Lir;

    sget-object v1, Lanet/channel/entity/EventType;->HORSE_RIDE:Lanet/channel/entity/EventType;

    invoke-direct {v0, v1}, Lir;-><init>(Lanet/channel/entity/EventType;)V

    .line 139
    .local v0, "e":Lir;
    invoke-static {v7}, Lanet/channel/util/ALog;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    const-string/jumbo v1, "awcn.HorseRide"

    const-string/jumbo v2, "horse ride evnet callback now !!!! "

    iget-object v3, p1, Lanet/channel/Session;->o:Ljava/lang/String;

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "ip"

    aput-object v6, v4, v5

    invoke-virtual {p1}, Lanet/channel/Session;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string/jumbo v6, "port"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Lanet/channel/Session;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "conntype"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {p1}, Lanet/channel/Session;->g()Lanet/channel/entity/ConnType;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "EventType"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    aput-object p2, v4, v5

    const/16 v5, 0x8

    const-string/jumbo v6, "Event"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object p3, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_2
    sget-object v1, Lid$2;->a:[I

    invoke-virtual {p2}, Lanet/channel/entity/EventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    iput-boolean v7, v0, Lir;->a:Z

    .line 146
    instance-of v1, p3, Lin;

    if-eqz v1, :cond_3

    .line 147
    check-cast p3, Lin;

    .end local p3    # "event":Lip;
    iget-wide v2, p3, Lin;->a:J

    iput-wide v2, v0, Lir;->b:J

    .line 151
    :goto_1
    invoke-static {p1}, Lid;->a(Lanet/channel/Session;)V

    .line 165
    :goto_2
    invoke-static {}, Lkc;->a()Lka;

    move-result-object v1

    invoke-virtual {p1}, Lanet/channel/Session;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lanet/channel/Session;->j()Ljy;

    move-result-object v3

    sget-object v4, Lanet/channel/entity/EventType;->HORSE_RIDE:Lanet/channel/entity/EventType;

    invoke-interface {v1, v2, v3, v4, v0}, Lka;->a(Ljava/lang/String;Ljy;Lanet/channel/entity/EventType;Lip;)V

    goto/16 :goto_0

    .line 149
    .restart local p3    # "event":Lip;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lid$1;->a:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lir;->b:J

    goto :goto_1

    .line 155
    :pswitch_1
    invoke-static {v0, p3}, Lid;->a(Lir;Lip;)V

    goto :goto_2

    .line 159
    :pswitch_2
    invoke-static {v0, p3}, Lid;->a(Lir;Lip;)V

    goto :goto_2

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
