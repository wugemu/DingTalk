.class final Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6$1;
.super Ljava/lang/Object;
.source "WPSUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6$1;->b:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6$1;->b:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lgpv;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 465
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6$1;->b:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;->b:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;->b(Lcom/alibaba/dingtalk/cspace/utils/WPSUtil;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6$1;->b:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6;->a:Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;

    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$b;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v2}, Lgpr;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/utils/WPSUtil$6$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lgon;->d(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
