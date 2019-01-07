.class public Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
.super Ljava/lang/Object;
.source "MyNetworkStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public iface:Ljava/lang/String;

.field public operations:J

.field public rxBytes:J

.field public rxPackets:J

.field public set:I

.field public tag:I

.field public txBytes:J

.field public txPackets:J

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 16

    .prologue
    .line 98
    sget-object v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v15}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 99
    return-void
.end method

.method public constructor <init>(JJJJJ)V
    .locals 17
    .param p1, "rxBytes"    # J
    .param p3, "rxPackets"    # J
    .param p5, "txBytes"    # J
    .param p7, "txPackets"    # J
    .param p9, "operations"    # J

    .prologue
    .line 102
    sget-object v2, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    invoke-direct/range {v1 .. v15}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIJJJJJ)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    .line 109
    iput p2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    .line 110
    iput p3, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    .line 111
    iput p4, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    .line 112
    iput-wide p5, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    .line 113
    iput-wide p7, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    .line 114
    iput-wide p9, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    .line 115
    iput-wide p11, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    .line 116
    iput-wide p13, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    .line 117
    return-void
.end method


# virtual methods
.method public add(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;)V
    .locals 4
    .param p1, "another"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    iget-wide v2, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    .line 130
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    iget-wide v2, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    .line 131
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    iget-wide v2, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    .line 132
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    iget-wide v2, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    .line 133
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    iget-wide v2, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    .line 134
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 153
    instance-of v2, p1, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 154
    check-cast v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;

    .line 155
    .local v0, "e":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    iget v3, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    iget v3, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    iget v3, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    iget-wide v4, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 160
    .end local v0    # "e":Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;
    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 124
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNegative()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 120
    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string/jumbo v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    const-string/jumbo v1, " set="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->set:I

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string/jumbo v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->tag:I

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string/jumbo v1, " rxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    const-string/jumbo v1, " rxPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->rxPackets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    const-string/jumbo v1, " txBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    const-string/jumbo v1, " txPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->txPackets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    const-string/jumbo v1, " operations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/MyNetworkStats$Entry;->operations:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
