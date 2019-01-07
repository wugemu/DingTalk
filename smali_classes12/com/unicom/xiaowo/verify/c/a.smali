.class public final Lcom/unicom/xiaowo/verify/c/a;
.super Ljava/lang/Object;
.source "AsyncMultimode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unicom/xiaowo/verify/c/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/unicom/xiaowo/verify/c/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/c/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 23
    new-instance v0, Lcom/unicom/xiaowo/verify/c/g;

    invoke-direct {v0}, Lcom/unicom/xiaowo/verify/c/g;-><init>()V

    iput-object v0, p0, Lcom/unicom/xiaowo/verify/c/a;->b:Lcom/unicom/xiaowo/verify/c/g;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Network;Lcom/unicom/xiaowo/verify/c/a$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Network;",
            "Lcom/unicom/xiaowo/verify/c/a$a;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    iget-object v6, p0, Lcom/unicom/xiaowo/verify/c/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/unicom/xiaowo/verify/c/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/unicom/xiaowo/verify/c/b;-><init>(Lcom/unicom/xiaowo/verify/c/a;Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Network;Lcom/unicom/xiaowo/verify/c/a$a;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 66
    return-void
.end method
