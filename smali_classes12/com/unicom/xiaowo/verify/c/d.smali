.class final Lcom/unicom/xiaowo/verify/c/d;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Lcom/unicom/xiaowo/verify/c/a$a;


# instance fields
.field final synthetic a:Lcom/unicom/xiaowo/verify/c/f;

.field final synthetic b:Lcom/unicom/xiaowo/verify/c/c;


# direct methods
.method constructor <init>(Lcom/unicom/xiaowo/verify/c/c;Lcom/unicom/xiaowo/verify/c/f;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/c/d;->b:Lcom/unicom/xiaowo/verify/c/c;

    iput-object p2, p0, Lcom/unicom/xiaowo/verify/c/d;->a:Lcom/unicom/xiaowo/verify/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "precheck:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/unicom/xiaowo/verify/d/a;->a()Lcom/unicom/xiaowo/verify/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unicom/xiaowo/verify/d/a;->b()V

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/c/d;->a:Lcom/unicom/xiaowo/verify/c/f;

    const/4 v1, 0x2

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/unicom/xiaowo/verify/c/f;->a(ILjava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/c/d;->a:Lcom/unicom/xiaowo/verify/c/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/unicom/xiaowo/verify/c/f;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
