.class public Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;
.super Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;
.source "OrgHomepageDetailSearchFragment.java"


# instance fields
.field private D:Lero$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;-><init>()V

    .line 99
    new-instance v0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment$2;-><init>(Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->D:Lero$b;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;->a(Landroid/view/View;)V

    .line 148
    sget v0, Lemt$e;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lemt$g;->dt_search_org_homepage_link:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 149
    sget v0, Lemt$e;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lemt$d;->icon_org_hompage_footer:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    return-void
.end method

.method protected final c(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 141
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 142
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 141
    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method protected final g()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method protected final l()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->z:Leqp$a;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->z:Leqp$a;

    invoke-interface {v0}, Leqp$a;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->b(Ljava/util/List;)V

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_search_query_log_entry"

    sget-object v2, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->NONE:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->valueOf(I)Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->B:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    .line 62
    new-instance v1, Lerp;

    invoke-virtual {p0}, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->D:Lero$b;

    invoke-direct {v1, v0, v2}, Lerp;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lero$b;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->z:Leqp$a;

    new-instance v1, Leoe;

    iget-object v2, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->B:Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/BaseSearchLogConsts$SearchEntryCode;->getValue()I

    move-result v3

    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->SOURCE_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchSource;->getValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Leoe;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Leqp$a;->a(Leoe;)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->z:Leqp$a;

    iget-object v1, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Leqp$a;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/search/fragment/OrgHomepageSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->u:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 72
    new-instance v0, Landroid/text/SpannableString;

    sget v1, Lemt$g;->dt_homepage_search_result_guide:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 73
    .local v0, "more":Landroid/text/SpannableString;
    new-instance v1, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment$1;-><init>(Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;)V

    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    .line 73
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 88
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->u:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 91
    .end local v0    # "more":Landroid/text/SpannableString;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/fragment/OrgHomepageDetailSearchFragment;->I:Landroid/view/View;

    return-object v1
.end method
