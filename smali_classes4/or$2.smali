.class final Lor$2;
.super Ljava/lang/Object;
.source "RPCRequestCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lor;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lor;


# direct methods
.method constructor <init>(Lor;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lor;

    .prologue
    .line 90
    .local p0, "this":Lor$2;, "Lor$2;"
    iput-object p1, p0, Lor$2;->d:Lor;

    iput-object p2, p0, Lor$2;->a:Ljava/util/Set;

    iput-object p3, p0, Lor$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lor$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 93
    .local p0, "this":Lor$2;, "Lor$2;"
    iget-object v1, p0, Lor$2;->a:Ljava/util/Set;

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

    .line 94
    .local v0, "listener":Lcma;, "Lcma<TE;>;"
    if-eqz v0, :cond_0

    .line 95
    iget-object v2, p0, Lor$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lor$2;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v0    # "listener":Lcma;, "Lcma<TE;>;"
    :cond_1
    return-void
.end method
