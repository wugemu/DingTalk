.class final Licb$2;
.super Ljava/lang/Object;
.source "MessageViewTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Licb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Licb;


# direct methods
.method constructor <init>(Licb;)V
    .locals 0
    .param p1, "this$0"    # Licb;

    .prologue
    .line 85
    iput-object p1, p0, Licb$2;->a:Licb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Licb$2;->a:Licb;

    .line 1026
    iget-object v0, v0, Licb;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->j()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Licb$2$1;

    invoke-direct {v1, p0}, Licb$2$1;-><init>(Licb$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 96
    :cond_0
    return-void
.end method
