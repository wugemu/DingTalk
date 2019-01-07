.class public Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "MiniAppListGuideActivity.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;

    .prologue
    .line 24
    .line 1055
    :try_start_0
    const-string/jumbo v0, "@lAjPBY0V47XAbmXOVFagfc4Tcg6d"

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1056
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1058
    if-eqz v0, :cond_0

    .line 1059
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    .line 1060
    int-to-float v2, v2

    const v3, 0x3f46a7f0    # 0.776f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1061
    int-to-float v3, v2

    const v4, 0x3fb47ae1    # 1.41f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1062
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1063
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    :cond_0
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;->a:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :cond_1
    :goto_0
    return-void

    .line 1069
    :catch_0
    move-exception v0

    const-string/jumbo v0, "MiniAppListGuideActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Error decode mediaId @lAjPBY0V47XAbmXOVFagfc4Tcg6d"

    aput-object v3, v1, v2

    .line 2071
    const-string/jumbo v2, "mini_app"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lhdn$i;->activity_miniapp_list_guide:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;->setContentView(I)V

    .line 37
    sget v0, Lhdn$h;->iv_miniapp_list_guide_img:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;->a:Landroid/widget/ImageView;

    .line 38
    sget v0, Lhdn$h;->iv_miniapp_list_guide_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;->b:Landroid/widget/ImageView;

    .line 39
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppListGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method
