.class public final Ldpt$8;
.super Ljava/lang/Object;
.source "EmotionPackageMgr.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldpt;
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
        "Ldrf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Ldpt;


# direct methods
.method public constructor <init>(Ldpt;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldpt;

    .prologue
    .line 277
    iput-object p1, p0, Ldpt$8;->c:Ldpt;

    iput-object p2, p0, Ldpt$8;->a:Ljava/lang/String;

    iput-object p3, p0, Ldpt$8;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 277
    check-cast p1, Ldrf;

    .line 1281
    if-eqz p1, :cond_0

    iget-object v0, p1, Ldrf;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ldrf;->a:Ljava/util/List;

    .line 1283
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1284
    :cond_0
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "traceEmotion"

    const-string/jumbo v2, "get package list rpc result empty"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    :goto_0
    return-void

    .line 1288
    :cond_1
    invoke-static {}, Ldpt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldpt$8$1;

    invoke-direct {v1, p0, p1}, Ldpt$8$1;-><init>(Ldpt$8;Ldrf;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 335
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "traceEmotion"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get package list rpc error,code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Ldpt$8;->b:Lcma;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Ldpt$8;->b:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 331
    return-void
.end method
