.class final Liey$a$1;
.super Ljava/lang/Object;
.source "AVDeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liey$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Liey$a;


# direct methods
.method constructor <init>(Liey$a;Z)V
    .locals 0
    .param p1, "this$1"    # Liey$a;

    .prologue
    .line 575
    iput-object p1, p0, Liey$a$1;->b:Liey$a;

    iput-boolean p2, p0, Liey$a$1;->a:Z

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
    .line 578
    iget-object v1, p0, Liey$a$1;->b:Liey$a;

    iget-object v1, v1, Liey$a;->a:Liey;

    invoke-static {v1}, Liey;->g(Liey;)Ljava/util/Queue;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 579
    iget-object v1, p0, Liey$a$1;->b:Liey$a;

    iget-object v1, v1, Liey$a;->a:Liey;

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

    .line 580
    .local v0, "listener":Lied$h;
    if-eqz v0, :cond_0

    .line 581
    iget-object v2, p0, Liey$a$1;->b:Liey$a;

    iget-object v2, v2, Liey$a;->a:Liey;

    invoke-static {v2}, Liey;->h(Liey;)Z

    move-result v2

    iget-boolean v3, p0, Liey$a$1;->a:Z

    invoke-interface {v0, v2, v3}, Lied$h;->a(ZZ)V

    goto :goto_0

    .line 585
    .end local v0    # "listener":Lied$h;
    :cond_1
    return-void
.end method
