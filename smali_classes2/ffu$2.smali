.class final Lffu$2;
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
        "Ljava/util/List",
        "<",
        "Lfrq;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lffu;


# direct methods
.method constructor <init>(Lffu;)V
    .locals 0
    .param p1, "this$0"    # Lffu;

    .prologue
    .line 296
    iput-object p1, p0, Lffu$2;->a:Lffu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 296
    check-cast p1, Ljava/util/List;

    .line 1299
    iget-object v0, p0, Lffu$2;->a:Lffu;

    invoke-static {v0}, Lffu;->b(Lffu;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1302
    if-eqz p1, :cond_3

    .line 1305
    iget-object v0, p0, Lffu$2;->a:Lffu;

    invoke-static {v0}, Lffu;->c(Lffu;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfrq;

    .line 1307
    if-eqz v0, :cond_0

    .line 1310
    iget-wide v4, v0, Lfrq;->a:J

    iget-boolean v1, v0, Lfrq;->c:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v4, v5, v1}, Lfls;->b(JZ)V

    .line 1311
    iget-object v1, p0, Lffu$2;->a:Lffu;

    invoke-static {v1}, Lffu;->c(Lffu;)Ljava/util/HashMap;

    move-result-object v1

    iget-wide v4, v0, Lfrq;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1310
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1314
    :cond_2
    iget-object v0, p0, Lffu$2;->a:Lffu;

    invoke-static {v0}, Lffu;->a(Lffu;)Lfft$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1315
    iget-object v0, p0, Lffu$2;->a:Lffu;

    invoke-static {v0}, Lffu;->a(Lffu;)Lfft$a;

    move-result-object v0

    invoke-interface {v0}, Lfft$a;->a()V

    .line 296
    :cond_3
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 325
    invoke-static {}, Lffu;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lfxo;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 321
    return-void
.end method
