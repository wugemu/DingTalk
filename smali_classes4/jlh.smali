.class public final Ljlh;
.super Ljava/lang/Object;
.source "SimpleTaskManager.java"

# interfaces
.implements Ljle;


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljli;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljlh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljly;)V
    .locals 3
    .param p2, "param"    # Ljly;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljlw;",
            ">;",
            "Ljly;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 25
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljlw;>;"
    new-instance v1, Ljlf;

    invoke-direct {v1}, Ljlf;-><init>()V

    iget-object v1, p2, Ljly;->b:Ljlv;

    .line 1020
    new-instance v0, Ljlk;

    invoke-direct {v0}, Ljlk;-><init>()V

    .line 26
    .local v0, "downloader":Ljli;
    iget-object v1, p0, Ljlh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p2, Ljly;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v1, Ljlh$1;

    invoke-direct {v1, p0, p1, v0, p2}, Ljlh$1;-><init>(Ljlh;Ljava/util/List;Ljli;Ljly;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljme;->a(Ljava/lang/Runnable;Z)V

    .line 40
    return-void
.end method
