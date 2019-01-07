.class public Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "OrgApplyFormCustomizeEditActivity.java"


# instance fields
.field private a:I

.field private b:J

.field private c:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

.field private d:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

.field private e:I

.field private f:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

.field private g:Lfkq;

.field private h:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

.field private i:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

.field private j:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

.field private k:Landroid/view/MenuItem;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 57
    iput v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a:I

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->b:J

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->e:I

    .line 76
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->k:Landroid/view/MenuItem;

    return-object v0
.end method

.method private a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    if-nez v0, :cond_0

    .line 209
    const-string/jumbo v0, "OrgApplyFormCustomizeEditActivity"

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "onOptionsItemSelected: formObject is null!"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->showLoadingDialog()V

    .line 3245
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;)Lchl;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->fromIDLModel(Lchl;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    .line 3247
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    if-nez v0, :cond_1

    .line 3248
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    .line 3251
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    .line 3252
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    .line 3253
    iget v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a:I

    packed-switch v2, :pswitch_data_0

    .line 3283
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;-><init>()V

    .line 3284
    iput v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->type:I

    .line 3285
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->h:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fieldKey:Ljava/lang/String;

    .line 3286
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fieldKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fieldName:Ljava/lang/String;

    .line 3287
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->i18n:Z

    .line 3288
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->j:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->b()Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->required:Z

    .line 3289
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3290
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 216
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->g:Lfkq;

    if-nez v0, :cond_6

    .line 217
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->dismissLoadingDialog()V

    .line 218
    const-string/jumbo v0, "OrgApplyFormCustomizeEditActivity"

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "onOptionsItemSelected: model is null!"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3255
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->i:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->b()Z

    move-result v2

    .line 3257
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3258
    if-eqz v2, :cond_3

    .line 3259
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->j:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->b()Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->required:Z

    .line 3260
    iget v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->e:I

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3262
    :cond_3
    iget v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->e:I

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 3265
    :cond_4
    if-eqz v2, :cond_2

    .line 3266
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;-><init>()V

    .line 3267
    iput v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->type:I

    .line 3268
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->j:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->b()Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->required:Z

    .line 3269
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3275
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->h:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fieldKey:Ljava/lang/String;

    .line 3276
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fieldKey:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fieldName:Ljava/lang/String;

    .line 3277
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->j:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->b()Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->required:Z

    .line 3278
    iget v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->e:I

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3292
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 221
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->g:Lfkq;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->b:J

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    new-instance v4, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$4;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$4;-><init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lfkq;->a(JLcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;Lcma;)V

    goto/16 :goto_0

    .line 3253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/view/MenuItem;Z)V
    .locals 5
    .param p0, "menuItem"    # Landroid/view/MenuItem;
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 151
    if-nez p0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-interface {p0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 159
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "addString":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 162
    .local v1, "spannableString":Landroid/text/SpannableString;
    if-eqz p1, :cond_2

    .line 163
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v3, Lezg$e;->ui_common_blue1_color:I

    invoke-static {v3}, Leda;->b(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 164
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 170
    :goto_1
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 166
    :cond_2
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v3, Lezg$e;->ui_common_level3_base_color:I

    invoke-static {v3}, Leda;->b(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 167
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->j:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    return-object v0
.end method

.method private b()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 300
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    if-nez v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    .line 304
    .local v0, "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;
    if-eqz v0, :cond_1

    .line 307
    iget v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->type:I

    if-ne v3, v1, :cond_1

    .line 311
    .end local v0    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->i:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->h:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 399
    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->l:Z

    if-nez v2, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->finish()V

    .line 420
    :goto_0
    return-void

    .line 402
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 403
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v2, Lezg$l;->dt_org_apply_form_edit_confirm:I

    invoke-static {v2}, Leda;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$l;->dt_org_apply_form_edit_not_save_yet_confirm:I

    .line 404
    invoke-static {v3}, Leda;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$l;->save:I

    .line 405
    invoke-static {v3}, Leda;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$6;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$6;-><init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lezg$l;->dt_common_not_save:I

    .line 412
    invoke-static {v3}, Leda;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$5;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$5;-><init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 417
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 418
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget v0, Lezg$j;->activity_org_apply_form_customize_edit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->setContentView(I)V

    .line 83
    invoke-static {}, Lfkq;->a()Lfkq;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->g:Lfkq;

    .line 1092
    sget v0, Lezg$h;->fifv_customize_question:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->h:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    .line 1093
    sget v0, Lezg$h;->sfv_open_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->i:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    .line 1094
    sget v0, Lezg$h;->sfv_mustFill:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->j:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->i:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    new-instance v3, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$1;-><init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->setOnCheckListener(Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;)V

    .line 1109
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->j:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    new-instance v3, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$2;-><init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->setOnCheckListener(Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$a;)V

    .line 1122
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->h:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    new-instance v3, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity$3;-><init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->a(Landroid/text/TextWatcher;)V

    .line 1361
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1362
    if-nez v3, :cond_3

    .line 1363
    const-string/jumbo v0, "OrgApplyFormCustomizeEditActivity"

    const-string/jumbo v3, "initArgs: intent is null!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1364
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->finish()V

    .line 2174
    :cond_0
    :goto_0
    iget v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a:I

    if-ne v0, v9, :cond_7

    .line 2175
    sget v0, Lezg$l;->dt_org_apply_form_upload_photo_setting:I

    invoke-static {v0}, Leda;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2315
    :goto_1
    iget v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a:I

    packed-switch v0, :pswitch_data_0

    .line 2323
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->h:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 2324
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->i:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    invoke-static {v0, v10}, Lfxp;->a(Landroid/view/View;I)V

    .line 2334
    :goto_2
    iget v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a:I

    if-eqz v0, :cond_2

    .line 2338
    iget v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a:I

    if-ne v0, v1, :cond_8

    .line 2339
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    if-eqz v0, :cond_1

    .line 2340
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fieldName:Ljava/lang/String;

    .line 2341
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->h:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->setText(Ljava/lang/String;)V

    .line 2343
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->required:Z

    .line 2344
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->j:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->setChecked(Z)V

    .line 2357
    :cond_1
    :goto_3
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->l:Z

    .line 89
    :cond_2
    return-void

    .line 1367
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->g:Lfkq;

    invoke-virtual {v0}, Lfkq;->b()Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    .line 1368
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    if-nez v0, :cond_4

    .line 1369
    const-string/jumbo v0, "OrgApplyFormCustomizeEditActivity"

    const-string/jumbo v3, "initArgs: formObject is null!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1370
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->finish()V

    goto :goto_0

    .line 1373
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->c:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->orgId:J

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->b:J

    .line 1374
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->b:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 1375
    const-string/jumbo v0, "OrgApplyFormCustomizeEditActivity"

    const-string/jumbo v3, "initArgs: orgId is illegal!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1376
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->finish()V

    goto :goto_0

    .line 1380
    :cond_5
    const-string/jumbo v0, "org_apply_form_edit_mode"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a:I

    .line 1382
    const-string/jumbo v0, "org_apply_form_item_object"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    .line 1383
    iget v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    if-nez v0, :cond_6

    .line 1384
    const-string/jumbo v0, "OrgApplyFormCustomizeEditActivity"

    const-string/jumbo v3, "initArgs: itemObject is null!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1385
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->finish()V

    goto/16 :goto_0

    .line 1388
    :cond_6
    const-string/jumbo v0, "org_apply_form_item_position"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->e:I

    .line 1389
    iget v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->e:I

    if-ne v0, v8, :cond_0

    .line 1390
    const-string/jumbo v0, "OrgApplyFormCustomizeEditActivity"

    const-string/jumbo v3, "initArgs: position is null!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1391
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->finish()V

    goto/16 :goto_0

    .line 2177
    :cond_7
    sget v0, Lezg$l;->dt_org_apply_form_edit_custom_question:I

    invoke-static {v0}, Leda;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2317
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->h:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    invoke-static {v0, v10}, Lfxp;->a(Landroid/view/View;I)V

    .line 2318
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->i:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 2346
    :cond_8
    iget v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a:I

    if-ne v0, v9, :cond_1

    .line 2347
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    if-eqz v0, :cond_9

    move v0, v1

    .line 2349
    :goto_4
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->i:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->setChecked(Z)V

    .line 2350
    if-nez v0, :cond_a

    .line 2351
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->j:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->setChecked(Z)V

    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 2347
    goto :goto_4

    .line 2353
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->j:Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->d:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->required:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/control/DtSwitchFormView;->setChecked(Z)V

    goto/16 :goto_3

    .line 2315
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 183
    sget v0, Lezg$l;->save:I

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->k:Landroid/view/MenuItem;

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->k:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->k:Landroid/view/MenuItem;

    invoke-static {v0, v2}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a(Landroid/view/MenuItem;Z)V

    .line 189
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 194
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 204
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 196
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->onBackPressed()V

    .line 197
    const/4 v0, 0x0

    goto :goto_1

    .line 199
    :sswitch_1
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeEditActivity;->a()V

    goto :goto_0

    .line 194
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method
