.class final Lgdy$2;
.super Ljava/lang/Object;
.source "DentryOperationUseCase.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdy;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

.field final synthetic b:Lgeh;

.field final synthetic c:Z

.field final synthetic d:Lgdy;


# direct methods
.method constructor <init>(Lgdy;Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lgeh;Z)V
    .locals 0
    .param p1, "this$0"    # Lgdy;

    .prologue
    .line 383
    iput-object p1, p0, Lgdy$2;->d:Lgdy;

    iput-object p2, p0, Lgdy$2;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    iput-object p3, p0, Lgdy$2;->b:Lgeh;

    iput-boolean p4, p0, Lgdy$2;->c:Z

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
    .line 383
    check-cast p1, Ljava/lang/Boolean;

    .line 1386
    if-nez p1, :cond_0

    .line 1387
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgdy$2;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    :goto_0
    return-void

    .line 2022
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1391
    iget-object v1, p0, Lgdy$2;->d:Lgdy;

    iget-object v2, p0, Lgdy$2;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    iget-object v3, p0, Lgdy$2;->b:Lgeh;

    iget-boolean v4, p0, Lgdy$2;->c:Z

    invoke-static {v1, v2, v3, v4, v0}, Lgdy;->a(Lgdy;Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lgeh;ZZ)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 400
    iget-object v0, p0, Lgdy$2;->d:Lgdy;

    iget-object v1, p0, Lgdy$2;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    iget-object v2, p0, Lgdy$2;->b:Lgeh;

    iget-boolean v3, p0, Lgdy$2;->c:Z

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lgdy;->a(Lgdy;Lcom/alibaba/dingtalk/cspace/model/CsDentry;Lgeh;ZZ)V

    .line 401
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 396
    return-void
.end method
