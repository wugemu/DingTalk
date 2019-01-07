.class final Ljxs;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Ljxq;


# direct methods
.method constructor <init>(Ljxq;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ljxs;->a:Ljxq;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Ljxs;->a:Ljxq;

    iget-object v1, p0, Ljxs;->a:Ljxq;

    invoke-static {v1}, Ljxq;->a(Ljxq;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkax;->a(Landroid/content/Context;)Lkax;

    move-result-object v1

    invoke-virtual {v1}, Lkax;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljxq;->a(Ljxq;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Ljxs;->a:Ljxq;

    invoke-static {v0}, Ljxq;->b(Ljxq;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxs;->a:Ljxq;

    invoke-static {v0}, Ljxq;->a(Ljxq;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Ljxs;->a:Ljxq;

    invoke-static {v0}, Ljxq;->a(Ljxq;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljvn;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxs;->a:Ljxq;

    invoke-virtual {v0}, Ljxq;->d()V

    :cond_0
    return-void
.end method
