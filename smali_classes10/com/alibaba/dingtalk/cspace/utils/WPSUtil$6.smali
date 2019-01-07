.class final Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;
.super Ljava/lang/Object;
.source "WPSUtil.java"

# interfaces
.implements Lgpe$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;->b:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJJ)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "totalSize"    # J
    .param p5, "uploadedSize"    # J

    .prologue
    .line 442
    return-void
.end method

.method public final a(JLcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;->b:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)V

    .line 448
    if-nez p3, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-virtual {p3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 456
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lfzs$h;->dt_space_revise_document_updated:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 458
    const-string/jumbo v0, "space_repath_file"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6$1;

    invoke-direct {v1, p0, p3}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6$1;-><init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(JLcom/alibaba/alimei/cspace/model/DentryModel;Lggs;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p4, "sdkError"    # Lggs;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;->b:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)V

    .line 478
    if-eqz p4, :cond_0

    const-string/jumbo v0, "5000002"

    iget-object v1, p4, Lggs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 482
    :cond_0
    if-eqz p4, :cond_1

    iget-object v0, p4, Lggs;->a:Ljava/lang/String;

    const-string/jumbo v1, "13020005"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v6, Lfzs$h;->dt_cspace_local_edit_error_tip:I

    .line 484
    .local v6, "errorMsgResId":I
    :goto_1
    invoke-static {v6}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 486
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "revise finish but override file failed"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    if-eqz p4, :cond_2

    iget-object v0, p4, Lggs;->b:Ljava/lang/String;

    :goto_2
    aput-object v0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "errorMsg":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;->b:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const-string/jumbo v2, "overrideFile: upload"

    const-string/jumbo v3, "1988"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 482
    .end local v4    # "errorMsg":Ljava/lang/String;
    .end local v6    # "errorMsgResId":I
    :cond_1
    sget v6, Lfzs$h;->dt_space_revise_document_update_failed:I

    goto :goto_1

    .line 486
    .restart local v6    # "errorMsgResId":I
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2
.end method
