.class final Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$18;
.super Ljava/lang/Object;
.source "SpacePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$18;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 695
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$18;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->d(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgpy;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$18;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$18;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    sget v4, Lfzs$h;->dt_cspace_preview_free_flow:I

    .line 697
    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$18;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    sget v6, Lfzs$h;->dt_cspace_preview_network_ok:I

    .line 698
    invoke-virtual {v5, v6}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$18$1;

    invoke-direct {v6, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$18$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$18;)V

    iget-object v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$18;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    sget v8, Lfzs$h;->dt_conference_dingcard_free_flow_notice_title:I

    .line 705
    invoke-virtual {v7, v8}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$18;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    sget v9, Lfzs$h;->dt_conference_dingcard_free_flow_preview_notice:I

    .line 706
    invoke-virtual {v8, v9}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 696
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;ZLjava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)Z

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$18;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->h(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)V

    goto :goto_0
.end method
