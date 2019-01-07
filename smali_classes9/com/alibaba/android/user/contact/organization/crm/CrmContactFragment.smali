.class public Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;
.source "CrmContactFragment.java"

# interfaces
.implements Lfir;


# instance fields
.field private e:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/view/View;

.field private i:J

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Lfiy;

.field private m:Lfja;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->i:J

    return-wide v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;)Lfja;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->m:Lfja;

    return-object v0
.end method


# virtual methods
.method public final H()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->l:Lfiy;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->l:Lfiy;

    invoke-virtual {v0}, Lfiy;->notifyDataSetChanged()V

    .line 177
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canScroll"    # Z

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->b_(Z)V

    .line 151
    return-void
.end method

.method public final a(ZI)V
    .locals 3
    .param p1, "hasMore"    # Z
    .param p2, "totalCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 167
    .line 1126
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->l:Lfiy;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->m:Lfja;

    .line 2054
    iget-object v1, v1, Lfja;->b:Ljava/util/List;

    .line 169
    invoke-virtual {v0, v1}, Lfiy;->a(Ljava/util/List;)V

    .line 170
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->g:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->g:Landroid/widget/RelativeLayout;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment$2;-><init>(Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->g:Landroid/widget/RelativeLayout;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->load_error_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->c()V

    .line 146
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 155
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$g;->icon_empty_people:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->empty_no_people:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyDescription(Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 109
    new-instance v0, Lfiy;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->j:I

    invoke-direct {v0, v1, v2}, Lfiy;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->l:Lfiy;

    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->l:Lfiy;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->m:Lfja;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->i:J

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->k:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lfja;->a(Landroid/app/Activity;JLjava/lang/String;Z)V

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->c()V

    .line 114
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    new-instance v1, Lfja;

    invoke-direct {v1}, Lfja;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->m:Lfja;

    .line 69
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->m:Lfja;

    .line 1049
    iput-object p0, v1, Lfja;->a:Lfir;

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "display_enterprise_oid"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->i:J

    .line 72
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->j:I

    .line 75
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->i:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 76
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->i:J

    invoke-virtual {v1, v2, v3}, Lccr;->b(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 77
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    .line 78
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->k:Ljava/lang/String;

    .line 81
    .end local v0    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->ll_choose_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->g:Landroid/widget/RelativeLayout;

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment$1;-><init>(Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->footer_loading_view:I

    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->h:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/crm/CrmContactFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lezg$j;->common_list_layout:I

    return v0
.end method
