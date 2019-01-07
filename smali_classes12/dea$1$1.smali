.class final Ldea$1$1;
.super Ljava/lang/Object;
.source "ChatSendPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldea$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ldea$1;


# direct methods
.method constructor <init>(Ldea$1;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Ldea$1;

    .prologue
    .line 241
    iput-object p1, p0, Ldea$1$1;->b:Ldea$1;

    iput-object p2, p0, Ldea$1$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    iget-object v2, p0, Ldea$1$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 245
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 246
    iget-object v3, p0, Ldea$1$1;->b:Ldea$1;

    iget-object v3, v3, Ldea$1;->a:Ldea;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1556
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1557
    invoke-virtual {v3}, Ldea;->a()Ldiz;

    move-result-object v3

    .line 2425
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ldiz;->a(Ljava/lang/String;Z)V

    .line 248
    :cond_1
    const-wide/16 v4, 0x190

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 254
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    return-void
.end method
