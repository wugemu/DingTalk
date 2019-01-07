.class final Liaa$1$1;
.super Ljava/lang/Object;
.source "ThreadTask.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaa$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Liaa$1;


# direct methods
.method constructor <init>(Liaa$1;)V
    .locals 0
    .param p1, "this$1"    # Liaa$1;

    .prologue
    .line 59
    .local p0, "this":Liaa$1$1;, "Liaa$1$1;"
    iput-object p1, p0, Liaa$1$1;->a:Liaa$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 101
    .local p0, "this":Liaa$1$1;, "Liaa$1$1;"
    iget-object v1, p0, Liaa$1$1;->a:Liaa$1;

    iget-object v1, v1, Liaa$1;->a:Liaa;

    invoke-static {v1}, Liaa;->access$000(Liaa;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Liaa$1$1;->a:Liaa$1;

    iget-object v1, v1, Liaa$1;->a:Liaa;

    invoke-static {v1}, Liaa;->access$400(Liaa;)Lcom/alibaba/wukong/WKExecutor;

    move-result-object v1

    new-instance v2, Liaa$1$1$3;

    invoke-direct {v2, p0, p1, p2}, Liaa$1$1$3;-><init>(Liaa$1$1;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Liaa$1$1;->a:Liaa$1;

    iget-object v3, v3, Liaa$1;->a:Liaa;

    .line 115
    invoke-static {v3}, Liaa;->access$300(Liaa;)Lcom/alibaba/doraemon/Priority;

    move-result-object v3

    .line 102
    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/WKExecutor;->execute(Ljava/lang/Runnable;Lcom/alibaba/doraemon/Priority;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance v0, Liaa$b;

    iget-object v1, p0, Liaa$1$1;->a:Liaa$1;

    iget-object v1, v1, Liaa$1;->a:Liaa;

    invoke-direct {v0, v1}, Liaa$b;-><init>(Liaa;)V

    .line 119
    .local v0, "result":Liaa$b;, "Liaa<TV;TT;>.b;"
    const/4 v1, 0x0

    iput-boolean v1, v0, Liaa$b;->a:Z

    .line 120
    iput-object p1, v0, Liaa$b;->b:Ljava/lang/String;

    .line 121
    iput-object p2, v0, Liaa$b;->c:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Liaa$1$1;->a:Liaa$1;

    iget-object v1, v1, Liaa$1;->a:Liaa;

    invoke-static {v1}, Liaa;->access$100(Liaa;)Z

    move-result v1

    iput-boolean v1, v0, Liaa$b;->e:Z

    .line 123
    iget-object v1, p0, Liaa$1$1;->a:Liaa$1;

    iget-object v1, v1, Liaa$1;->a:Liaa;

    invoke-static {v1, v0}, Liaa;->access$200(Liaa;Liaa$b;)V

    .line 124
    const-string/jumbo v1, "408"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Liaa$1$1;->a:Liaa$1;

    iget-object v1, v1, Liaa$1;->a:Liaa;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Liaa;->access$102(Liaa;Z)Z

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 2
    .param p2, "progress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 89
    .local p0, "this":Liaa$1$1;, "Liaa$1$1;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-static {}, Liaa;->access$600()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Liaa$1$1$2;

    invoke-direct {v1, p0, p1, p2}, Liaa$1$1$2;-><init>(Liaa$1$1;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 63
    .local p0, "this":Liaa$1$1;, "Liaa$1$1;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Liaa$1$1;->a:Liaa$1;

    iget-object v1, v1, Liaa$1;->a:Liaa;

    invoke-static {v1}, Liaa;->access$000(Liaa;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Liaa$1$1;->a:Liaa$1;

    iget-object v1, v1, Liaa$1;->a:Liaa;

    invoke-static {v1}, Liaa;->access$400(Liaa;)Lcom/alibaba/wukong/WKExecutor;

    move-result-object v1

    new-instance v2, Liaa$1$1$1;

    invoke-direct {v2, p0, p1}, Liaa$1$1$1;-><init>(Liaa$1$1;Ljava/lang/Object;)V

    iget-object v3, p0, Liaa$1$1;->a:Liaa$1;

    iget-object v3, v3, Liaa$1;->a:Liaa;

    .line 75
    invoke-static {v3}, Liaa;->access$300(Liaa;)Lcom/alibaba/doraemon/Priority;

    move-result-object v3

    .line 64
    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/WKExecutor;->execute(Ljava/lang/Runnable;Lcom/alibaba/doraemon/Priority;)V

    .line 85
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v0, Liaa$b;

    iget-object v1, p0, Liaa$1$1;->a:Liaa$1;

    iget-object v1, v1, Liaa$1;->a:Liaa;

    invoke-direct {v0, v1}, Liaa$b;-><init>(Liaa;)V

    .line 79
    .local v0, "result":Liaa$b;, "Liaa<TV;TT;>.b;"
    const/4 v1, 0x1

    iput-boolean v1, v0, Liaa$b;->a:Z

    .line 80
    const-string/jumbo v1, "200"

    iput-object v1, v0, Liaa$b;->b:Ljava/lang/String;

    .line 81
    iput-object p1, v0, Liaa$b;->d:Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Liaa$1$1;->a:Liaa$1;

    iget-object v1, v1, Liaa$1;->a:Liaa;

    invoke-static {v1}, Liaa;->access$100(Liaa;)Z

    move-result v1

    iput-boolean v1, v0, Liaa$b;->e:Z

    .line 83
    iget-object v1, p0, Liaa$1$1;->a:Liaa$1;

    iget-object v1, v1, Liaa$1;->a:Liaa;

    invoke-static {v1, v0}, Liaa;->access$200(Liaa;Liaa$b;)V

    goto :goto_0
.end method
