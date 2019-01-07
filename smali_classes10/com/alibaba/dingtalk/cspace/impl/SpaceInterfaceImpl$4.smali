.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$4;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"

# interfaces
.implements Lgpe$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lgqt;)V
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
    .line 1582
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$4;->b:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$4;->a:Lgqt;

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
    .line 1585
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$4;->a:Lgqt;

    invoke-interface {v0, p3, p4, p5, p6}, Lgqt;->onProgress(JJ)V

    .line 1586
    return-void
.end method

.method public final a(JLcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 1590
    if-eqz p3, :cond_2

    .line 1591
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v1

    if-nez v1, :cond_1

    .line 1593
    invoke-static {p3}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    .line 1594
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$4;->a:Lgqt;

    invoke-interface {v1, v0}, Lgqt;->onSuccess(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 1602
    .end local v0    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_0
    :goto_0
    return-void

    .line 1595
    :cond_1
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1600
    :cond_2
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$4;->a:Lgqt;

    const-string/jumbo v2, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lfzs$h;->msg_space_upload_failed:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lgqt;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(JLcom/alibaba/alimei/cspace/model/DentryModel;Lggs;)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p4, "sdkError"    # Lggs;

    .prologue
    .line 1606
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    if-eqz p4, :cond_0

    const-string/jumbo v0, "13026000"

    iget-object v1, p4, Lggs;->a:Ljava/lang/String;

    .line 1607
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$4;->a:Lgqt;

    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->cspace_capacity_limit:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgqt;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    :goto_0
    return-void

    .line 1611
    :cond_0
    invoke-static {p4}, Lggs;->a(Lggs;)Lggs;

    move-result-object p4

    .line 1612
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$4;->a:Lgqt;

    iget-object v1, p4, Lggs;->a:Ljava/lang/String;

    iget-object v2, p4, Lggs;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lgqt;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
