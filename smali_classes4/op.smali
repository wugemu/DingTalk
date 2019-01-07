.class public Lop;
.super Ljava/lang/Object;
.source "RPCEfficiencyManager.java"

# interfaces
.implements Lom;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lor;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Loq;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lop;->a:Ljava/util/Map;

    .line 20
    iput-object v0, p0, Lop;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 187
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RPCEfficiencyManager:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 188
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 189
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 191
    .end local v0    # "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    :cond_0
    return-void
.end method

.method public final a(Lon;)V
    .locals 1
    .param p1, "task"    # Lon;

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 99
    new-instance v0, Lop$2;

    invoke-direct {v0, p0, p1}, Lop$2;-><init>(Lop;Lon;)V

    invoke-virtual {p0, v0}, Lop;->a(Ljava/lang/Runnable;)V

    .line 139
    :cond_0
    return-void
.end method

.method public final a(Loq;)V
    .locals 3
    .param p1, "callback"    # Loq;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    iget-object v1, p0, Lop;->b:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lop;->b:Ljava/util/Map;

    .line 1046
    iget-object v2, p1, Loq;->d:Ljava/lang/Object;

    .line 164
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 165
    .local v0, "group":Ljava/util/List;, "Ljava/util/List<Loq;>;"
    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lop;->b:Ljava/util/Map;

    .line 2046
    iget-object v2, p1, Loq;->d:Ljava/lang/Object;

    .line 169
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lop;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Lop;->b:Ljava/util/Map;

    .line 178
    .end local v0    # "group":Ljava/util/List;, "Ljava/util/List<Loq;>;"
    :cond_0
    return-void
.end method

.method public final a(Lor;)V
    .locals 2
    .param p1, "callback"    # Lor;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lop;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lop;->a:Ljava/util/Map;

    .line 1042
    iget-object v1, p1, Lor;->b:Ljava/lang/Object;

    .line 151
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lop;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lop;->a:Ljava/util/Map;

    .line 158
    :cond_0
    return-void
.end method
