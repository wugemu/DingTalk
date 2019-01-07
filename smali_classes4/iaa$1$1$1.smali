.class final Liaa$1$1$1;
.super Ljava/lang/Object;
.source "ThreadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liaa$1$1;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Liaa$1$1;


# direct methods
.method constructor <init>(Liaa$1$1;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$2"    # Liaa$1$1;

    .prologue
    .line 64
    .local p0, "this":Liaa$1$1$1;, "Liaa$1$1$1;"
    iput-object p1, p0, Liaa$1$1$1;->b:Liaa$1$1;

    iput-object p2, p0, Liaa$1$1$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 67
    .local p0, "this":Liaa$1$1$1;, "Liaa$1$1$1;"
    new-instance v0, Liaa$b;

    iget-object v1, p0, Liaa$1$1$1;->b:Liaa$1$1;

    iget-object v1, v1, Liaa$1$1;->a:Liaa$1;

    iget-object v1, v1, Liaa$1;->a:Liaa;

    invoke-direct {v0, v1}, Liaa$b;-><init>(Liaa;)V

    .line 68
    .local v0, "result":Liaa$b;, "Liaa<TV;TT;>.b;"
    const/4 v1, 0x1

    iput-boolean v1, v0, Liaa$b;->a:Z

    .line 69
    const-string/jumbo v1, "200"

    iput-object v1, v0, Liaa$b;->b:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Liaa$1$1$1;->a:Ljava/lang/Object;

    iput-object v1, v0, Liaa$b;->d:Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Liaa$1$1$1;->b:Liaa$1$1;

    iget-object v1, v1, Liaa$1$1;->a:Liaa$1;

    iget-object v1, v1, Liaa$1;->a:Liaa;

    invoke-static {v1}, Liaa;->access$100(Liaa;)Z

    move-result v1

    iput-boolean v1, v0, Liaa$b;->e:Z

    .line 72
    iget-object v1, p0, Liaa$1$1$1;->b:Liaa$1$1;

    iget-object v1, v1, Liaa$1$1;->a:Liaa$1;

    iget-object v1, v1, Liaa$1;->a:Liaa;

    invoke-virtual {v1, v0}, Liaa;->onAfterRpc(Liaa$b;)Liaa$b;

    move-result-object v0

    .line 73
    iget-object v1, p0, Liaa$1$1$1;->b:Liaa$1$1;

    iget-object v1, v1, Liaa$1$1;->a:Liaa$1;

    iget-object v1, v1, Liaa$1;->a:Liaa;

    invoke-static {v1, v0}, Liaa;->access$200(Liaa;Liaa$b;)V

    .line 74
    return-void
.end method
