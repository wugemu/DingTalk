.class final Lffu$3;
.super Ljava/lang/Object;
.source "OrgEmployeeInfoPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lffu;
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
        "Lfrq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lffu;


# direct methods
.method constructor <init>(Lffu;)V
    .locals 0
    .param p1, "this$0"    # Lffu;

    .prologue
    .line 336
    iput-object p1, p0, Lffu$3;->a:Lffu;

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
    .line 336
    check-cast p1, Lfrq;

    .line 1339
    iget-object v0, p0, Lffu$3;->a:Lffu;

    invoke-static {v0}, Lffu;->b(Lffu;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    if-eqz p1, :cond_0

    .line 1345
    iget-wide v2, p1, Lfrq;->a:J

    iget-boolean v0, p1, Lfrq;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Lfls;->b(JZ)V

    .line 1346
    iget-object v0, p0, Lffu$3;->a:Lffu;

    invoke-static {v0}, Lffu;->c(Lffu;)Ljava/util/HashMap;

    move-result-object v0

    iget-wide v2, p1, Lfrq;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    iget-object v0, p0, Lffu$3;->a:Lffu;

    invoke-static {v0}, Lffu;->a(Lffu;)Lfft$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lffu$3;->a:Lffu;

    invoke-static {v0}, Lffu;->a(Lffu;)Lfft$a;

    move-result-object v0

    invoke-interface {v0}, Lfft$a;->a()V

    .line 336
    :cond_0
    return-void

    .line 1345
    :cond_1
    const/4 v0, 0x0

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
    .line 358
    invoke-static {}, Lffu;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    iget-object v0, p0, Lffu$3;->a:Lffu;

    invoke-static {v0}, Lffu;->b(Lffu;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 354
    return-void
.end method
