.class public Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "PostCommentActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

.field private b:J

.field private c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

.field private g:I

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 2018
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->i:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    .prologue
    .line 63
    iget v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->g:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->g:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 303
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lbpu$f;->dt_circle_action_leave_alert_message:I

    .line 304
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbpu$f;->dt_circle_cancel:I

    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$5;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;)V

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbpu$f;->dt_circle_action_leave:I

    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$4;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;)V

    .line 311
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 317
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    .prologue
    .line 63
    .line 8259
    iget v0, p1, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->extraType:I

    if-nez v0, :cond_0

    .line 8260
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;->extra:[B

    invoke-static {v0}, Lbqp;->b([B)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->i:Ljava/util/Map;

    .line 63
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;Ljava/util/List;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/16 v6, 0x40

    .line 63
    .line 6117
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6121
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-eqz v0, :cond_4

    .line 6125
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 6126
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6127
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_0

    .line 6128
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->d:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->d:Ljava/lang/String;

    .line 6130
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6133
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

    .line 6134
    if-eqz v0, :cond_2

    .line 6138
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->i:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6140
    invoke-virtual {v1, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 6143
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6144
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    .line 6145
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6146
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 63
    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;)Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->f:Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    .line 63
    .line 6362
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 6387
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-nez v0, :cond_1

    move-wide v0, v2

    .line 6367
    :goto_0
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 6371
    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    .line 6372
    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    const-string/jumbo v3, "CIRCLE_POST_COMMENT_PRESENTER_CHOOSE_MEMBER"

    .line 6373
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    .line 6374
    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    .line 6375
    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v0

    .line 6376
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v0

    .line 6377
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 6378
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 6381
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;-><init>()V

    .line 7053
    iget-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 6382
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;->setContactChooseRequest(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    .line 6383
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    .line 8053
    iget-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 6383
    invoke-virtual {v0, p0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    .line 63
    :cond_0
    return-void

    .line 6391
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->getOrgId()J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;)Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->i:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 294
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a()V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget v0, Lbpu$e;->activity_post_comment:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->setContentView(I)V

    .line 2179
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2180
    if-nez v0, :cond_0

    move v0, v1

    .line 85
    :goto_0
    if-nez v0, :cond_3

    .line 86
    const-string/jumbo v0, "no post object"

    .line 3076
    invoke-static {v1, v0}, Lbqh;->a(ZLjava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->finish()V

    .line 92
    :goto_1
    return-void

    .line 2184
    :cond_0
    const-string/jumbo v3, "extra_post"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 2186
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    if-nez v0, :cond_1

    move v0, v1

    .line 2187
    goto :goto_0

    .line 2190
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->c:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->b:J

    .line 2192
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->b:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    move v0, v1

    .line 2193
    goto :goto_0

    :cond_2
    move v0, v2

    .line 2196
    goto :goto_0

    .line 3095
    :cond_3
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$1;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->h:Landroid/content/BroadcastReceiver;

    .line 3110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3111
    const-string/jumbo v1, "action_selected_contacts_result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3112
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3113
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 3200
    sget v0, Lbpu$d;->edit_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    .line 3201
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->setUrlEnabled(Z)V

    .line 3202
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->setFocusable(Z)V

    .line 3203
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->setFocusableInTouchMode(Z)V

    .line 3204
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->requestFocus()Z

    .line 3205
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3239
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->b:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$3;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;)V

    const-class v3, Lcov;

    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcov;

    invoke-static {p0, v1, v0}, Lboy;->a(Landroid/app/Activity;Ljava/lang/String;Lcov;)V

    .line 3207
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$2;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 266
    sget v2, Lbpu$f;->dt_circle_send:I

    invoke-interface {p1, v4, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 267
    .local v0, "menuItemPost":Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 268
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 272
    :cond_0
    return v3
.end method

.method protected onDestroy()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 152
    .line 4165
    invoke-static {}, Lbpc;->e()Lbpc;

    move-result-object v0

    .line 4166
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4167
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->f:Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    invoke-virtual {v0, v1}, Lbpc;->a(Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;)V

    .line 5158
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 5159
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 5160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->h:Landroid/content/BroadcastReceiver;

    .line 154
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 155
    return-void

    .line 4171
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4172
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->i:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4173
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lbpc;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;)V

    .line 4174
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbpc;->a(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 277
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x102002c

    if-ne v1, v3, :cond_1

    .line 278
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a()V

    :goto_0
    move v1, v2

    .line 289
    .end local v0    # "text":Ljava/lang/String;
    :goto_1
    return v1

    .line 282
    .restart local v0    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->finish()V

    goto :goto_0

    .line 285
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 5321
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->a:Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/circle/ui/UrlExtendEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5322
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5325
    new-instance v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;-><init>()V

    .line 5326
    iput v2, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->type:I

    .line 5327
    iput-object v1, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->content:Ljava/lang/String;

    .line 5328
    invoke-static {}, Liaf;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->uuid:Ljava/lang/String;

    .line 5329
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->i:Ljava/util/Map;

    invoke-static {v1}, Lcpf;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5330
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->i:Ljava/util/Map;

    iput-object v1, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->atUids:Ljava/util/Map;

    .line 5332
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->showLoadingDialog()V

    .line 5333
    invoke-static {}, Lbov;->a()Lbov;

    move-result-object v4

    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v6, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$6;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity$6;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/PostCommentActivity;)V

    const-class v7, Lcma;

    invoke-interface {v1, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v4, v5, v3, v1}, Lbov;->a(Ljava/lang/Long;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;Lcma;)V

    :cond_3
    move v1, v2

    .line 287
    goto :goto_1

    .line 289
    :cond_4
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1
.end method
