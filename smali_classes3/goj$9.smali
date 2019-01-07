.class final Lgoj$9;
.super Ljava/lang/Object;
.source "CSpaceProxy.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgoj;->a(Ljava/lang/String;Ljava/lang/String;IZLgoi;[Ljava/lang/String;)V
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
.field final synthetic a:Lgoi;

.field final synthetic b:Lgoj;


# direct methods
.method constructor <init>(Lgoj;Lgoi;)V
    .locals 0
    .param p1, "this$0"    # Lgoj;

    .prologue
    .line 306
    iput-object p1, p0, Lgoj$9;->b:Lgoj;

    iput-object p2, p0, Lgoj$9;->a:Lgoi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 8
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 314
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    if-ne v2, v3, :cond_0

    .line 1246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 2053
    sget-object v3, Lgoj;->b:Ljava/lang/String;

    .line 316
    new-instance v4, Lgoj$9$1;

    invoke-direct {v4, p0}, Lgoj$9$1;-><init>(Lgoj$9;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/alimei/framework/account/AccountApi;->removeAccount(Ljava/lang/String;Lxv;)V

    .line 332
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "Cspace AccountNotLogin accountName="

    aput-object v3, v2, v6

    .line 3053
    sget-object v3, Lgoj;->b:Ljava/lang/String;

    .line 334
    aput-object v3, v2, v5

    .line 333
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "accountException":Ljava/lang/String;
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "CSpaceProxy"

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .end local v0    # "accountException":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const-string/jumbo v2, "Cspace getDentryList exception accountName="

    aput-object v2, v3, v6

    .line 4053
    sget-object v2, Lgoj;->b:Ljava/lang/String;

    .line 340
    aput-object v2, v3, v5

    const-string/jumbo v2, " exception="

    aput-object v2, v3, v7

    const/4 v4, 0x3

    if-nez p1, :cond_1

    const-string/jumbo v2, "null"

    :goto_0
    aput-object v2, v3, v4

    .line 339
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "exception":Ljava/lang/String;
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "CSpaceProxy"

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lgoj$9;->a:Lgoi;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Lgoi;->a(Ljava/util/List;Z)V

    .line 344
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->alm_load_failed:I

    .line 345
    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 346
    return-void

    .line 340
    .end local v1    # "exception":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 306
    check-cast p1, Ljava/util/List;

    .line 4309
    iget-object v0, p0, Lgoj$9;->a:Lgoi;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lgoi;->a(Ljava/util/List;Z)V

    .line 306
    return-void
.end method
