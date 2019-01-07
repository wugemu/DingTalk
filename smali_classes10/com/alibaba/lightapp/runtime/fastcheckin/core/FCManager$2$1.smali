.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2$1;
.super Ljava/lang/Object;
.source "FCManager.java"

# interfaces
.implements Lhhd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    invoke-static {}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->access$100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 142
    const-string/jumbo v0, "FCManager"

    const-string/jumbo v1, "start onSuccess"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "planId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2$1;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;->c:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->access$200(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;Ljava/util/Collection;)V

    .line 144
    return-void
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    invoke-static {}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->access$100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 149
    const-string/jumbo v0, "FCManager"

    const-string/jumbo v1, "start onFailure"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "planId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2$1;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;->c:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->access$200(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;Ljava/util/Collection;)V

    .line 151
    return-void
.end method

.method public final c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    invoke-static {}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->access$100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 156
    const-string/jumbo v0, "FCManager"

    const-string/jumbo v1, "start onCancel"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "planId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2$1;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;->c:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2$1;->b:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$2;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->access$200(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;Ljava/util/Collection;)V

    .line 158
    return-void
.end method
