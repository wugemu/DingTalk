.class final Lcom/unicom/xiaowo/verify/d/b;
.super Ljava/lang/Object;
.source "ForceMobileNetTools.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/unicom/xiaowo/verify/d/a$b;

.field final synthetic d:Lcom/unicom/xiaowo/verify/d/a;


# direct methods
.method constructor <init>(Lcom/unicom/xiaowo/verify/d/a;Landroid/content/Context;Ljava/lang/String;Lcom/unicom/xiaowo/verify/d/a$b;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/d/b;->d:Lcom/unicom/xiaowo/verify/d/a;

    iput-object p2, p0, Lcom/unicom/xiaowo/verify/d/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/unicom/xiaowo/verify/d/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/unicom/xiaowo/verify/d/b;->c:Lcom/unicom/xiaowo/verify/d/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/b;->d:Lcom/unicom/xiaowo/verify/d/a;

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/d/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/unicom/xiaowo/verify/d/b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/unicom/xiaowo/verify/d/a;->a(Lcom/unicom/xiaowo/verify/d/a;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "forceMobileConnectionForAddress = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/b;->c:Lcom/unicom/xiaowo/verify/d/a$b;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/d/b;->c:Lcom/unicom/xiaowo/verify/d/a$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unicom/xiaowo/verify/d/a$b;->a(Landroid/net/Network;)V

    .line 61
    :cond_0
    return-void
.end method
