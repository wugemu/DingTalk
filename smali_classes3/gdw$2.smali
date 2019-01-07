.class final Lgdw$2;
.super Ljava/lang/Object;
.source "DentryListPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdw;
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
        "Lcom/alibaba/dingtalk/cspace/model/CsDentry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgdw;


# direct methods
.method constructor <init>(Lgdw;)V
    .locals 0
    .param p1, "this$0"    # Lgdw;

    .prologue
    .line 261
    iput-object p1, p0, Lgdw$2;->a:Lgdw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 261
    check-cast p1, Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 1264
    iget-object v0, p0, Lgdw$2;->a:Lgdw;

    iget-object v0, v0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0}, Lgdu$b;->H_()V

    .line 1265
    if-nez p1, :cond_0

    .line 1266
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgdw$2;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :goto_0
    return-void

    .line 1269
    :cond_0
    iget-object v0, p0, Lgdw$2;->a:Lgdw;

    iput-object p1, v0, Lgdw;->h:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 1270
    iget-object v0, p0, Lgdw$2;->a:Lgdw;

    invoke-static {v0}, Lgdw;->a(Lgdw;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v0, p0, Lgdw$2;->a:Lgdw;

    iget-object v0, v0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0}, Lgdu$b;->H_()V

    .line 280
    iget-object v0, p0, Lgdw$2;->a:Lgdw;

    iget-object v0, v0, Lgdw;->c:Lgdu$b;

    invoke-interface {v0, p1, p2}, Lgdu$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 275
    return-void
.end method
