.class final Lcom/unicom/xiaowo/verify/c/b;
.super Ljava/lang/Object;
.source "AsyncMultimode.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Landroid/net/Network;

.field final synthetic d:Lcom/unicom/xiaowo/verify/c/a$a;

.field final synthetic e:Lcom/unicom/xiaowo/verify/c/a;


# direct methods
.method constructor <init>(Lcom/unicom/xiaowo/verify/c/a;Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Network;Lcom/unicom/xiaowo/verify/c/a$a;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/c/b;->e:Lcom/unicom/xiaowo/verify/c/a;

    iput-object p2, p0, Lcom/unicom/xiaowo/verify/c/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/unicom/xiaowo/verify/c/b;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/unicom/xiaowo/verify/c/b;->c:Landroid/net/Network;

    iput-object p5, p0, Lcom/unicom/xiaowo/verify/c/b;->d:Lcom/unicom/xiaowo/verify/c/a$a;

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
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/c/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/c/b;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/unicom/xiaowo/verify/c/b;->c:Landroid/net/Network;

    invoke-static {v0, v1, v2}, Lcom/unicom/xiaowo/verify/c/g;->a(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Network;)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/unicom/xiaowo/verify/c/b;->d:Lcom/unicom/xiaowo/verify/c/a$a;

    invoke-interface {v1, v0}, Lcom/unicom/xiaowo/verify/c/a$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
