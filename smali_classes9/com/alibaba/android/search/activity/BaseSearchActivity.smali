.class public abstract Lcom/alibaba/android/search/activity/BaseSearchActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "BaseSearchActivity.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Landroid/widget/SearchView;

.field protected c:I

.field protected d:Ljava/io/Serializable;

.field protected e:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->c:I

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->f:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/alibaba/android/search/activity/BaseSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity$1;-><init>(Lcom/alibaba/android/search/activity/BaseSearchActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->g:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/activity/BaseSearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/BaseSearchActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/search/activity/BaseSearchActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/activity/BaseSearchActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, -0x1

    return v0
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, -0x1

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->e:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->e:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;->a(I)V

    .line 138
    :cond_0
    return-void

    .line 136
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final c()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->d:Ljava/io/Serializable;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->setContentView(I)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 79
    const/16 v1, 0x15

    const-string/jumbo v2, ""

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 80
    .local v0, "searchInput":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->b:Landroid/widget/SearchView;

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->b()I

    move-result v1

    invoke-static {p0, v1}, Lcms;->a(Landroid/app/Activity;I)Landroid/widget/SearchView;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->b:Landroid/widget/SearchView;

    .line 82
    iget-object v1, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->b:Landroid/widget/SearchView;

    new-instance v2, Lcom/alibaba/android/search/activity/BaseSearchActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity$2;-><init>(Lcom/alibaba/android/search/activity/BaseSearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1163
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/search/activity/BaseSearchActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity$4;-><init>(Lcom/alibaba/android/search/activity/BaseSearchActivity;)V

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b$a;)Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->e:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    .line 1173
    iget-object v1, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->e:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    if-eqz v1, :cond_0

    .line 1174
    iget-object v1, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->e:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    invoke-interface {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;->a()V

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->b:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->b:Landroid/widget/SearchView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 104
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 105
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 107
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/search/activity/BaseSearchActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity$3;-><init>(Lcom/alibaba/android/search/activity/BaseSearchActivity;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->e:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->e:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;->b()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/search/activity/BaseSearchActivity;->e:Lcom/alibaba/android/dingtalk/search/base/SearchInterface$b;

    .line 185
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 127
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/search/activity/BaseSearchActivity;->finish()V

    .line 128
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
