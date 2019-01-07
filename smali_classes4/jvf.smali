.class final Ljvf;
.super Ljvd$b;


# instance fields
.field final synthetic b:Ljvd;


# direct methods
.method constructor <init>(Ljvd;Ljvd$a;)V
    .locals 0

    iput-object p1, p0, Ljvf;->b:Ljvd;

    invoke-direct {p0, p2}, Ljvd$b;-><init>(Ljvd$a;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Ljvf;->b:Ljvd;

    invoke-static {v0}, Ljvd;->b(Ljvd;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljvf;->b:Ljvd;

    invoke-static {v0}, Ljvd;->c(Ljvd;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Ljvf;->a:Ljvd$a;

    invoke-virtual {v2}, Ljvd$a;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
