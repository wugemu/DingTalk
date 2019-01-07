.class public Lcom/laiwang/protocol/network/Network$State;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/network/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public connected:Z

.field private failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public name:Ljava/lang/String;

.field public type:Lcom/laiwang/protocol/network/Network$Type;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/network/Network$Type;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/laiwang/protocol/network/Network$Type;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/laiwang/protocol/network/Network$Type;->NONE:Lcom/laiwang/protocol/network/Network$Type;

    iput-object v0, p0, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/network/Network$State;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    iput-object p1, p0, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    .line 37
    iput-object p2, p0, Lcom/laiwang/protocol/network/Network$State;->name:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/laiwang/protocol/network/Network$Type;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "type"    # Lcom/laiwang/protocol/network/Network$Type;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "connected"    # Z

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/laiwang/protocol/network/Network$Type;->NONE:Lcom/laiwang/protocol/network/Network$Type;

    iput-object v0, p0, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/network/Network$State;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    iput-object p1, p0, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    .line 42
    iput-object p2, p0, Lcom/laiwang/protocol/network/Network$State;->name:Ljava/lang/String;

    .line 43
    iput-boolean p3, p0, Lcom/laiwang/protocol/network/Network$State;->connected:Z

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    move-object v0, p1

    check-cast v0, Lcom/laiwang/protocol/network/Network$State;

    .line 57
    .local v0, "compare2":Lcom/laiwang/protocol/network/Network$State;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    iget-object v2, v0, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/laiwang/protocol/network/Network$State;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/laiwang/protocol/network/Network$State;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/laiwang/protocol/network/Network$State;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const/4 v1, 0x1

    .line 60
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public incrementFailed()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/laiwang/protocol/network/Network$State;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public resetFailed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    iget-object v0, p0, Lcom/laiwang/protocol/network/Network$State;->failedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "State{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/laiwang/protocol/network/Network$State;->type:Lcom/laiwang/protocol/network/Network$Type;

    iget-object v1, v1, Lcom/laiwang/protocol/network/Network$Type;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/laiwang/protocol/network/Network$State;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
