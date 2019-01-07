.class final Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$5;
.super Ljava/lang/Object;
.source "SpacePicPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

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
    .line 265
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    const-string/jumbo v1, "space_print_tip_pref_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 266
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity$5;->a:Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;->k(Lcom/alibaba/dingtalk/cspace/activity/SpacePicPreviewActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgpk;->a(Landroid/view/View;I)V

    .line 267
    return-void
.end method
