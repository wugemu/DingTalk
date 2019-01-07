.class final Lgnd$1;
.super Ljava/lang/Object;
.source "SpaceMenuOpenParentFolderHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnd;->a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
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
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic c:Lgnd;


# direct methods
.method constructor <init>(Lgnd;Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$0"    # Lgnd;

    .prologue
    .line 41
    iput-object p1, p0, Lgnd$1;->c:Lgnd;

    iput-object p2, p0, Lgnd$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lgnd$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

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
    .line 41
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1044
    if-nez p1, :cond_0

    .line 1045
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgnd$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :goto_0
    return-void

    .line 1049
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->create()Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    move-result-object v1

    .line 1050
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->setSpaceId(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "0"

    .line 1053
    :goto_1
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->setDentryId(Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lgnd$1;->a:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;ZLcma;)V

    goto :goto_0

    .line 1052
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getParentId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 63
    iget-object v1, p0, Lgnd$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lgpr;->d(Landroid/content/Context;)V

    .line 64
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "SpaceMenuOpenParentFolderHandler.infoDentry "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ", spaceId: "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lgnd$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 68
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, ", fileId: "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lgnd$1;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 69
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 66
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "method":Ljava/lang/String;
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceMenuOpenParentFolderHandler"

    const/4 v3, 0x0

    .line 71
    invoke-static {v0, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 59
    return-void
.end method
