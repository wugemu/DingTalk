.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;
.super Ljava/lang/Object;
.source "MiniAppInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhoc;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;Lhoc;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->a:Lhoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 134
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->b(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 135
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->a:Lhoc;

    if-eqz v3, :cond_2

    .line 136
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->c(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->d(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/Button;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v3, "f_lightapp_miniapp_info_icon_load"

    invoke-static {v3, v7}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 139
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->a:Lhoc;

    iget-object v3, v3, Lhoc;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->a:Lhoc;

    iget-object v3, v3, Lhoc;->h:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "remoteUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->e(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v2    # "remoteUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->g(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->a:Lhoc;

    iget-object v4, v4, Lhoc;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->h(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->a:Lhoc;

    iget-object v4, v4, Lhoc;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->i(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->a:Lhoc;

    iget-object v4, v4, Lhoc;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->j(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    new-instance v4, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1$1;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->k(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->l(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v3, "f_lightapp_mini_info_page_share_btn"

    invoke-static {v3, v7}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->m(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 165
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->m(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1$2;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_1
    invoke-static {}, Lhmp;->a()Lhmp;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhmp;->a(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .line 173
    .local v1, "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 174
    iget-object v3, v1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 175
    .local v0, "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_2

    const-string/jumbo v3, "package_nick"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 176
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->o(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "Version "

    aput-object v5, v4, v6

    const-string/jumbo v5, "package_nick"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->o(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    .end local v0    # "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "info":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    :cond_2
    return-void

    .line 146
    :catch_0
    move-exception v3

    const-string/jumbo v3, "lightapp"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->f(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "loadIcon failed by MediaIdEncodingException"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :cond_3
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;->e(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity;)Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniAppInfoActivity$3$1;->a:Lhoc;

    iget-object v5, v5, Lhoc;->h:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_0
.end method
