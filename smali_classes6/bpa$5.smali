.class final Lbpa$5;
.super Ljava/lang/Object;
.source "BaseCircleDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpa;->b(Ljava/util/Collection;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lbpa;


# direct methods
.method constructor <init>(Lbpa;Ljava/util/Collection;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lbpa;

    .prologue
    .line 320
    .local p0, "this":Lbpa$5;, "Lbpa$5;"
    iput-object p1, p0, Lbpa$5;->c:Lbpa;

    iput-object p2, p0, Lbpa$5;->a:Ljava/util/Collection;

    iput-object p3, p0, Lbpa$5;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 323
    .local p0, "this":Lbpa$5;, "Lbpa$5;"
    iget-object v0, p0, Lbpa$5;->c:Lbpa;

    iget-object v1, p0, Lbpa$5;->a:Ljava/util/Collection;

    iget-object v2, p0, Lbpa$5;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, v2}, Lbpa;->a(Ljava/util/Collection;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 324
    return-void
.end method
