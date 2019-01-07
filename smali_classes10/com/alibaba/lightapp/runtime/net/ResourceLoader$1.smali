.class final Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/net/ResourceLoader$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "data"    # Ljava/io/InputStream;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)Lhpd;

    move-result-object v1

    invoke-virtual {v1, p1}, Lhpd;->a(Ljava/io/InputStream;)V

    .line 84
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)Ljava/util/Queue;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpj;

    .line 86
    .local v0, "netCallback":Lhpj;
    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1$1;-><init>(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;Lhpj;Ljava/io/InputStream;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 99
    .end local v0    # "netCallback":Lhpj;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->c(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)V

    .line 100
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "err"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->d(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)Lhpd;

    move-result-object v1

    new-instance v2, Lhpc;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->a(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)Lhpd;

    move-result-object v3

    iget-object v3, v3, Lhpd;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lhpc;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lhpd;->a(Ljava/io/InputStream;)V

    .line 107
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)Ljava/util/Queue;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->b(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpj;

    .line 109
    .local v0, "netCallback":Lhpj;
    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1$2;-><init>(Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;Lhpj;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 121
    .end local v0    # "netCallback":Lhpj;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/net/ResourceLoader$1;->a:Lcom/alibaba/lightapp/runtime/net/ResourceLoader;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/net/ResourceLoader;->c(Lcom/alibaba/lightapp/runtime/net/ResourceLoader;)V

    .line 122
    return-void
.end method
