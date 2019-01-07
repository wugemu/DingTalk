.class final Ljzf;
.super Ljvg$b;


# instance fields
.field a:Ljvg$b;

.field final synthetic b:Ljzd;


# direct methods
.method constructor <init>(Ljzd;)V
    .locals 0

    iput-object p1, p0, Ljzf;->b:Ljzd;

    invoke-direct {p0}, Ljvg$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ljzf;->b:Ljzd;

    invoke-static {v0}, Ljzd;->b(Ljzd;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljzd$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljzd$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljzf;->b:Ljzd;

    invoke-static {v0}, Ljzd;->b(Ljzd;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljvg$b;

    iput-object v0, p0, Ljzf;->a:Ljvg$b;

    iget-object v0, p0, Ljzf;->a:Ljvg$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljzf;->a:Ljvg$b;

    invoke-virtual {v0}, Ljvg$b;->a()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Ljzf;->a:Ljvg$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljzf;->a:Ljvg$b;

    invoke-virtual {v0}, Ljvg$b;->b()V

    :cond_0
    return-void
.end method
