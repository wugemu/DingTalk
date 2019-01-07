.class public Lhdj;
.super Ljava/lang/Object;
.source "NuvaContextWrapper.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/INuvaContext;


# instance fields
.field private a:Lcom/alibaba/lightapp/runtime/INuvaContext;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/INuvaContext;)V
    .locals 0
    .param p1, "context"    # Lcom/alibaba/lightapp/runtime/INuvaContext;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lhdj;->a:Lcom/alibaba/lightapp/runtime/INuvaContext;

    .line 16
    return-void
.end method


# virtual methods
.method public consumeMessage(J)V
    .locals 1
    .param p1, "mid"    # J

    .prologue
    .line 42
    iget-object v0, p0, Lhdj;->a:Lcom/alibaba/lightapp/runtime/INuvaContext;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lhdj;->a:Lcom/alibaba/lightapp/runtime/INuvaContext;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/INuvaContext;->consumeMessage(J)V

    .line 45
    :cond_0
    return-void
.end method

.method public fetchMessage(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lhdi$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lhdj;->a:Lcom/alibaba/lightapp/runtime/INuvaContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdj;->a:Lcom/alibaba/lightapp/runtime/INuvaContext;

    invoke-interface {v0, p1}, Lcom/alibaba/lightapp/runtime/INuvaContext;->fetchMessage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentNavId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lhdj;->a:Lcom/alibaba/lightapp/runtime/INuvaContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdj;->a:Lcom/alibaba/lightapp/runtime/INuvaContext;

    invoke-interface {v0}, Lcom/alibaba/lightapp/runtime/INuvaContext;->getCurrentNavId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lhdj;->a:Lcom/alibaba/lightapp/runtime/INuvaContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdj;->a:Lcom/alibaba/lightapp/runtime/INuvaContext;

    invoke-interface {v0}, Lcom/alibaba/lightapp/runtime/INuvaContext;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postMessage(Ljava/util/List;Lhdi$b;)V
    .locals 1
    .param p2, "message"    # Lhdi$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lhdi$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "to":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lhdj;->a:Lcom/alibaba/lightapp/runtime/INuvaContext;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lhdj;->a:Lcom/alibaba/lightapp/runtime/INuvaContext;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/INuvaContext;->postMessage(Ljava/util/List;Lhdi$b;)V

    .line 33
    :cond_0
    return-void
.end method

.method public provideDelegateModel(Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/lightapp/runtime/Component$a;",
            ">;)",
            "Lcom/alibaba/lightapp/runtime/Component$a;"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/lightapp/runtime/Component$a;>;"
    iget-object v0, p0, Lhdj;->a:Lcom/alibaba/lightapp/runtime/INuvaContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdj;->a:Lcom/alibaba/lightapp/runtime/INuvaContext;

    invoke-interface {v0, p1}, Lcom/alibaba/lightapp/runtime/INuvaContext;->provideDelegateModel(Ljava/lang/Class;)Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public triggerMessage()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lhdj;->a:Lcom/alibaba/lightapp/runtime/INuvaContext;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lhdj;->a:Lcom/alibaba/lightapp/runtime/INuvaContext;

    invoke-interface {v0}, Lcom/alibaba/lightapp/runtime/INuvaContext;->triggerMessage()V

    .line 52
    :cond_0
    return-void
.end method
