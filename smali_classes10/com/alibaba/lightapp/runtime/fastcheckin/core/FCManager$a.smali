.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$a;
.super Ljava/lang/Object;
.source "FCManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;


# direct methods
.method private constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$a;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$a;-><init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 186
    const-string/jumbo v0, "FCManager"

    const-string/jumbo v1, "realStart timeout"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    invoke-static {}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->access$300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 188
    invoke-static {}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->access$100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 189
    sget-object v0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->stop()V

    .line 190
    return-void
.end method
