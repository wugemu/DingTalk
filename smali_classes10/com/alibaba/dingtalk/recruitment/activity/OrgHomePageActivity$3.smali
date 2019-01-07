.class final Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;
.super Ljava/lang/Object;
.source "OrgHomePageActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;
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
        "Lguu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 445
    check-cast p1, Lguu;

    .line 1448
    if-nez p1, :cond_1

    .line 1449
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->j(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    .line 1450
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->setVisibility(I)V

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1454
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->k(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    .line 1455
    iget-object v0, p1, Lguu;->a:Lgus;

    if-eqz v0, :cond_2

    .line 1456
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->l(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lguu;->a:Lgus;

    invoke-virtual {v1}, Lgus;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->setVisibility(I)V

    .line 1459
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    move-result-object v0

    .line 2143
    iput-object p1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    .line 2144
    if-eqz p1, :cond_3

    iget-object v1, p1, Lguu;->a:Lgus;

    if-nez v1, :cond_5

    .line 2145
    :cond_3
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->l:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2146
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->m:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2147
    iget-object v0, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1460
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->setCurVideoPosition(I)V

    .line 1461
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a(F)V

    .line 1462
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3$1;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->setOrgIntroViewListener(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$a;)V

    .line 1474
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lguu;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1475
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    move-result-object v0

    iget-object v1, p1, Lguu;->c:Ljava/lang/String;

    const-string/jumbo v2, "enterprise_home_webview"

    const-string/jumbo v3, "true"

    invoke-static {v1, v2, v3}, Lguz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->loadUrl(Ljava/lang/String;)V

    .line 1478
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->n(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lgty;

    move-result-object v0

    iget-object v1, p1, Lguu;->a:Lgus;

    .line 3055
    iput-object v1, v0, Lgty;->a:Lgus;

    .line 1480
    iget-object v0, p1, Lguu;->b:Lgut;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lguu;->b:Lgut;

    iget-object v0, v0, Lgut;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->d(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lguu;->b:Lgut;

    iget-object v1, v1, Lgut;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1483
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->n(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lgty;

    move-result-object v0

    invoke-virtual {v0}, Lgty;->notifyDataSetChanged()V

    .line 1484
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->c(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3$2;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2223
    :cond_5
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v1, v1, Lguu;->a:Lgus;

    iget-object v1, v1, Lgus;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2224
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2234
    :goto_2
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->b:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v2, v2, Lguu;->a:Lgus;

    invoke-virtual {v2}, Lgus;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2238
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v1, v1, Lguu;->a:Lgus;

    iget v1, v1, Lgus;->p:I

    .line 2239
    if-gtz v1, :cond_7

    .line 2240
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2241
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2253
    :goto_3
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v1, v1, Lguu;->a:Lgus;

    iget-byte v1, v1, Lgus;->d:B

    .line 2254
    invoke-static {v1}, Lgux;->b(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2255
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2256
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2264
    :goto_4
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v1, v1, Lguu;->a:Lgus;

    iget-object v1, v1, Lgus;->f:Ljava/lang/String;

    .line 2265
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2266
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2267
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2277
    :goto_5
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v1, v1, Lguu;->a:Lgus;

    iget-object v1, v1, Lgus;->o:Ljava/lang/String;

    .line 2278
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2279
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2280
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->j:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2285
    :goto_6
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a()V

    .line 2286
    invoke-virtual {v0, v8}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a(Z)V

    .line 2393
    const-string/jumbo v1, "pref_org_home_page_should_show_guide"

    invoke-static {v1, v8}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2394
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2395
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->k:Landroid/widget/ImageView;

    new-instance v2, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$5;

    invoke-direct {v2, v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView$5;-><init>(Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 2227
    :cond_6
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2228
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->n:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->a:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->o:Lguu;

    iget-object v3, v3, Lguu;->a:Lgus;

    iget-object v3, v3, Lgus;->c:Ljava/lang/String;

    .line 2229
    invoke-static {v3}, Lguz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2228
    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_2

    .line 2244
    :cond_7
    iget-object v2, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->c:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2245
    iget-object v2, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2246
    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lgtt$f;->dt_recruitment_dingtalk_org_rights_level:I

    .line 2247
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, " "

    aput-object v3, v2, v8

    .line 2248
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v9

    .line 2246
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2249
    iget-object v2, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2258
    :cond_8
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2259
    iget-object v1, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 2269
    :cond_9
    iget-object v2, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->g:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 2270
    iget-object v2, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2271
    iget-object v2, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->h:Landroid/widget/TextView;

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lgtt$f;->dt_recruitment_zhima_xinyong:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string/jumbo v4, " "

    aput-object v4, v3, v8

    aput-object v1, v3, v9

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 2282
    :cond_a
    iget-object v2, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2283
    iget-object v2, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->j:Landroid/widget/TextView;

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "\u00b7"

    aput-object v4, v3, v6

    aput-object v1, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 2405
    :cond_b
    iget-object v0, v0, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 499
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "getSchoolRecruitBasePage failed"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lguy;->a(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->j(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)V

    .line 501
    iget-object v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity$3;->a:Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;->e(Lcom/alibaba/dingtalk/recruitment/activity/OrgHomePageActivity;)Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/recruitment/widget/OrgIntroView;->setVisibility(I)V

    .line 502
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 495
    return-void
.end method
