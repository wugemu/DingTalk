.class public Lcom/alibaba/android/user/connection/activity/PostCommentActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "PostCommentActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

.field private b:J

.field private c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/alibaba/android/user/connection/draft/CommentDraft;

.field private g:I

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->g:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostCommentActivity;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->g:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;Lcom/alibaba/android/user/connection/draft/CommentDraft;)Lcom/alibaba/android/user/connection/draft/CommentDraft;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostCommentActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/connection/draft/CommentDraft;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->f:Lcom/alibaba/android/user/connection/draft/CommentDraft;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostCommentActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostCommentActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostCommentActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/16 v4, 0x40

    .line 64
    .line 4117
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4121
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    if-eqz v0, :cond_4

    .line 4125
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 4126
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4127
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_0

    .line 4128
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->d:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->d:Ljava/lang/String;

    .line 4130
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 4133
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 4134
    if-eqz v0, :cond_2

    .line 4137
    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 4140
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4141
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    .line 4142
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4143
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 64
    :cond_4
    return-void
.end method

.method private a()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 177
    .local v0, "data":Landroid/os/Bundle;
    if-nez v0, :cond_0

    move v1, v2

    .line 192
    :goto_0
    return v1

    .line 182
    :cond_0
    :try_start_0
    const-string/jumbo v1, "extra_post"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iput-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    .line 184
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    if-nez v1, :cond_1

    move v1, v2

    .line 185
    goto :goto_0

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    iget-wide v4, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    iput-wide v4, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->b:J

    .line 190
    iget-wide v4, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 192
    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostCommentActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 291
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lezg$l;->dt_circle_action_leave_alert_message:I

    .line 292
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->dt_circle_cancel:I

    new-instance v2, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$5;-><init>(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)V

    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->dt_circle_action_leave:I

    new-instance v2, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$4;-><init>(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)V

    .line 299
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 305
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    .line 64
    .line 4347
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 4372
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    if-nez v0, :cond_1

    move-wide v0, v2

    .line 4352
    :goto_0
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 4356
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    .line 4357
    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    const-string/jumbo v3, "CIRCLE_POST_COMMENT_PRESENTER_CHOOSE_MEMBER"

    .line 4358
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    .line 4359
    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    .line 4360
    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v0

    .line 4361
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v0

    .line 4362
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 4363
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 4366
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;-><init>()V

    .line 5053
    iget-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 4367
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;->setContactChooseRequest(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    .line 4368
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    .line 6053
    iget-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 4368
    invoke-virtual {v0, p0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    .line 64
    :cond_0
    return-void

    .line 4376
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->c:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->getOrgId()J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/PostCommentActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 282
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->b()V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 83
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget v0, Lezg$j;->activity_connection_post_comment:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->setContentView(I)V

    .line 85
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const-string/jumbo v0, "no post object"

    .line 1060
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lffe;->a(ZLjava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->finish()V

    .line 92
    :goto_0
    return-void

    .line 1095
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$1;-><init>(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->h:Landroid/content/BroadcastReceiver;

    .line 1110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1111
    const-string/jumbo v1, "action_selected_contacts_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1112
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1113
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1197
    sget v0, Lezg$h;->edit_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->setUrlEnabled(Z)V

    .line 1199
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->setFocusable(Z)V

    .line 1200
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->setFocusableInTouchMode(Z)V

    .line 1201
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->requestFocus()Z

    .line 1202
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1236
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->b:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$3;-><init>(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)V

    const-class v3, Lcov;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcov;

    invoke-static {p0, v1, v0}, Lfdp;->a(Landroid/app/Activity;Ljava/lang/String;Lcov;)V

    .line 1204
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$2;-><init>(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 254
    sget v2, Lezg$l;->dt_circle_send:I

    invoke-interface {p1, v4, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 255
    .local v0, "menuItemPost":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 256
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-virtual {v2}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 260
    :cond_0
    return v3
.end method

.method protected onDestroy()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 149
    .line 2162
    invoke-static {}, Lfdu;->f()Lfdu;

    move-result-object v0

    .line 2163
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2164
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->f:Lcom/alibaba/android/user/connection/draft/CommentDraft;

    invoke-virtual {v0, v1}, Lfdu;->a(Lcom/alibaba/android/user/connection/draft/CommentDraft;)V

    .line 3155
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 3156
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 3157
    iput-object v4, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->h:Landroid/content/BroadcastReceiver;

    .line 151
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 152
    return-void

    .line 2168
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2169
    new-instance v1, Lcom/alibaba/android/user/connection/draft/CommentDraft;

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/android/user/connection/draft/CommentDraft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2170
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lfdu;->a(Ljava/lang/String;Lcom/alibaba/android/user/connection/draft/CommentDraft;)V

    .line 2171
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfdu;->a(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x102002c

    if-ne v1, v3, :cond_1

    .line 266
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->b()V

    :goto_0
    move v1, v2

    .line 277
    .end local v0    # "text":Ljava/lang/String;
    :goto_1
    return v1

    .line 270
    .restart local v0    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->finish()V

    goto :goto_0

    .line 273
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 3309
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->a:Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/user/connection/ui/UrlExtendEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3310
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3313
    new-instance v3, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    invoke-direct {v3}, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;-><init>()V

    .line 3314
    iput v2, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->type:I

    .line 3315
    iput-object v1, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->content:Ljava/lang/String;

    .line 3316
    invoke-static {}, Liaf;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->uuid:Ljava/lang/String;

    .line 3318
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->showLoadingDialog()V

    .line 4036
    sget-object v4, Lfdm$a;->a:Lfdk;

    .line 3319
    iget-wide v6, p0, Lcom/alibaba/android/user/connection/activity/PostCommentActivity;->b:J

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v5, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$6;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/connection/activity/PostCommentActivity$6;-><init>(Lcom/alibaba/android/user/connection/activity/PostCommentActivity;)V

    const-class v8, Lcma;

    invoke-interface {v1, v5, v8, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-interface {v4, v6, v7, v3, v1}, Lfdk;->a(JLcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;Lcma;)V

    :cond_2
    move v1, v2

    .line 275
    goto :goto_1

    .line 277
    :cond_3
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1
.end method
