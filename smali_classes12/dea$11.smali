.class final Ldea$11;
.super Ljava/lang/Object;
.source "ChatSendPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldea;->a(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Ldea;


# direct methods
.method constructor <init>(Ldea;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Ldea;

    .prologue
    .line 446
    iput-object p1, p0, Ldea$11;->c:Ldea;

    iput-object p2, p0, Ldea$11;->a:Ljava/util/List;

    iput-boolean p3, p0, Ldea$11;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 449
    iget-object v1, p0, Ldea$11;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 450
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lddp;->a()V

    .line 451
    iget-object v1, p0, Ldea$11;->c:Ldea;

    .line 1095
    iget-boolean v1, v1, Ldea;->d:Z

    .line 451
    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Ldea$11;->c:Ldea;

    .line 2095
    invoke-virtual {v1}, Ldea;->a()Ldiz;

    move-result-object v5

    .line 452
    iget-boolean v1, p0, Ldea$11;->b:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v5, v0, v1}, Ldiz;->a(Ljava/lang/String;I)Z

    .line 458
    :goto_2
    const-wide/16 v6, 0x1f4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 452
    goto :goto_1

    .line 454
    :cond_1
    iget-object v1, p0, Ldea$11;->c:Ldea;

    .line 3095
    invoke-virtual {v1}, Ldea;->a()Ldiz;

    move-result-object v5

    .line 454
    iget-boolean v1, p0, Ldea$11;->b:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_3
    invoke-virtual {v5, v0, v0, v1}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_3

    .line 462
    .end local v0    # "url":Ljava/lang/String;
    :cond_3
    return-void
.end method
