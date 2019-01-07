.class final Lor$1;
.super Ljava/lang/Object;
.source "RPCRequestCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lor;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lor;


# direct methods
.method constructor <init>(Lor;Ljava/util/Set;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lor;

    .prologue
    .line 68
    .local p0, "this":Lor$1;, "Lor$1;"
    iput-object p1, p0, Lor$1;->c:Lor;

    iput-object p2, p0, Lor$1;->a:Ljava/util/Set;

    iput-object p3, p0, Lor$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 71
    .local p0, "this":Lor$1;, "Lor$1;"
    iget-object v1, p0, Lor$1;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 72
    .local v0, "listener":Lcma;, "Lcma<TE;>;"
    if-eqz v0, :cond_0

    .line 73
    iget-object v2, p0, Lor$1;->b:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    .end local v0    # "listener":Lcma;, "Lcma<TE;>;"
    :cond_1
    return-void
.end method
