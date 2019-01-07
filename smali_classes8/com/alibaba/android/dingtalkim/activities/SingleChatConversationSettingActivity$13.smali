.class final Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$13;
.super Ljava/lang/Object;
.source "SingleChatConversationSettingActivity.java"

# interfaces
.implements Lhma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    .prologue
    .line 886
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$13;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 889
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$13;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->s(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Ldqi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 890
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity$13;->a:Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;->s(Lcom/alibaba/android/dingtalkim/activities/SingleChatConversationSettingActivity;)Ldqi;

    move-result-object v10

    .line 1043
    iget-object v1, v10, Ldqi;->a:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1047
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1072
    :cond_0
    return-void

    .line 1051
    :cond_1
    iget-object v1, v10, Ldqi;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1052
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1053
    if-le v1, v0, :cond_3

    move v8, v0

    .line 1056
    :goto_0
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1057
    iget-object v1, v10, Ldqi;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 1058
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v11, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 1059
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1060
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v11, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1062
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v11, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v13

    move v9, v2

    .line 1064
    :goto_1
    if-ge v9, v8, :cond_0

    .line 1065
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1066
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1070
    :try_start_0
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1071
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1075
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    invoke-direct {v1, v11}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;-><init>(Landroid/content/Context;)V

    .line 1076
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1077
    int-to-float v3, v13

    int-to-float v4, v13

    int-to-float v5, v13

    int-to-float v6, v13

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a(FFFF)V

    .line 1078
    invoke-virtual {v1, v12}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1079
    sget v3, Lctk$e;->bg_e_app_item_shape:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setBackgroundResource(I)V

    .line 1080
    const/4 v3, 0x0

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 1088
    iget-object v2, v10, Ldqi;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    :cond_2
    :goto_2
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_1

    .line 1090
    :catch_0
    move-exception v1

    const-string/jumbo v1, "DingTalkIM"

    const-string/jumbo v2, "MiniAppLastestPresenter"

    const-string/jumbo v3, "Transfer local url to remote url fail"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v8, v1

    goto :goto_0
.end method
