.class final Liae$1$1$1;
.super Ljava/lang/Object;
.source "IMTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liae$1$1;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Liae$1$1;


# direct methods
.method constructor <init>(Liae$1$1;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$2"    # Liae$1$1;

    .prologue
    .line 58
    .local p0, "this":Liae$1$1$1;, "Liae$1$1$1;"
    iput-object p1, p0, Liae$1$1$1;->b:Liae$1$1;

    iput-object p2, p0, Liae$1$1$1;->a:Ljava/lang/Object;

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
    .line 61
    .local p0, "this":Liae$1$1$1;, "Liae$1$1$1;"
    new-instance v0, Liae$b;

    iget-object v1, p0, Liae$1$1$1;->b:Liae$1$1;

    iget-object v1, v1, Liae$1$1;->a:Liae$1;

    iget-object v1, v1, Liae$1;->a:Liae;

    invoke-direct {v0, v1}, Liae$b;-><init>(Liae;)V

    .line 62
    .local v0, "result":Liae$b;, "Liae<TV;TT;>.b;"
    const/4 v1, 0x1

    iput-boolean v1, v0, Liae$b;->a:Z

    .line 63
    const-string/jumbo v1, "200"

    iput-object v1, v0, Liae$b;->b:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Liae$1$1$1;->a:Ljava/lang/Object;

    iput-object v1, v0, Liae$b;->d:Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Liae$1$1$1;->b:Liae$1$1;

    iget-object v1, v1, Liae$1$1;->a:Liae$1;

    iget-object v1, v1, Liae$1;->a:Liae;

    invoke-static {v1}, Liae;->access$100(Liae;)Z

    move-result v1

    iput-boolean v1, v0, Liae$b;->e:Z

    .line 66
    iget-object v1, p0, Liae$1$1$1;->b:Liae$1$1;

    iget-object v1, v1, Liae$1$1;->a:Liae$1;

    iget-object v1, v1, Liae$1;->a:Liae;

    invoke-virtual {v1, v0}, Liae;->onAfterRpc(Liae$b;)Liae$b;

    move-result-object v0

    .line 67
    iget-object v1, p0, Liae$1$1$1;->b:Liae$1$1;

    iget-object v1, v1, Liae$1$1;->a:Liae$1;

    iget-object v1, v1, Liae$1;->a:Liae;

    invoke-static {v1, v0}, Liae;->access$200(Liae;Liae$b;)V

    .line 68
    return-void
.end method
