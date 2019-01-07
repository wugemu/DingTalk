.class final Liey$d$2;
.super Ljava/lang/Object;
.source "AVDeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liey$d;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Liey$d;


# direct methods
.method constructor <init>(Liey$d;ZZZ)V
    .locals 0
    .param p1, "this$1"    # Liey$d;

    .prologue
    .line 718
    iput-object p1, p0, Liey$d$2;->d:Liey$d;

    iput-boolean p2, p0, Liey$d$2;->a:Z

    iput-boolean p3, p0, Liey$d$2;->b:Z

    iput-boolean p4, p0, Liey$d$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 721
    iget-object v1, p0, Liey$d$2;->d:Liey$d;

    iget-object v1, v1, Liey$d;->a:Liey;

    invoke-static {v1}, Liey;->g(Liey;)Ljava/util/Queue;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 722
    iget-object v1, p0, Liey$d$2;->d:Liey$d;

    iget-object v1, v1, Liey$d;->a:Liey;

    invoke-static {v1}, Liey;->g(Liey;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lied$h;

    .line 723
    .local v0, "listener":Lied$h;
    if-eqz v0, :cond_0

    .line 724
    iget-boolean v2, p0, Liey$d$2;->a:Z

    iget-boolean v3, p0, Liey$d$2;->b:Z

    iget-boolean v4, p0, Liey$d$2;->c:Z

    invoke-interface {v0, v2, v3, v4}, Lied$h;->a(ZZZ)V

    goto :goto_0

    .line 728
    .end local v0    # "listener":Lied$h;
    :cond_1
    return-void
.end method
