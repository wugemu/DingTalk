.class public Lcom/alibaba/wukong/auth/az;
.super Ljava/lang/Object;
.source "SyncInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bc:J

.field public bd:J

.field public be:J

.field public bf:J

.field public bg:Ljava/lang/String;

.field public bh:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/auth/ae;)Lcom/alibaba/wukong/auth/az;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/wukong/auth/ae;

    .prologue
    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/auth/az;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/az;-><init>()V

    .line 61
    .local v0, "info":Lcom/alibaba/wukong/auth/az;
    iget-object v1, p0, Lcom/alibaba/wukong/auth/ae;->aq:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/auth/az;->bc:J

    .line 62
    iget-object v1, p0, Lcom/alibaba/wukong/auth/ae;->ar:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/auth/az;->bd:J

    .line 63
    iget-object v1, p0, Lcom/alibaba/wukong/auth/ae;->timestamp:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/auth/az;->be:J

    .line 64
    iget-object v1, p0, Lcom/alibaba/wukong/auth/ae;->as:Ljava/lang/Long;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/auth/az;->bf:J

    .line 65
    iget-object v1, p0, Lcom/alibaba/wukong/auth/ae;->at:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/az;->bg:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/alibaba/wukong/auth/ae;->au:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/az;->bh:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-ne p1, p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    instance-of v3, p1, Lcom/alibaba/wukong/auth/az;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 87
    check-cast v0, Lcom/alibaba/wukong/auth/az;

    .line 89
    .local v0, "si":Lcom/alibaba/wukong/auth/az;
    iget-wide v4, p0, Lcom/alibaba/wukong/auth/az;->bc:J

    iget-wide v6, v0, Lcom/alibaba/wukong/auth/az;->bc:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-wide v4, p0, Lcom/alibaba/wukong/auth/az;->bf:J

    iget-wide v6, v0, Lcom/alibaba/wukong/auth/az;->bf:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-wide v4, p0, Lcom/alibaba/wukong/auth/az;->bd:J

    iget-wide v6, v0, Lcom/alibaba/wukong/auth/az;->bd:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget-wide v4, p0, Lcom/alibaba/wukong/auth/az;->be:J

    iget-wide v6, v0, Lcom/alibaba/wukong/auth/az;->be:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "si":Lcom/alibaba/wukong/auth/az;
    :cond_3
    move v1, v2

    .line 92
    goto :goto_0
.end method

.method public p()Lcom/alibaba/wukong/auth/ae;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    new-instance v0, Lcom/alibaba/wukong/auth/ae;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/ae;-><init>()V

    .line 48
    .local v0, "model":Lcom/alibaba/wukong/auth/ae;
    iget-wide v2, p0, Lcom/alibaba/wukong/auth/az;->bc:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/ae;->aq:Ljava/lang/Long;

    .line 49
    iget-wide v2, p0, Lcom/alibaba/wukong/auth/az;->bd:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/ae;->ar:Ljava/lang/Long;

    .line 50
    iget-wide v2, p0, Lcom/alibaba/wukong/auth/az;->be:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/ae;->timestamp:Ljava/lang/Long;

    .line 51
    iget-wide v2, p0, Lcom/alibaba/wukong/auth/az;->bf:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/ae;->as:Ljava/lang/Long;

    .line 52
    iget-object v1, p0, Lcom/alibaba/wukong/auth/az;->bg:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/ae;->at:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/alibaba/wukong/auth/az;->bh:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/ae;->au:Ljava/lang/String;

    .line 54
    return-object v0
.end method

.method public q()Lcom/alibaba/wukong/auth/az;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    new-instance v0, Lcom/alibaba/wukong/auth/az;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/az;-><init>()V

    .line 72
    .local v0, "info":Lcom/alibaba/wukong/auth/az;
    iget-wide v2, p0, Lcom/alibaba/wukong/auth/az;->bc:J

    iput-wide v2, v0, Lcom/alibaba/wukong/auth/az;->bc:J

    .line 73
    iget-wide v2, p0, Lcom/alibaba/wukong/auth/az;->bd:J

    iput-wide v2, v0, Lcom/alibaba/wukong/auth/az;->bd:J

    .line 74
    iget-wide v2, p0, Lcom/alibaba/wukong/auth/az;->be:J

    iput-wide v2, v0, Lcom/alibaba/wukong/auth/az;->be:J

    .line 75
    iget-wide v2, p0, Lcom/alibaba/wukong/auth/az;->bf:J

    iput-wide v2, v0, Lcom/alibaba/wukong/auth/az;->bf:J

    .line 76
    iget-object v1, p0, Lcom/alibaba/wukong/auth/az;->bg:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/az;->bg:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/alibaba/wukong/auth/az;->bh:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/az;->bh:Ljava/lang/String;

    .line 78
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Lcom/alibaba/wukong/auth/az;->bc:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-wide v2, p0, Lcom/alibaba/wukong/auth/az;->bf:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-wide v2, p0, Lcom/alibaba/wukong/auth/az;->bd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-wide v2, p0, Lcom/alibaba/wukong/auth/az;->be:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcom/alibaba/wukong/auth/az;->bg:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/alibaba/wukong/auth/az;->bg:Ljava/lang/String;

    goto :goto_0
.end method
