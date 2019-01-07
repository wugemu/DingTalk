.class public Levp;
.super Ljava/lang/Object;
.source "TeleVideoMemberListFragment.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

.field public b:Z

.field public c:Z

.field private e:Landroid/view/View;

.field private f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/support/v7/widget/RecyclerView;

.field private m:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

.field private n:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

.field private o:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Levp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Levp;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;Landroid/view/View;)V
    .locals 4
    .param p1, "rspActionView"    # Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;
    .param p2, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v3, p0, Levp;->b:Z

    .line 59
    iput-boolean v3, p0, Levp;->c:Z

    .line 62
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iput-object p1, p0, Levp;->m:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    .line 66
    iget-object v0, p0, Levp;->m:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a()Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    move-result-object v0

    iput-object v0, p0, Levp;->n:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    .line 67
    iget-object v0, p0, Levp;->m:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->e()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Levp;->o:Landroid/app/Activity;

    .line 1150
    sget v0, Leuj$i;->conf_status_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Levp;->g:Landroid/widget/TextView;

    .line 1151
    sget v0, Leuj$i;->conf_status_close:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Levp;->e:Landroid/view/View;

    .line 1152
    iget-object v0, p0, Levp;->e:Landroid/view/View;

    new-instance v1, Levp$1;

    invoke-direct {v1, p0}, Levp$1;-><init>(Levp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1161
    sget v0, Leuj$i;->conf_status_close_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Levp;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1163
    sget v0, Leuj$i;->conf_control_add:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Levp;->k:Landroid/view/View;

    .line 1164
    iget-object v0, p0, Levp;->k:Landroid/view/View;

    new-instance v1, Levp$2;

    invoke-direct {v1, p0}, Levp$2;-><init>(Levp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1173
    sget v0, Leuj$i;->conf_control_mute_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Levp;->j:Landroid/view/View;

    .line 1174
    sget v0, Leuj$i;->conf_control_mute_all:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Levp;->h:Landroid/widget/Button;

    .line 1175
    iget-object v0, p0, Levp;->h:Landroid/widget/Button;

    new-instance v1, Levp$3;

    invoke-direct {v1, p0}, Levp$3;-><init>(Levp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1202
    sget v0, Leuj$i;->conf_control_end_conf:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Levp;->i:Landroid/widget/Button;

    .line 1203
    iget-object v0, p0, Levp;->i:Landroid/widget/Button;

    new-instance v1, Levp$4;

    invoke-direct {v1, p0}, Levp$4;-><init>(Levp;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1210
    sget v0, Leuj$i;->conf_members_list:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Levp;->l:Landroid/support/v7/widget/RecyclerView;

    .line 1212
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Levp;->o:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 1213
    iget-object v1, p0, Levp;->l:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1214
    new-instance v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    iget-object v1, p0, Levp;->o:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Levp;->a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    .line 1215
    iget-object v0, p0, Levp;->l:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Levp;->a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1217
    iget-object v0, p0, Levp;->a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    new-instance v1, Levp$5;

    invoke-direct {v1, p0}, Levp$5;-><init>(Levp;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->a(Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Levp;)V
    .locals 1
    .param p0, "x0"    # Levp;

    .prologue
    .line 41
    .line 3259
    iget-object v0, p0, Levp;->m:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    if-eqz v0, :cond_0

    .line 3260
    iget-object v0, p0, Levp;->m:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->i()V

    .line 41
    :cond_0
    return-void
.end method

.method static synthetic a(Levp;I)V
    .locals 3
    .param p0, "x0"    # Levp;
    .param p1, "x1"    # I

    .prologue
    .line 41
    .line 3291
    iget-object v0, p0, Levp;->o:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3295
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Levp;->o:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3296
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3297
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->sure:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Levp$7;

    invoke-direct {v2, p0, v0}, Levp$7;-><init>(Levp;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3307
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->cancel:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Levp$8;

    invoke-direct {v2, p0, v0}, Levp$8;-><init>(Levp;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3314
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 41
    :cond_0
    return-void
.end method

.method static synthetic a(Levp;Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;I)V
    .locals 4
    .param p0, "x0"    # Levp;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;
    .param p2, "x2"    # I

    .prologue
    .line 41
    .line 4265
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4266
    :cond_0
    :goto_0
    return-void

    .line 4269
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    const/4 v1, 0x0

    iget-object v2, p0, Levp;->o:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Leuj$l;->and_conf_video_conference_kickoff_txt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4270
    sget-object v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_GRAVITY_CENTER:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 4585
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->h:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 4271
    iget-object v1, p0, Levp;->o:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_alert_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 5569
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->i:I

    .line 4272
    new-instance v1, Levp$6;

    invoke-direct {v1, p0, p2, p1}, Levp$6;-><init>(Levp;ILcom/alibaba/android/teleconf/data/TeleVideoMemberObject;)V

    .line 5581
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 4281
    new-instance v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    iget-object v2, p0, Levp;->o:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;-><init>(Landroid/content/Context;)V

    .line 4282
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .line 4284
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 4285
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 6205
    :goto_1
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a:Ljava/lang/String;

    .line 4287
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->show()V

    goto :goto_0

    .line 4285
    :cond_2
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic b(Levp;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;
    .locals 1
    .param p0, "x0"    # Levp;

    .prologue
    .line 41
    iget-object v0, p0, Levp;->m:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Levp;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Levp;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;
    .locals 1
    .param p0, "x0"    # Levp;

    .prologue
    .line 41
    iget-object v0, p0, Levp;->n:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    return-object v0
.end method

.method static synthetic d(Levp;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Levp;

    .prologue
    .line 41
    iget-object v0, p0, Levp;->o:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Levp;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Levp;

    .prologue
    .line 41
    iget-object v0, p0, Levp;->h:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 80
    invoke-static {}, Levm;->a()Levm;

    move-result-object v3

    .line 2118
    iget-boolean v0, v3, Levm;->c:Z

    .line 81
    .local v0, "beMuted":Z
    if-eqz v0, :cond_2

    .line 82
    iget-object v3, p0, Levp;->h:Landroid/widget/Button;

    sget v4, Leuj$l;->dt_conf_video_unmute_all:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 86
    :goto_0
    iget-object v3, p0, Levp;->a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Levp;->a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    iget-boolean v4, p0, Levp;->b:Z

    .line 2292
    iput-boolean v4, v3, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->e:Z

    .line 88
    iget-object v3, p0, Levp;->n:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v2

    .line 89
    .local v2, "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    iget-object v3, p0, Levp;->a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->a(Ljava/util/List;)V

    .line 92
    .end local v2    # "windowObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;>;"
    :cond_0
    iget-boolean v3, p0, Levp;->b:Z

    if-eqz v3, :cond_4

    .line 93
    iget-object v3, p0, Levp;->j:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v3, p0, Levp;->h:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    iget-object v3, p0, Levp;->h:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 96
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v3, p0, Levp;->c:Z

    if-eqz v3, :cond_3

    .line 97
    iget-object v3, p0, Levp;->i:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    iget-object v3, p0, Levp;->o:Landroid/app/Activity;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 103
    :goto_1
    iget-object v3, p0, Levp;->h:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    iget-boolean v3, p0, Levp;->c:Z

    if-eqz v3, :cond_1

    .line 108
    iget-object v3, p0, Levp;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v4, Leuj$l;->icon_minimize:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 110
    :cond_1
    return-void

    .line 84
    :cond_2
    iget-object v3, p0, Levp;->h:Landroid/widget/Button;

    sget v4, Leuj$l;->conf_txt_mute_everyone:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 100
    .restart local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v3, p0, Levp;->i:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    iget-object v3, p0, Levp;->o:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 105
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    iget-object v3, p0, Levp;->j:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public final a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;II)V
    .locals 7
    .param p1, "actionType"    # Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .param p2, "startIndex"    # I
    .param p3, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 120
    if-ltz p2, :cond_0

    if-lez p3, :cond_0

    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v3, p0, Levp;->a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Levp;->n:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    if-eqz v3, :cond_0

    .line 124
    iget-object v3, p0, Levp;->a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    iget-object v4, p0, Levp;->n:Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;

    invoke-interface {v4}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$a;->a()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->b(Ljava/util/List;)V

    .line 125
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_ADD_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne p1, v3, :cond_3

    .line 126
    iget-object v3, p0, Levp;->a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    invoke-virtual {v3, p2}, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->notifyItemInserted(I)V

    .line 127
    if-lez p2, :cond_2

    .line 128
    add-int/lit8 p2, p2, -0x1

    .line 129
    add-int/lit8 p3, p3, 0x1

    .line 131
    :cond_2
    iget-object v3, p0, Levp;->a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    invoke-virtual {v3, p2, p3}, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->notifyItemRangeChanged(II)V

    goto :goto_0

    .line 132
    :cond_3
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne p1, v3, :cond_5

    .line 133
    iget-object v3, p0, Levp;->a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    invoke-virtual {v3, p2}, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->notifyItemRemoved(I)V

    .line 134
    iget-object v3, p0, Levp;->a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->getItemCount()I

    move-result v2

    .line 135
    .local v2, "totalSize":I
    move v1, p2

    .line 136
    .local v1, "index":I
    move v0, v2

    .line 137
    .local v0, "freshCount":I
    if-ne p2, v2, :cond_4

    if-lez v2, :cond_4

    .line 138
    add-int/lit8 v1, p2, -0x1

    .line 139
    const/4 v0, 0x1

    .line 141
    :cond_4
    iget-object v3, p0, Levp;->a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    invoke-virtual {v3, v1, v0}, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->notifyItemRangeChanged(II)V

    .line 142
    sget-object v3, Levp;->d:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Delete and update "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ","

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v0    # "freshCount":I
    .end local v1    # "index":I
    .end local v2    # "totalSize":I
    :cond_5
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne p1, v3, :cond_0

    .line 144
    iget-object v3, p0, Levp;->a:Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;

    invoke-virtual {v3, p2, p3}, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->notifyItemRangeChanged(II)V

    goto :goto_0
.end method
