.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$19;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"

# interfaces
.implements Lgpe$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Landroid/content/Context;Lgrc;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgqt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgqt;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lgqt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$19;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$19;->a:Lgqt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJJ)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "totalSize"    # J
    .param p5, "uploadedSize"    # J

    .prologue
    .line 622
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$19;->a:Lgqt;

    invoke-interface {v0, p3, p4, p5, p6}, Lgqt;->onProgress(JJ)V

    .line 623
    return-void
.end method

.method public final a(JLcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v6, 0x0

    .line 627
    if-eqz p3, :cond_2

    .line 628
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v1

    if-nez v1, :cond_1

    .line 630
    invoke-static {p3}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    .line 631
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$19;->a:Lgqt;

    invoke-interface {v1, v0}, Lgqt;->onSuccess(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 643
    .end local v0    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 633
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$19;->a:Lgqt;

    const-string/jumbo v2, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lfzs$h;->msg_space_upload_failed:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lgqt;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceInterfaceImpl"

    const-string/jumbo v3, "uploadFile2Space"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "upload error unknown"

    invoke-static {v3, v4, v5, v6}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$19;->a:Lgqt;

    const-string/jumbo v2, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lfzs$h;->send_fail:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lgqt;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceInterfaceImpl"

    const-string/jumbo v3, "uploadFile2Space"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "upload param error: updateStatus dentryModel is null"

    invoke-static {v3, v4, v5, v6}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(JLcom/alibaba/alimei/cspace/model/DentryModel;Lggs;)V
    .locals 6
    .param p1, "id"    # J
    .param p3, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p4, "sdkError"    # Lggs;

    .prologue
    .line 647
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    if-eqz p4, :cond_0

    const-string/jumbo v0, "13026000"

    iget-object v1, p4, Lggs;->a:Ljava/lang/String;

    .line 648
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$19;->a:Lgqt;

    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->cspace_capacity_limit:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgqt;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :goto_0
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "SpaceInterfaceImpl"

    const-string/jumbo v4, "uploadFile2Space"

    if-eqz p4, :cond_1

    iget-object v0, p4, Lggs;->a:Ljava/lang/String;

    move-object v1, v0

    :goto_1
    if-eqz p4, :cond_2

    iget-object v0, p4, Lggs;->b:Ljava/lang/String;

    :goto_2
    const/4 v5, 0x0

    invoke-static {v4, v1, v0, v5}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    return-void

    .line 651
    :cond_0
    invoke-static {p4}, Lggs;->a(Lggs;)Lggs;

    move-result-object p4

    .line 652
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$19;->a:Lgqt;

    iget-object v1, p4, Lggs;->a:Ljava/lang/String;

    iget-object v2, p4, Lggs;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lgqt;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :cond_1
    const-string/jumbo v0, ""

    move-object v1, v0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, " addDentry error"

    goto :goto_2
.end method

.method public final a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 615
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$19;->a:Lgqt;

    instance-of v0, v0, Lgqs;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$19;->a:Lgqt;

    check-cast v0, Lgqs;

    invoke-static {p1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    invoke-interface {v0, v1}, Lgqs;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 618
    :cond_0
    return-void
.end method
