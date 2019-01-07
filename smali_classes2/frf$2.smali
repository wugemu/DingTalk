.class final Lfrf$2;
.super Ljava/lang/Object;
.source "AlipayLoginPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfrf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfrf;


# direct methods
.method constructor <init>(Lfrf;)V
    .locals 0
    .param p1, "this$0"    # Lfrf;

    .prologue
    .line 111
    iput-object p1, p0, Lfrf$2;->a:Lfrf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 111
    check-cast p1, Ljava/lang/String;

    .line 1114
    iget-object v0, p0, Lfrf$2;->a:Lfrf;

    iget-object v0, v0, Lfrf;->a:Lfre$b;

    invoke-interface {v0}, Lfre$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lfrf$2;->a:Lfrf;

    .line 2140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2141
    const-string/jumbo v0, "AlipayLoginPresenter"

    const-string/jumbo v1, "authInfo is empty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2142
    :cond_0
    :goto_0
    return-void

    .line 2145
    :cond_1
    const-string/jumbo v1, "AlipayLoginPresenter"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lfrf$3;

    invoke-direct {v2, v0, p1}, Lfrf$3;-><init>(Lfrf;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 126
    const-string/jumbo v0, "AlipayLoginPresenter"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lfrf$2;->a:Lfrf;

    iget-object v0, v0, Lfrf;->a:Lfre$b;

    invoke-interface {v0}, Lfre$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 122
    return-void
.end method
