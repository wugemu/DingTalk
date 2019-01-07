.class public Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "OrgApplyFormCustomizePreviewActivity.java"

# interfaces
.implements Lfko$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$TopLabelTextView;
    }
.end annotation


# instance fields
.field private a:Lfko$a;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->k:J

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->m:Z

    .line 333
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 131
    const-string/jumbo v0, "preference_key_customize_menu_item_tips_clicked"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpl;->a(Ljava/lang/String;Z)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;

    .prologue
    .line 42
    .line 3140
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->k:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3141
    const-string/jumbo v0, "OrgApplyFormCustomizePreviewActivity"

    const-string/jumbo v1, "OrgApplyFormCustomizePreviewActivity.nav2Add2OrgActivity: unknown error!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3142
    :goto_0
    return-void

    .line 3144
    :cond_0
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/add_2_org.html"

    new-instance v2, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$3;-><init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 3153
    const-string/jumbo v0, "invite_new_members_enter"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->a()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->k:J

    return-wide v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->dismissLoadingDialog()V

    .line 312
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;)V
    .locals 11
    .param p1, "formObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 234
    const-string/jumbo v3, "OrgApplyFormCustomizePreviewActivity"

    const-string/jumbo v7, "setForm: Get in setForm method."

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v3, v7, v8}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    if-nez p1, :cond_0

    .line 236
    const-string/jumbo v3, "OrgApplyFormCustomizePreviewActivity"

    const-string/jumbo v5, "setForm: FormObject is null!"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    if-nez v3, :cond_1

    .line 240
    const-string/jumbo v3, "OrgApplyFormCustomizePreviewActivity"

    const-string/jumbo v5, "setForm: FormObject.items is null!"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 243
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->j:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    .line 245
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->b:Landroid/view/View;

    invoke-static {v3, v5}, Lfxp;->a(Landroid/view/View;I)V

    .line 247
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 248
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->g:Landroid/view/View;

    invoke-static {v3, v5}, Lfxp;->a(Landroid/view/View;I)V

    .line 254
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 255
    const/4 v2, 0x0

    .line 256
    .local v2, "lastTextView":Landroid/view/View;
    iput-boolean v4, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->m:Z

    .line 257
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->h:Landroid/view/View;

    invoke-static {v3, v5}, Lfxp;->a(Landroid/view/View;I)V

    .line 258
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    .line 259
    .local v0, "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;
    if-eqz v0, :cond_2

    .line 262
    iget v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->type:I

    if-nez v3, :cond_7

    .line 2284
    if-nez v0, :cond_4

    .line 2285
    const-string/jumbo v3, "OrgApplyFormCustomizePreviewActivity"

    const-string/jumbo v8, "createTextItemView: ItemObject is null!"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v3, v8, v9}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v6

    .line 264
    :goto_3
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 250
    .end local v0    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;
    .end local v2    # "lastTextView":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->g:Landroid/view/View;

    invoke-static {v3, v4}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 2288
    .restart local v0    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;
    .restart local v2    # "lastTextView":Landroid/view/View;
    :cond_4
    iget v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->type:I

    if-eqz v3, :cond_5

    .line 2289
    const-string/jumbo v3, "OrgApplyFormCustomizePreviewActivity"

    const-string/jumbo v8, "createTextItemView: ItemObject\'s type is not correct!"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v3, v8, v9}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v6

    .line 2290
    goto :goto_3

    .line 2292
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v8, Lezg$j;->item_org_apply_form_preview_customize_list:I

    iget-object v9, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8, v9, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 2293
    .end local v2    # "lastTextView":Landroid/view/View;
    sget v3, Lezg$h;->if_must_fill:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->required:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_4
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2294
    sget v3, Lezg$h;->tv_key:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fieldName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    move v3, v5

    .line 2293
    goto :goto_4

    .line 265
    .restart local v2    # "lastTextView":Landroid/view/View;
    :cond_7
    iget v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->type:I

    if-ne v3, v10, :cond_2

    .line 266
    iput-boolean v10, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->m:Z

    .line 267
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->h:Landroid/view/View;

    invoke-static {v3, v4}, Lfxp;->a(Landroid/view/View;I)V

    .line 268
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->h:Landroid/view/View;

    sget v8, Lezg$h;->if_must_fill:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->required:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_5
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    move v3, v5

    goto :goto_5

    .line 271
    .end local v0    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;
    :cond_9
    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->m:Z

    if-nez v3, :cond_b

    .line 272
    if-eqz v2, :cond_a

    .line 273
    sget v3, Lezg$h;->v_divider:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 274
    .local v1, "lastItemDivider":Landroid/view/View;
    if-eqz v1, :cond_a

    .line 275
    invoke-static {v1, v5}, Lfxp;->a(Landroid/view/View;I)V

    .line 278
    .end local v1    # "lastItemDivider":Landroid/view/View;
    :cond_a
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->h:Landroid/view/View;

    invoke-static {v3, v5}, Lfxp;->a(Landroid/view/View;I)V

    .line 280
    :cond_b
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->b:Landroid/view/View;

    invoke-static {v3, v4}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->showLoadingDialog()V

    .line 307
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 321
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 174
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 175
    if-ne p1, v0, :cond_1

    if-ne p2, v0, :cond_1

    .line 176
    const-string/jumbo v0, "OrgApplyFormCustomizePreviewActivity"

    const-string/jumbo v1, "onActivityResult: Get activity result, going in regular block."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->a:Lfko$a;

    if-nez v0, :cond_0

    .line 178
    const-string/jumbo v0, "OrgApplyFormCustomizePreviewActivity"

    const-string/jumbo v1, "initArgs: Presenter is null!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->a:Lfko$a;

    invoke-interface {v0}, Lfko$a;->a()V

    goto :goto_0

    .line 183
    :cond_1
    const-string/jumbo v0, "OrgApplyFormCustomizePreviewActivity"

    const-string/jumbo v1, "onActivityResult: Come from illegal direction!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, -0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget v0, Lezg$j;->activity_org_apply_form_preview:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->setContentView(I)V

    .line 75
    sget v0, Lezg$l;->dt_org_apply_form_custom:I

    invoke-static {v0}, Leda;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v0, Lfkp;

    invoke-direct {v0, p0}, Lfkp;-><init>(Lfko$b;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->a:Lfko$a;

    .line 1188
    sget v0, Lezg$h;->rl_root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->b:Landroid/view/View;

    .line 1189
    sget v0, Lezg$h;->cell_phone_number:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->e:Landroid/view/View;

    .line 1190
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->e:Landroid/view/View;

    sget v1, Lezg$h;->if_must_fill:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lfxp;->a(Landroid/view/View;I)V

    .line 1191
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->e:Landroid/view/View;

    sget v1, Lezg$h;->tv_key:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_org_apply_form_phone_number:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1192
    sget v0, Lezg$h;->cell_real_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->f:Landroid/view/View;

    .line 1193
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->f:Landroid/view/View;

    sget v1, Lezg$h;->if_must_fill:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lfxp;->a(Landroid/view/View;I)V

    .line 1194
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->f:Landroid/view/View;

    sget v1, Lezg$h;->tv_key:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_org_apply_form_real_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    sget v0, Lezg$h;->ll_items:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->c:Landroid/widget/LinearLayout;

    .line 1196
    sget v0, Lezg$h;->atv_org_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->d:Landroid/widget/TextView;

    .line 1197
    sget v0, Lezg$h;->v_divider_above_items:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->g:Landroid/view/View;

    .line 1198
    sget v0, Lezg$h;->rl_image_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->h:Landroid/view/View;

    .line 1199
    sget v0, Lezg$h;->btn_invite:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->i:Landroid/view/View;

    .line 1200
    sget v0, Lezg$h;->pp_customize_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->n:Landroid/view/View;

    .line 1203
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->b:Landroid/view/View;

    invoke-static {v0, v5}, Lfxp;->a(Landroid/view/View;I)V

    .line 1207
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1208
    if-nez v0, :cond_0

    .line 1209
    const-string/jumbo v0, "OrgApplyFormCustomizePreviewActivity"

    const-string/jumbo v1, "initArgs: Intent is null!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1210
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->finish()V

    .line 2108
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->i:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$1;-><init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2114
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->n:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity$2;-><init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2123
    const-string/jumbo v0, "preference_key_customize_menu_item_tips_clicked"

    invoke-static {v0, v4}, Lcpl;->c(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2124
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->a:Lfko$a;

    if-nez v0, :cond_4

    .line 85
    const-string/jumbo v0, "OrgApplyFormCustomizePreviewActivity"

    const-string/jumbo v1, "initArgs: Presenter is null!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :goto_2
    return-void

    .line 1213
    :cond_0
    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->k:J

    .line 1214
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->k:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    .line 1215
    const-string/jumbo v0, "OrgApplyFormCustomizePreviewActivity"

    const-string/jumbo v1, "initArgs: OrgId is illegal!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1216
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->finish()V

    goto :goto_0

    .line 1219
    :cond_1
    const-string/jumbo v1, "org_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->l:Ljava/lang/String;

    .line 1220
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1221
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->l:Ljava/lang/String;

    .line 1224
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2126
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->a:Lfko$a;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->k:J

    invoke-interface {v0, v2, v3}, Lfko$a;->a(J)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 93
    sget v1, Lezg$l;->dt_org_apply_form_customize:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 94
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 95
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->a:Lfko$a;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->a:Lfko$a;

    invoke-interface {v0}, Lfko$a;->i()V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->a:Lfko$a;

    .line 330
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 331
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->a()V

    .line 2157
    const-string/jumbo v0, "OrgApplyFormCustomizePreviewActivity"

    const-string/jumbo v1, "initClick: mInviteButton.onClick: Clicked."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2159
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->k:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2160
    const-string/jumbo v0, "OrgApplyFormCustomizePreviewActivity"

    const-string/jumbo v1, "initClick: mInviteButton.onClick: OrgId is not available!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 2163
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->j:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    if-nez v0, :cond_2

    .line 2164
    const-string/jumbo v0, "OrgApplyFormCustomizePreviewActivity"

    const-string/jumbo v1, "initClick: mInviteButton.onClick: FormObject is null!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2168
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2169
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 42
    check-cast p1, Lfko$a;

    .line 2301
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizePreviewActivity;->a:Lfko$a;

    .line 42
    return-void
.end method
