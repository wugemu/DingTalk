.class final Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;
.super Ljava/lang/Object;
.source "WPSUtil.java"

# interfaces
.implements Lcma;


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
        "Lcma",
        "<",
        "Lgob;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

.field final synthetic b:Lgob;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;Lgob;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->d:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->b:Lgob;

    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 374
    check-cast p1, Lgob;

    .line 1377
    if-nez p1, :cond_0

    .line 1378
    sget v0, Lfzs$h;->dt_cspace_local_edit_get_lock_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1379
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->d:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const-string/jumbo v2, "checkVersion: getLocalEidtLock"

    const-string/jumbo v3, "2012"

    const-string/jumbo v4, "lockObject is null"

    invoke-static/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1394
    :goto_0
    return-void

    .line 1383
    :cond_0
    iget-boolean v0, p1, Lgob;->a:Z

    if-eqz v0, :cond_2

    .line 1384
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->b:Lgob;

    iget-wide v0, v0, Lgob;->d:J

    iget-wide v2, p1, Lgob;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1385
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->d:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    invoke-static {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->b(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;)V

    goto :goto_0

    .line 1387
    :cond_1
    const-string/jumbo v0, "CSpace"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->d:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->f(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "checkVersion and version changed: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->b:Lgob;

    iget-wide v6, v4, Lgob;->d:J

    .line 1388
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "--"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v6, p1, Lgob;->d:J

    .line 1389
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1388
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1387
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    sget v0, Lfzs$h;->dt_cspace_local_edit_override_failed_version_change:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1393
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->d:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->b(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v1}, Lgpr;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v5}, Lgon;->d(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 1397
    :cond_2
    iget-object v0, p1, Lgob;->b:Ljava/lang/String;

    iget-object v1, p1, Lgob;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->d:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const-string/jumbo v2, "checkVersion: getLocalEidtLock"

    iget-object v3, p1, Lgob;->b:Ljava/lang/String;

    iget-object v4, p1, Lgob;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 410
    sget v0, Lfzs$h;->dt_cspace_local_edit_get_lock_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 411
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->d:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$5;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const-string/jumbo v2, "checkVersion: getLocalEidtLock"

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->a(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 412
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 405
    return-void
.end method
