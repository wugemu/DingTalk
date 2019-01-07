.class public Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "MyCustomerSearchActivity.java"

# interfaces
.implements Lfhw;


# instance fields
.field a:Landroid/widget/SearchView;

.field private final b:I

.field private c:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->b:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->a:Landroid/widget/SearchView;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->d:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity$1;-><init>(Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 46
    .line 3139
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->c:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    if-eqz v0, :cond_0

    .line 3140
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->c:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "intent_key_list_type"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/android/user/crm/service/CrmCustomerListType;->valueOf(I)Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    move-result-object v1

    .line 4140
    iput-object v1, v0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->c:Lcom/alibaba/android/user/crm/service/CrmCustomerListType;

    .line 3141
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->c:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    .line 4144
    invoke-virtual {v0, p1, v3}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->a(Ljava/lang/String;Z)V

    .line 46
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z
    .locals 1
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lcom/alibaba/android/user/contact/org/model/SelectModel;)V
    .locals 0
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .prologue
    .line 167
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget v0, Lezg$j;->customer_my_search_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->setContentView(I)V

    .line 1081
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->c:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    if-nez v0, :cond_0

    .line 1082
    new-instance v0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-direct {v0}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->c:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    .line 1083
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->c:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    new-instance v1, Lfmn;

    invoke-direct {v1, p0}, Lfmn;-><init>(Lfhw;)V

    .line 1211
    iput-object v1, v0, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->b:Lfhx;

    .line 1084
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->c:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1086
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1087
    sget v1, Lezg$h;->ll_container:I

    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->c:Lcom/alibaba/android/user/crm/fragment/SearchCustomerFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1088
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 68
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 98
    const-string/jumbo v1, ""

    invoke-interface {p1, v5, v2, v5, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 99
    .local v0, "searchInput":Landroid/view/MenuItem;
    sget v1, Lezg$l;->search_box_hint:I

    invoke-static {p0, v1}, Lcms;->a(Landroid/app/Activity;I)Landroid/widget/SearchView;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->a:Landroid/widget/SearchView;

    .line 100
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->a:Landroid/widget/SearchView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 101
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 102
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 104
    new-instance v1, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity$2;-><init>(Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;)V

    invoke-static {v0, v1}, Lgd;->a(Landroid/view/MenuItem;Lgd$d;)Landroid/view/MenuItem;

    .line 119
    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->a:Landroid/widget/SearchView;

    new-instance v2, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity$3;-><init>(Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 2146
    new-instance v1, Landroid/text/SpannableString;

    sget v2, Lezg$l;->global_search:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2147
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->search_hint_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 2148
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v1, v2, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2149
    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->a:Landroid/widget/SearchView;

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2150
    iget-object v2, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->a:Landroid/widget/SearchView;

    invoke-virtual {v2, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 135
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/crm/activity/MyCustomerSearchActivity;->d:Landroid/os/Handler;

    .line 77
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 78
    return-void
.end method
