.class final Loq$1;
.super Ljava/lang/Object;
.source "RPCIDSRequestCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loq;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Loq;


# direct methods
.method constructor <init>(Loq;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Loq;

    .prologue
    .line 84
    .local p0, "this":Loq$1;, "Loq$1;"
    iput-object p1, p0, Loq$1;->b:Loq;

    iput-object p2, p0, Loq$1;->a:Ljava/lang/Object;

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
    .local p0, "this":Loq$1;, "Loq$1;"
    iget-object v0, p0, Loq$1;->b:Loq;

    iget-object v1, p0, Loq$1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Loq;->b(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Loq$1;->b:Loq;

    iget-object v0, v0, Loq;->a:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Loq$1;->b:Loq;

    iget-object v0, v0, Loq;->b:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Loq$1;->b:Loq;

    iget-object v0, v0, Loq;->a:Ljava/util/Set;

    iget-object v1, p0, Loq$1;->b:Loq;

    iget-object v1, v1, Loq;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 95
    :cond_0
    iget-object v0, p0, Loq$1;->b:Loq;

    invoke-static {v0}, Loq;->a(Loq;)V

    .line 96
    return-void
.end method
