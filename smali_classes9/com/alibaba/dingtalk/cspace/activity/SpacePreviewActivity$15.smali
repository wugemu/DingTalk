.class final Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$15;
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
    .line 459
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$15;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 462
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$15;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    const-string/jumbo v1, "space_print_tip_pref_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 463
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity$15;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpacePreviewActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 464
    return-void
.end method
