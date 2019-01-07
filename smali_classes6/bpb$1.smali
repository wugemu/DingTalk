.class final Lbpb$1;
.super Ljava/lang/Object;
.source "CircleCommentDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpb;->a(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lbpb;


# direct methods
.method constructor <init>(Lbpb;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbpb;

    .prologue
    .line 39
    iput-object p1, p0, Lbpb$1;->c:Lbpb;

    iput-object p2, p0, Lbpb$1;->a:Ljava/util/List;

    iput-object p3, p0, Lbpb$1;->b:Ljava/util/List;

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
    .line 42
    iget-object v0, p0, Lbpb$1;->c:Lbpb;

    iget-object v1, p0, Lbpb$1;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbpb;->a(Ljava/util/Collection;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 43
    iget-object v0, p0, Lbpb$1;->c:Lbpb;

    iget-object v1, p0, Lbpb$1;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lbpb;->a(Lbpb;Ljava/util/List;)V

    .line 44
    return-void
.end method
