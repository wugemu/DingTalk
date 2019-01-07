.class final Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$7;
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 315
    .line 1318
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->l(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .line 1319
    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->l(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->l(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1318
    invoke-static {v0, v1, v2}, Lfzw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1320
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1321
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    invoke-static {v1, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$7;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->b(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 333
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 329
    return-void
.end method
