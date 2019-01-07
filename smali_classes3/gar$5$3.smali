.class final Lgar$5$3;
.super Ljava/lang/Object;
.source "FavoriteNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgar$5;->run()V
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
        "Lcef;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgar$5;


# direct methods
.method constructor <init>(Lgar$5;)V
    .locals 0
    .param p1, "this$0"    # Lgar$5;

    .prologue
    .line 297
    iput-object p1, p0, Lgar$5$3;->a:Lgar$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 297
    check-cast p1, Lcef;

    .line 1300
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcef;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 1303
    invoke-static {}, Lgar;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcef;->a:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lgar$5$3$1;

    invoke-direct {v4, p0}, Lgar$5$3$1;-><init>(Lgar$5$3;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/account/AccountApi;->loginWithThirdAccessToken(Ljava/lang/String;Ljava/lang/String;ZLxv;)V

    :cond_0
    :goto_0
    return-void

    .line 1328
    :cond_1
    iget-object v0, p0, Lgar$5$3;->a:Lgar$5;

    iget-object v0, v0, Lgar$5;->b:Lgqq;

    const-string/jumbo v1, "1988"

    const-string/jumbo v2, "server error"

    invoke-virtual {v0, v1, v2}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    iget-object v0, p0, Lgar$5$3;->a:Lgar$5;

    iget-object v0, v0, Lgar$5;->b:Lgqq;

    iget-boolean v0, v0, Lgqq;->s:Z

    if-nez v0, :cond_0

    .line 1331
    const/4 v0, 0x0

    invoke-static {v0}, Lgar;->a(Lgqq;)Lgqq;

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 343
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "FavoriteNavigator"

    const-string/jumbo v2, "getTicket"

    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lgar$5$3;->a:Lgar$5;

    iget-object v0, v0, Lgar$5;->b:Lgqq;

    invoke-virtual {v0, p1, p2}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lgar$5$3;->a:Lgar$5;

    iget-object v0, v0, Lgar$5;->b:Lgqq;

    iget-boolean v0, v0, Lgqq;->s:Z

    if-nez v0, :cond_0

    .line 346
    invoke-static {v3}, Lgar;->a(Lgqq;)Lgqq;

    .line 348
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 339
    return-void
.end method
