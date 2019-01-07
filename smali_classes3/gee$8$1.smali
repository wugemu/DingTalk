.class final Lgee$8$1;
.super Ljava/lang/Object;
.source "DentryListViewPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgee$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgee$8;


# direct methods
.method constructor <init>(Lgee$8;)V
    .locals 0
    .param p1, "this$1"    # Lgee$8;

    .prologue
    .line 819
    iput-object p1, p0, Lgee$8$1;->a:Lgee$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 822
    iget-object v0, p0, Lgee$8$1;->a:Lgee$8;

    iget-object v0, v0, Lgee$8;->c:Lgee;

    .line 1054
    iget-object v0, v0, Lgee;->d:Lged$a$a;

    .line 822
    if-nez v0, :cond_0

    .line 826
    :goto_0
    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lgee$8$1;->a:Lgee$8;

    iget-object v0, v0, Lgee$8;->c:Lgee;

    .line 2054
    iget-object v0, v0, Lgee;->d:Lged$a$a;

    .line 825
    iget-object v1, p0, Lgee$8$1;->a:Lgee$8;

    iget-object v1, v1, Lgee$8;->c:Lgee;

    .line 3054
    iget-object v1, v1, Lgee;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 825
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lgee$8$1;->a:Lgee$8;

    iget-object v2, v2, Lgee$8;->c:Lgee;

    .line 4054
    iget-object v2, v2, Lgee;->j:Ljava/util/Map;

    .line 825
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lged$a$a;->a(II)V

    goto :goto_0
.end method
