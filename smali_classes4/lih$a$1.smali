.class final Llih$a$1;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Llhf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llih$a;->a(Llhf;J)Llgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llih$b;

.field final synthetic b:Llih$a;


# direct methods
.method constructor <init>(Llih$a;Llih$b;)V
    .locals 0
    .param p1, "this$0"    # Llih$a;

    .prologue
    .line 79
    iput-object p1, p0, Llih$a$1;->b:Llih$a;

    iput-object p2, p0, Llih$a$1;->a:Llih$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Llih$a$1;->b:Llih$a;

    iget-object v0, v0, Llih$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Llih$a$1;->a:Llih$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method
