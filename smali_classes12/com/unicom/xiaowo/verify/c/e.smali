.class final Lcom/unicom/xiaowo/verify/c/e;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Lcom/unicom/xiaowo/verify/d/a$b;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/unicom/xiaowo/verify/c/f;

.field final synthetic d:Lcom/unicom/xiaowo/verify/c/c;


# direct methods
.method constructor <init>(Lcom/unicom/xiaowo/verify/c/c;Landroid/content/Context;Ljava/lang/String;Lcom/unicom/xiaowo/verify/c/f;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/c/e;->d:Lcom/unicom/xiaowo/verify/c/c;

    iput-object p2, p0, Lcom/unicom/xiaowo/verify/c/e;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/unicom/xiaowo/verify/c/e;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/unicom/xiaowo/verify/c/e;->c:Lcom/unicom/xiaowo/verify/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Network;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Lcom/unicom/xiaowo/verify/c/e;->d:Lcom/unicom/xiaowo/verify/c/c;

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/c/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/unicom/xiaowo/verify/c/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/unicom/xiaowo/verify/c/e;->c:Lcom/unicom/xiaowo/verify/c/f;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/unicom/xiaowo/verify/c/c;->a(Lcom/unicom/xiaowo/verify/c/c;Landroid/content/Context;Ljava/lang/String;Landroid/net/Network;Lcom/unicom/xiaowo/verify/c/f;)V

    .line 82
    return-void
.end method
