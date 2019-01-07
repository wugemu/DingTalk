.class public Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "JoinGroupRequestActivity.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lfgn;

.field private c:J

.field private final d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 37
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->c:J

    .line 38
    const/16 v0, 0x32

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->d:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->e:Ljava/util/ArrayList;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->i:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->j:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->j:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;
    .param p1, "x1"    # J

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 7
    .param p1, "loadMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1199
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    :cond_0
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->c:J

    const/16 v4, 0x32

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;Z)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v5, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/alibaba/wukong/im/ConversationService;->listJoinGroupValidation(JILcom/alibaba/wukong/Callback;)V

    .line 141
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->f:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->g:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->g:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->f:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->h:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->h:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    .prologue
    .line 33
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->j:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)Lfgn;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->b:Lfgn;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    .prologue
    const/16 v1, 0x8

    .line 33
    .line 1215
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1217
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1224
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->supportInvalidateOptionsMenu()V

    .line 33
    return-void

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1220
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1221
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->l:Landroid/widget/TextView;

    sget v1, Lezg$l;->ios_join_group_list_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1222
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;

    .prologue
    .line 33
    .line 2203
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2204
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2205
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->l:Landroid/widget/TextView;

    sget v1, Lezg$l;->load_error_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2206
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->l:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$5;-><init>(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Lezg$j;->activity_join_group_request:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->setContentView(I)V

    .line 54
    sget v0, Lezg$h;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->a:Landroid/widget/ListView;

    .line 55
    new-instance v0, Lfgn;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->e:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lfgn;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->b:Lfgn;

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->b:Lfgn;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 83
    sget v0, Lezg$h;->progress_bar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->k:Landroid/view/View;

    .line 84
    sget v0, Lezg$h;->tv_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->l:Landroid/widget/TextView;

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->a(Z)V

    .line 87
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    const/4 v0, 0x1

    sget v1, Lezg$l;->ios_join_group_list_clear:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 148
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 229
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 230
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 154
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 155
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->ios_join_group_list_confirm_clear:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)V

    .line 157
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/JoinGroupRequestActivity;)V

    .line 185
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 194
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
