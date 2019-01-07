.class public Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "FriendRequestMoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;,
        Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/view/View;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private e:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;

.field private f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 510
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->g:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 51
    .line 3123
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3124
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 3125
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 3126
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3127
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3128
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 51
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    .prologue
    .line 51
    .line 3172
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->e:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;

    if-eqz v0, :cond_0

    .line 3173
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->e:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->notifyDataSetChanged()V

    .line 51
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 51
    .line 4133
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4134
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4135
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 4136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    .prologue
    const/16 v2, 0x8

    .line 51
    .line 4141
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4142
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4143
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 4144
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    .prologue
    const/16 v1, 0x8

    .line 51
    .line 4166
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4167
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4168
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 51
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    .prologue
    const/16 v2, 0x8

    .line 51
    .line 5149
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5150
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5151
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 5152
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5153
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5161
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->load_error_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 51
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->b:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 584
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onBackPressed()V

    .line 585
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 586
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_friend_request_deleted"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 588
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 590
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
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
    sget v0, Lezg$j;->activity_friend_request:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->setContentView(I)V

    .line 1081
    sget v0, Lezg$h;->ll_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a:Landroid/view/View;

    .line 1082
    sget v0, Lezg$h;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->b:Landroid/widget/ListView;

    .line 1083
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->footer_loading_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->c:Landroid/view/View;

    .line 1084
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1085
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    new-instance v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;-><init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->e:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;

    .line 1087
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->e:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1088
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1116
    sget v0, Lezg$h;->list_empty_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 1117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$g;->new_friend_empty_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 1118
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->dt_contact_empty_result_newfriends_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 1186
    new-instance v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;-><init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .line 1187
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->e:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->e:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .line 1439
    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->c:Ljava/util/List;

    .line 1518
    iput-object v1, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->a:Ljava/util/List;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->a()V

    .line 72
    :cond_1
    sget v0, Lezg$l;->dt_contact_friend_request_notice:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->setTitle(I)V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    .line 2443
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->e:Lcjo$a;

    invoke-interface {v1, v2}, Lfac;->b(Lcjo$a;)V

    .line 2444
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->e:Lcjo$a;

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 183
    return-void
.end method
