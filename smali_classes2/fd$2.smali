.class public final Lfd$2;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Callable;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lfd$a;

.field final synthetic d:Lfd;


# direct methods
.method public constructor <init>(Lfd;Ljava/util/concurrent/Callable;Landroid/os/Handler;Lfd$a;)V
    .locals 0
    .param p1, "this$0"    # Lfd;

    .prologue
    .line 136
    iput-object p1, p0, Lfd$2;->d:Lfd;

    iput-object p2, p0, Lfd$2;->a:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lfd$2;->b:Landroid/os/Handler;

    iput-object p4, p0, Lfd$2;->c:Lfd$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 141
    :try_start_0
    iget-object v2, p0, Lfd$2;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "t":Ljava/lang/Object;, "TT;"
    move-object v0, v1

    .line 146
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    .local v0, "result":Ljava/lang/Object;, "TT;"
    .local v0, "t":Ljava/lang/Object;, "TT;"
    :goto_0
    iget-object v2, p0, Lfd$2;->b:Landroid/os/Handler;

    new-instance v3, Lfd$2$1;

    invoke-direct {v3, p0, v0}, Lfd$2$1;-><init>(Lfd$2;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void

    .line 143
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    const/4 v1, 0x0

    .restart local v1    # "t":Ljava/lang/Object;, "TT;"
    move-object v0, v1

    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    .local v0, "t":Ljava/lang/Object;, "TT;"
    goto :goto_0
.end method
