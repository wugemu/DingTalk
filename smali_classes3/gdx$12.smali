.class final Lgdx$12;
.super Ljava/lang/Object;
.source "DentryListUploadUseCase.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgdx;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lgdx;


# direct methods
.method constructor <init>(Lgdx;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lgdx;

    .prologue
    .line 349
    iput-object p1, p0, Lgdx$12;->b:Lgdx;

    iput-object p2, p0, Lgdx$12;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 6
    .param p1, "exception"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 357
    if-eqz p1, :cond_0

    .line 358
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "DentryListUploadUseCase"

    const-string/jumbo v2, "updateDentryConflictType"

    const-string/jumbo v3, ""

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lgdx$12;->b:Lgdx;

    iget-object v1, p0, Lgdx$12;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lgdx;->a(Lgdx;Ljava/util/List;)V

    .line 361
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 349
    .line 1352
    iget-object v0, p0, Lgdx$12;->b:Lgdx;

    iget-object v1, p0, Lgdx$12;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lgdx;->a(Lgdx;Ljava/util/List;)V

    .line 349
    return-void
.end method
