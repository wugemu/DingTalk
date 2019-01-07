.class final Ljlh$1;
.super Ljava/lang/Object;
.source "SimpleTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljlh;->a(Ljava/util/List;Ljly;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljli;

.field final synthetic c:Ljly;

.field final synthetic d:Ljlh;


# direct methods
.method constructor <init>(Ljlh;Ljava/util/List;Ljli;Ljly;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Ljlh$1;->d:Ljlh;

    iput-object p2, p0, Ljlh$1;->a:Ljava/util/List;

    iput-object p3, p0, Ljlh$1;->b:Ljli;

    iput-object p4, p0, Ljlh$1;->c:Ljly;

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
    .line 31
    iget-object v2, p0, Ljlh$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljlw;

    .line 33
    .local v1, "singleTask":Ljlw;
    iget-object v2, p0, Ljlh$1;->b:Ljli;

    iget-object v3, p0, Ljlh$1;->c:Ljly;

    iget-object v3, v3, Ljly;->c:Ljlx;

    invoke-interface {v2, v1, v3}, Ljli;->a(Ljlw;Ljlj;)V

    goto :goto_0

    .line 36
    .end local v1    # "singleTask":Ljlw;
    :cond_0
    iget-object v2, p0, Ljlh$1;->d:Ljlh;

    .line 1018
    iget-object v2, v2, Ljlh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    iget-object v3, p0, Ljlh$1;->c:Ljly;

    iget v3, v3, Ljly;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method
