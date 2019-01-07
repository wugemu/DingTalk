.class final Llhv$a$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Llgu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llhv$a;->a(Llgu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llgu;

.field final synthetic b:Llhv$a;


# direct methods
.method constructor <init>(Llhv$a;Llgu;)V
    .locals 0
    .param p1, "this$0"    # Llhv$a;

    .prologue
    .line 105
    .local p0, "this":Llhv$a$1;, "Llhv$a$1;"
    iput-object p1, p0, Llhv$a$1;->b:Llhv$a;

    iput-object p2, p0, Llhv$a$1;->a:Llgu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final request(J)V
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 108
    .local p0, "this":Llhv$a$1;, "Llhv$a$1;"
    iget-object v0, p0, Llhv$a$1;->b:Llhv$a;

    iget-object v0, v0, Llhv$a;->e:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Llhv$a$1;->b:Llhv$a;

    iget-boolean v0, v0, Llhv$a;->b:Z

    if-nez v0, :cond_1

    .line 109
    :cond_0
    iget-object v0, p0, Llhv$a$1;->a:Llgu;

    invoke-interface {v0, p1, p2}, Llgu;->request(J)V

    .line 118
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Llhv$a$1;->b:Llhv$a;

    iget-object v0, v0, Llhv$a;->c:Llgv$a;

    new-instance v1, Llhv$a$1$1;

    invoke-direct {v1, p0, p1, p2}, Llhv$a$1$1;-><init>(Llhv$a$1;J)V

    invoke-virtual {v0, v1}, Llgv$a;->a(Llhf;)Llgz;

    goto :goto_0
.end method
