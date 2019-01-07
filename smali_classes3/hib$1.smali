.class final Lhib$1;
.super Lcmi;
.source "HpmDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhib;->a(Lhjd;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhjc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lhib;


# direct methods
.method constructor <init>(Lhib;Z)V
    .locals 0
    .param p1, "this$0"    # Lhib;

    .prologue
    .line 148
    iput-object p1, p0, Lhib$1;->b:Lhib;

    iput-boolean p2, p0, Lhib$1;->a:Z

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 171
    if-eqz p3, :cond_0

    .line 172
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    :cond_0
    const-string/jumbo v0, "HPMDATA"

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "getHpmConf err: "

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    const-string/jumbo v2, ", "

    aput-object v2, v1, v5

    aput-object p2, v1, v6

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "getHpmConf err: "

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    const-string/jumbo v1, ", "

    aput-object v1, v0, v5

    aput-object p2, v0, v6

    .line 176
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 148
    check-cast p1, Lhjc;

    .line 1151
    iget-object v0, p0, Lhib$1;->b:Lhib;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2037
    iput-wide v2, v0, Lhib;->d:J

    .line 1156
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lhib$1;->b:Lhib;

    .line 3037
    iget-object v0, v0, Lhib;->c:Ljava/util/concurrent/Executor;

    .line 1157
    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lhib$1;->b:Lhib;

    .line 4037
    iget-object v0, v0, Lhib;->c:Ljava/util/concurrent/Executor;

    .line 1158
    new-instance v1, Lhib$1$1;

    invoke-direct {v1, p0, p1}, Lhib$1$1;-><init>(Lhib$1;Lhjc;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    .line 1165
    :cond_0
    iget-object v0, p0, Lhib$1;->b:Lhib;

    iget-boolean v1, p0, Lhib$1;->a:Z

    invoke-static {v0, p1, v1}, Lhib;->a(Lhib;Lhjc;Z)V

    goto :goto_0
.end method
