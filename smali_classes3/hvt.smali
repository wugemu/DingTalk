.class public final Lhvt;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lhvs;


# direct methods
.method public constructor <init>(Lhvs;)V
    .locals 0

    iput-object p1, p0, Lhvt;->a:Lhvs;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    iget-object v0, p0, Lhvt;->a:Lhvs;

    iget v1, v0, Lhvs;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lhvs;->c:I

    iget-object v0, p0, Lhvt;->a:Lhvs;

    iget v0, v0, Lhvs;->c:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lhvt;->a:Lhvs;

    const/4 v1, 0x0

    iput v1, v0, Lhvs;->c:I

    iget-object v0, p0, Lhvt;->a:Lhvs;

    iget-object v0, v0, Lhvs;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lhvt;->a:Lhvs;

    iget-object v0, v0, Lhvs;->f:Lhvs$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhvt;->a:Lhvs;

    iget-object v0, v0, Lhvs;->f:Lhvs$a;

    iget-object v1, p0, Lhvt;->a:Lhvs;

    iget v1, v1, Lhvs;->c:I

    invoke-interface {v0, v1}, Lhvs$a;->a(I)V

    :cond_1
    return-void
.end method
