.class final Ljqh$1$5;
.super Ljava/lang/Object;
.source "AppLauncher.java"

# interfaces
.implements Ljrz$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljqh$1;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljqh$a;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Ljqh$1;


# direct methods
.method constructor <init>(Ljqh$1;Ljqh$a;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$1"    # Ljqh$1;

    .prologue
    .line 634
    iput-object p1, p0, Ljqh$1$5;->c:Ljqh$1;

    iput-object p2, p0, Ljqh$1$5;->a:Ljqh$a;

    iput-object p3, p0, Ljqh$1$5;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 637
    iget-object v0, p0, Ljqh$1$5;->a:Ljqh$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljqh$a;->a:Z

    .line 638
    iget-object v0, p0, Ljqh$1$5;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 639
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 643
    iget-object v0, p0, Ljqh$1$5;->a:Ljqh$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ljqh$a;->a:Z

    .line 648
    iget-object v0, p0, Ljqh$1$5;->a:Ljqh$a;

    iput-object p2, v0, Ljqh$a;->b:Ljava/lang/String;

    .line 649
    iget-object v0, p0, Ljqh$1$5;->a:Ljqh$a;

    iput-object p1, v0, Ljqh$a;->c:Ljava/lang/String;

    .line 651
    iget-object v0, p0, Ljqh$1$5;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 652
    return-void
.end method
