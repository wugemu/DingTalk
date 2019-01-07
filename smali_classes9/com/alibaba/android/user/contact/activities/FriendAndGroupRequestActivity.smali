.class public Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "FriendAndGroupRequestActivity.java"


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/ListView;

.field public c:Landroid/view/View;

.field public d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field public e:Lfgo;

.field f:Z

.field private g:Ljava/lang/String;

.field private h:Lflt;

.field private i:Z

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->i:Z

    .line 68
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)Lflt;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->h:Lflt;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;Z)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;
    .param p1, "x1"    # Z

    .prologue
    const/4 v3, 0x1

    .line 52
    .line 7354
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    new-instance v1, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$9;-><init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;Z)V

    invoke-static {p0, v3, v0, v1}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    .line 52
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .prologue
    .line 52
    .line 7199
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 7200
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 52
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->k()V

    return-void
.end method

.method private j()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->g:Ljava/lang/String;

    const-string/jumbo v1, "IM"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->g:Ljava/lang/String;

    const-string/jumbo v1, "search"

    .line 153
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 205
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->j:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->j:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 208
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lezg$j;->activity_new_request_tips:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->j:Landroid/view/View;

    .line 209
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->j:Landroid/view/View;

    sget v2, Lezg$h;->new_friend_no_unread:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 210
    .local v0, "recommendView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 211
    new-instance v1, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$5;-><init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->j:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 220
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->a:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->a:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 282
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->a:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->a:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$6;-><init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->a:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->load_error_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 295
    return-void
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    .line 299
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->f:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->icon_group_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 302
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->dt_contact_recommend_friend_empty_tips:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 345
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->icon_addresslist_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 305
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->dt_contact_access_header:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 306
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->dt_contact_access_footer:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setBtnDescription(I)V

    .line 307
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$g;->btn_login_bg:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionBackgroundResource(I)V

    .line 308
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$7;-><init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->dt_login_facebox_settings:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionText(I)V

    .line 315
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setBtnMarginTop(I)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->icon_group_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyIconFontResource(I)V

    .line 319
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->f:Z

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->dt_contact_recommend_friend_empty_tips:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_0

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->dt_contact_get_contact_permission_empty_tips:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 323
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setBtnMarginTop(I)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->home_menu_add_friend:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionText(I)V

    .line 325
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$g;->btn_login_bg:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionBackgroundResource(I)V

    .line 326
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$8;-><init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyActionListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->e:Lfgo;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->e:Lfgo;

    invoke-virtual {v0}, Lfgo;->notifyDataSetChanged()V

    .line 351
    :cond_0
    return-void
.end method

.method public final h()V
    .locals 4
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.READ_CONTACTS"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 430
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 449
    return-void
.end method

.method public final i()V
    .locals 3
    .annotation build Lcom/alibaba/android/dingtalk/permission/annotation/OnPermissionDenied;
        value = {
            "android.permission.READ_CONTACTS"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 453
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    .line 76
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    sget v0, Lezg$j;->activity_friend_request:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->setContentView(I)V

    .line 1091
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_page_source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->g:Ljava/lang/String;

    .line 1092
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "im_navigator_from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 1093
    const-string/jumbo v1, ""

    .line 1094
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1095
    check-cast v0, Ljava/lang/String;

    .line 1097
    :goto_0
    const-string/jumbo v1, "maipage_msg_list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    const-string/jumbo v0, "IM"

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->g:Ljava/lang/String;

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->g:Ljava/lang/String;

    const-string/jumbo v1, "CONTACT_MATCH_GUIDE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1101
    iput-boolean v4, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->i:Z

    .line 1103
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->g:Ljava/lang/String;

    const-string/jumbo v1, "IM"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->g:Ljava/lang/String;

    const-string/jumbo v1, "search"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1104
    :cond_2
    sget v0, Lezg$l;->dt_funcational_new_friends:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->setTitle(I)V

    .line 1249
    :goto_1
    sget v0, Lezg$h;->list_empty_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 1250
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$g;->new_friend_empty_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 1251
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->dt_contact_empty_result_newfriends_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 2111
    sget v0, Lezg$h;->ll_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->a:Landroid/view/View;

    .line 2112
    sget v0, Lezg$h;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    .line 2113
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->footer_loading_view:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->c:Landroid/view/View;

    .line 2114
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 2115
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->c:Landroid/view/View;

    invoke-static {v0, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 2116
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2118
    new-instance v0, Lflt;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->g:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->f:Z

    invoke-direct {v0, p0, v1, v2}, Lflt;-><init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->h:Lflt;

    .line 2119
    new-instance v0, Lfgo;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->h:Lflt;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->g:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lfgo;-><init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;Lflt;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->e:Lfgo;

    .line 2120
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->e:Lfgo;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2122
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->e:Lfgo;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->h:Lflt;

    .line 2942
    iget-object v1, v1, Lflt;->l:Ljava/util/List;

    .line 3095
    if-nez v1, :cond_7

    .line 3096
    iget-object v1, v0, Lfgo;->a:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 3097
    iget-object v0, v0, Lfgo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2123
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->e:Lfgo;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->h:Lflt;

    .line 3949
    iget-object v1, v1, Lflt;->m:Ljava/util/List;

    .line 2123
    invoke-virtual {v0, v1}, Lfgo;->a(Ljava/util/List;)V

    .line 2124
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->h:Lflt;

    invoke-virtual {v0}, Lflt;->d()V

    .line 2125
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1085
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b()V

    .line 4383
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->i:Z

    if-eqz v0, :cond_4

    .line 4387
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10;-><init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5224
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->i:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->f:Z

    if-eqz v0, :cond_8

    .line 5238
    :cond_5
    :goto_3
    return-void

    .line 1106
    :cond_6
    sget v0, Lezg$l;->friend_request:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->setTitle(I)V

    goto/16 :goto_1

    .line 3100
    :cond_7
    iput-object v1, v0, Lfgo;->a:Ljava/util/List;

    goto :goto_2

    .line 5229
    :cond_8
    const-string/jumbo v0, "pref_new_friends_header_tip_closed"

    invoke-static {p0, v0}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 5231
    if-nez v0, :cond_5

    .line 5235
    invoke-static {}, Lflw;->a()Z

    move-result v0

    .line 5237
    if-eqz v0, :cond_9

    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 6158
    :cond_9
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->activity_friend_request_switch_tip:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->j:Landroid/view/View;

    .line 6160
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->j:Landroid/view/View;

    sget v1, Lezg$h;->header_tip_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6175
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->j:Landroid/view/View;

    sget v1, Lezg$h;->header_tip_open:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6195
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_3

    .line 5241
    :cond_a
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5243
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->k()V

    goto :goto_3

    :cond_b
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 416
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->h:Lflt;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->h:Lflt;

    .line 6953
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    iget-object v2, v0, Lflt;->n:Lcjo$a;

    invoke-interface {v1, v2}, Lfac;->b(Lcjo$a;)V

    .line 6954
    const/4 v1, 0x0

    iput-object v1, v0, Lflt;->n:Lcjo$a;

    .line 419
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 420
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 424
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/UserBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 425
    invoke-static {p0, p1, p3}, Lffy;->a(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;I[I)V

    .line 426
    return-void
.end method
