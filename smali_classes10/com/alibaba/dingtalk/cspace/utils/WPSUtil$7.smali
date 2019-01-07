.class final Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$7;
.super Ljava/lang/Object;
.source "WPSUtil.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
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
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

.field final synthetic b:Lgpe$b;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;Lgpe$b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$7;->c:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$7;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$7;->b:Lgpe$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 6
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 521
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$7;->c:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)V

    .line 523
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lfzs$h;->dt_space_revise_document_update_failed:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 525
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "revise finish but override file failed "

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "-db get failed "

    aput-object v2, v1, v0

    const/4 v2, 0x2

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 526
    .local v4, "errorMsg":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$7;->c:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$7;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const-string/jumbo v2, "overrideFile: queryDentryModelBySpaceIdAndFileId"

    const-string/jumbo v3, "1988"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 527
    return-void

    .line 525
    .end local v4    # "errorMsg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 493
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1497
    if-nez p1, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$7;->c:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)V

    .line 1499
    :goto_0
    return-void

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$7;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLocalUrl(Ljava/lang/String;)V

    .line 1504
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadedSize(J)V

    .line 1505
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadId(Ljava/lang/String;)V

    .line 1507
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$7;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1508
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSize(J)V

    .line 1510
    new-instance v0, Lgpa;

    invoke-direct {v0}, Lgpa;-><init>()V

    .line 1511
    iput-object p1, v0, Lgpa;->a:Ljava/lang/Object;

    .line 1512
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isWifiOnly()Z

    move-result v1

    iput-boolean v1, v0, Lgpa;->c:Z

    .line 1513
    const/4 v1, 0x4

    iput v1, v0, Lgpa;->f:I

    .line 1514
    const/4 v1, 0x2

    iput v1, v0, Lgpa;->g:I

    .line 1515
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgpa;->k:Z

    .line 1516
    invoke-static {}, Lgpe;->a()Lgpe;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$7;->b:Lgpe$b;

    invoke-virtual {v1, v0, v2}, Lgpe;->a(Lgpa;Lgpe$b;)V

    goto :goto_0
.end method
