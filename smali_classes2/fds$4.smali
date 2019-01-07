.class final Lfds$4;
.super Ljava/lang/Object;
.source "BaseCircleDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfds;->b(Ljava/util/Collection;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lfds;


# direct methods
.method constructor <init>(Lfds;Ljava/util/Collection;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lfds;

    .prologue
    .line 327
    .local p0, "this":Lfds$4;, "Lfds$4;"
    iput-object p1, p0, Lfds$4;->c:Lfds;

    iput-object p2, p0, Lfds$4;->a:Ljava/util/Collection;

    iput-object p3, p0, Lfds$4;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 330
    .local p0, "this":Lfds$4;, "Lfds$4;"
    iget-object v0, p0, Lfds$4;->c:Lfds;

    iget-object v1, p0, Lfds$4;->a:Ljava/util/Collection;

    iget-object v2, p0, Lfds$4;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, v2}, Lfds;->a(Ljava/util/Collection;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 331
    return-void
.end method
