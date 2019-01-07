.class public abstract Lcom/laiwang/protocol/android/bu$a;
.super Ljava/lang/Object;
.source "IOExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/bu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public delay:J

.field public firstDelay:J

.field public name:Ljava/lang/String;

.field public stop:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/bu$a;->stop:Z

    .line 113
    iput-object p1, p0, Lcom/laiwang/protocol/android/bu$a;->name:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delay"    # J

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/laiwang/protocol/android/bu$a;-><init>(Ljava/lang/String;JJ)V

    .line 118
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delay"    # J
    .param p4, "firstDelay"    # J

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/bu$a;->stop:Z

    .line 121
    iput-object p1, p0, Lcom/laiwang/protocol/android/bu$a;->name:Ljava/lang/String;

    .line 122
    iput-wide p2, p0, Lcom/laiwang/protocol/android/bu$a;->delay:J

    .line 123
    iput-wide p4, p0, Lcom/laiwang/protocol/android/bu$a;->firstDelay:J

    .line 124
    return-void
.end method


# virtual methods
.method public getDelay()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/laiwang/protocol/android/bu$a;->delay:J

    return-wide v0
.end method

.method public isStop()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/laiwang/protocol/android/bu$a;->stop:Z

    return v0
.end method

.method public setDelay(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/laiwang/protocol/android/bu$a;->delay:J

    .line 145
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/laiwang/protocol/android/bu$a;->stop:Z

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Task{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/laiwang/protocol/android/bu$a;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/laiwang/protocol/android/bu$a;->delay:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", stop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/laiwang/protocol/android/bu$a;->stop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
