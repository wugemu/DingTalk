.class final Lgoj$9$1;
.super Ljava/lang/Object;
.source "CSpaceProxy.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgoj$9;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgoj$9;


# direct methods
.method constructor <init>(Lgoj$9;)V
    .locals 0
    .param p1, "this$1"    # Lgoj$9;

    .prologue
    .line 316
    iput-object p1, p0, Lgoj$9$1;->a:Lgoj$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 325
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Cspace AccountNotLogin removeAccountFailed="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 327
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 325
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "removeException":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "CSpaceProxy"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1319
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceProxy"

    const-string/jumbo v2, "Cspace AccountNotLogin removeAccountSuccess"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method
