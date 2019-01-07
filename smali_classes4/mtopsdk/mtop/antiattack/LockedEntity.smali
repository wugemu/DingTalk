.class Lmtopsdk/mtop/antiattack/LockedEntity;
.super Ljava/lang/Object;
.source "ApiLockHelper.java"


# instance fields
.field public key:Ljava/lang/String;

.field public lockInterval:J

.field public lockStartTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "lockStartTime"    # J
    .param p4, "lockInterval"    # J

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lmtopsdk/mtop/antiattack/LockedEntity;->key:Ljava/lang/String;

    .line 138
    iput-wide p2, p0, Lmtopsdk/mtop/antiattack/LockedEntity;->lockStartTime:J

    .line 139
    iput-wide p4, p0, Lmtopsdk/mtop/antiattack/LockedEntity;->lockInterval:J

    .line 140
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LockedEntity ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/antiattack/LockedEntity;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string/jumbo v1, ", lockStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmtopsdk/mtop/antiattack/LockedEntity;->lockStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    const-string/jumbo v1, ", lockInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmtopsdk/mtop/antiattack/LockedEntity;->lockInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
