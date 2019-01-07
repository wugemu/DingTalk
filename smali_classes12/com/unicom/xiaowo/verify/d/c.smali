.class final Lcom/unicom/xiaowo/verify/d/c;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ForceMobileNetTools.java"


# instance fields
.field final synthetic a:Lcom/unicom/xiaowo/verify/d/a$b;

.field final synthetic b:Lcom/unicom/xiaowo/verify/d/a;


# direct methods
.method constructor <init>(Lcom/unicom/xiaowo/verify/d/a;Lcom/unicom/xiaowo/verify/d/a$b;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/d/c;->b:Lcom/unicom/xiaowo/verify/d/a;

    iput-object p2, p0, Lcom/unicom/xiaowo/verify/d/c;->a:Lcom/unicom/xiaowo/verify/d/a$b;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/c;->b:Lcom/unicom/xiaowo/verify/d/a;

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/a;->a(Lcom/unicom/xiaowo/verify/d/a;)Lcom/unicom/xiaowo/verify/d/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/c;->b:Lcom/unicom/xiaowo/verify/d/a;

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/a;->a(Lcom/unicom/xiaowo/verify/d/a;)Lcom/unicom/xiaowo/verify/d/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unicom/xiaowo/verify/d/a$a;->cancel()V

    .line 86
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/c;->b:Lcom/unicom/xiaowo/verify/d/a;

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/a;->b(Lcom/unicom/xiaowo/verify/d/a;)Lcom/unicom/xiaowo/verify/d/a$a;

    .line 87
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/c;->a:Lcom/unicom/xiaowo/verify/d/a$b;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/c;->a:Lcom/unicom/xiaowo/verify/d/a$b;

    invoke-interface {v0, p1}, Lcom/unicom/xiaowo/verify/d/a$b;->a(Landroid/net/Network;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/c;->a:Lcom/unicom/xiaowo/verify/d/a$b;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/c;->a:Lcom/unicom/xiaowo/verify/d/a$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unicom/xiaowo/verify/d/a$b;->a(Landroid/net/Network;)V

    goto :goto_0
.end method
