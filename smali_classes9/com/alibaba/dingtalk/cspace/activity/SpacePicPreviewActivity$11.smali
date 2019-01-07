.class final Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;
.super Ljava/lang/Object;
.source "SpacePicPreviewActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 552
    check-cast p1, Ljava/util/Map;

    .line 1555
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;)Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    .line 1556
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->n(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    move-result-object v2

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    :goto_1
    invoke-static {v0, v2, v3}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;J)J

    .line 1557
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->n(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->n(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->canReleaseEditLock()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v2, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;Z)Z

    .line 1558
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0, v2, v1, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return-void

    .line 1555
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    goto :goto_0

    .line 1556
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->n(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->getEditor()J

    move-result-wide v2

    goto :goto_1

    .line 1557
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 567
    const-string/jumbo v0, "CSpace"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->o(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "loadExtData fail: code: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", msg: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;->b:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$11;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v0, v1, v5, v5}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 563
    return-void
.end method
