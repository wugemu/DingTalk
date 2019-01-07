.class public final Lfrd$2;
.super Ljava/lang/Object;
.source "AlipayAuthCodeHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfrd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field final synthetic a:Lfrd;


# direct methods
.method public constructor <init>(Lfrd;)V
    .locals 0
    .param p1, "this$0"    # Lfrd;

    .prologue
    .line 81
    iput-object p1, p0, Lfrd$2;->a:Lfrd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 81
    check-cast p1, Ljava/lang/String;

    .line 2084
    iget-object v0, p0, Lfrd$2;->a:Lfrd;

    .line 3024
    iget-object v0, v0, Lfrd;->a:Landroid/app/Activity;

    .line 2084
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2087
    iget-object v0, p0, Lfrd$2;->a:Lfrd;

    .line 4112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4113
    const-string/jumbo v1, "AlipayAuthCodeHelper"

    const-string/jumbo v2, "authInfo is empty"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4114
    iget-object v0, v0, Lfrd;->b:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 4115
    :cond_0
    :goto_0
    return-void

    .line 4118
    :cond_1
    const-string/jumbo v1, "AlipayAuthCodeHelper"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lfrd$3;

    invoke-direct {v2, v0, p1}, Lfrd$3;-><init>(Lfrd;Ljava/lang/String;)V

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
    .line 96
    const-string/jumbo v0, "AlipayAuthCodeHelper"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lfrd$2;->a:Lfrd;

    .line 1024
    iget-object v0, v0, Lfrd;->a:Landroid/app/Activity;

    .line 97
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lfrd$2;->a:Lfrd;

    .line 2024
    iget-object v0, v0, Lfrd;->b:Lcma;

    .line 101
    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 92
    return-void
.end method
