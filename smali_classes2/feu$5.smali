.class final Lfeu$5;
.super Ljava/lang/Object;
.source "LoadModel.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfeu;->d()V
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
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfeu;


# direct methods
.method constructor <init>(Lfeu;)V
    .locals 0
    .param p1, "this$0"    # Lfeu;

    .prologue
    .line 289
    iput-object p1, p0, Lfeu$5;->a:Lfeu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 289
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    .line 1293
    iget-object v0, p0, Lfeu$5;->a:Lfeu;

    invoke-static {v0, p1}, Lfeu;->a(Lfeu;Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;

    .line 1295
    iget-object v0, p0, Lfeu$5;->a:Lfeu;

    invoke-static {v0}, Lfeu;->c(Lfeu;)Lcma;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lfeu$5;->a:Lfeu;

    invoke-static {v0, p1}, Lfeu;->b(Lfeu;Lcom/alibaba/android/user/connection/idl/objects/CirclePostResultObject;)V

    .line 1297
    iget-object v0, p0, Lfeu$5;->a:Lfeu;

    invoke-static {v0}, Lfeu;->c(Lfeu;)Lcma;

    move-result-object v0

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 289
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 310
    iget-object v0, p0, Lfeu$5;->a:Lfeu;

    invoke-static {v0}, Lfeu;->d(Lfeu;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lfeu$5;->a:Lfeu;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lfeu;->a(Lfeu;J)V

    .line 312
    iget-object v0, p0, Lfeu$5;->a:Lfeu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfeu;->a(Lfeu;Z)Z

    .line 317
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lfeu$5;->a:Lfeu;

    invoke-static {v0}, Lfeu;->c(Lfeu;)Lcma;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lfeu$5;->a:Lfeu;

    invoke-static {v0}, Lfeu;->c(Lfeu;)Lcma;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 306
    :cond_0
    return-void
.end method
