.class final Lgfp$10;
.super Ljava/lang/Object;
.source "PermissionSettingPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgfp;->b()V
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
        "Lgnv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgfp;


# direct methods
.method constructor <init>(Lgfp;)V
    .locals 0
    .param p1, "this$0"    # Lgfp;

    .prologue
    .line 477
    iput-object p1, p0, Lgfp$10;->a:Lgfp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 477
    check-cast p1, Lgnv;

    .line 1481
    if-eqz p1, :cond_0

    .line 1485
    iget-object v0, p0, Lgfp$10;->a:Lgfp;

    .line 2062
    iget-object v0, v0, Lgfp;->g:Ljava/util/Map;

    .line 2103
    iget-wide v2, p1, Lgnv;->b:J

    .line 1485
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3095
    iget-wide v2, p1, Lgnv;->a:J

    .line 1485
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    iget-object v0, p0, Lgfp$10;->a:Lgfp;

    .line 3119
    iget-object v1, p1, Lgnv;->d:Ljava/util/List;

    .line 1487
    invoke-static {v0, v1}, Lgfp;->a(Lgfp;Ljava/util/List;)V

    .line 477
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 497
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lgfp$10;->a:Lgfp;

    .line 1062
    iget-object v0, v0, Lgfp;->l:Lgfn$b;

    .line 499
    invoke-interface {v0, v4}, Lgfn$b;->a(Z)V

    .line 501
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "PermissionSettingPresenter"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "PermissionSettingPresenter"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, " addOrgMember createAcl"

    aput-object v4, v2, v3

    .line 502
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 492
    return-void
.end method
