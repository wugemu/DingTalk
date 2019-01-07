.class public Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "OrgApplyFormCustomizeActivity.java"

# interfaces
.implements Lfko$b;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lfko$a;

.field private e:J

.field private f:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->e:J

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)Z
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    .prologue
    const/4 v1, 0x1

    .line 38
    .line 4120
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4121
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    .line 4123
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    .line 4124
    if-eqz v0, :cond_1

    .line 4127
    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->type:I

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 4128
    :goto_0
    return v0

    .line 4131
    :cond_2
    const/4 v0, 0x0

    .line 38
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)Lfko$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->d:Lfko$a;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->e:J

    return-wide v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->dismissLoadingDialog()V

    .line 305
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;)V
    .locals 13
    .param p1, "formObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x3

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 166
    const-string/jumbo v5, "OrgApplyFormCustomizeActivity"

    const-string/jumbo v6, "setForm: Get in setForm method."

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v8}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    if-nez p1, :cond_0

    .line 168
    const-string/jumbo v5, "OrgApplyFormCustomizeActivity"

    const-string/jumbo v6, "setForm: FormObject is null!"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    if-nez v5, :cond_1

    .line 172
    const-string/jumbo v5, "OrgApplyFormCustomizeActivity"

    const-string/jumbo v6, "setForm: FormObject.items is null!"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 177
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    .line 179
    const/4 v4, 0x0

    .line 180
    .local v4, "openImage":Z
    const/4 v2, 0x0

    .line 181
    .local v2, "imageRequired":Z
    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;

    .line 182
    .local v3, "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;
    if-eqz v3, :cond_2

    .line 185
    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->type:I

    if-nez v5, :cond_6

    .line 186
    iget-object v9, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->a:Landroid/widget/LinearLayout;

    .line 2221
    if-eqz v3, :cond_3

    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->type:I

    if-eqz v5, :cond_4

    .line 2222
    :cond_3
    const/4 v5, 0x0

    .line 186
    :goto_2
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 2224
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lezg$j;->item_org_apply_form_customize_question:I

    iget-object v10, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v10, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 2225
    sget v5, Lezg$h;->ic_add_or_remove:I

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 2226
    sget v10, Lezg$e;->ui_common_red1_color:I

    invoke-static {v10}, Leda;->b(I)I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 2227
    sget v10, Lezg$l;->icon_roundreduce_fill:I

    invoke-static {v10}, Leda;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2228
    new-instance v10, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;

    invoke-direct {v10, p0, v3}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$3;-><init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;)V

    invoke-virtual {v5, v10}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2254
    sget v5, Lezg$h;->tv_label:I

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->fieldName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2255
    sget v5, Lezg$h;->tag:I

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2256
    sget v10, Lezg$l;->dt_org_apply_form_required_tag:I

    invoke-static {v10}, Leda;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2257
    iget-boolean v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->required:Z

    if-nez v10, :cond_5

    .line 2258
    invoke-static {v5, v12}, Lfxp;->a(Landroid/view/View;I)V

    .line 2262
    :goto_3
    new-instance v5, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$4;

    invoke-direct {v5, p0, v3, v6}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$4;-><init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;Landroid/view/View;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v5, v6

    .line 2274
    goto :goto_2

    .line 2260
    :cond_5
    invoke-static {v5, v7}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_3

    .line 187
    :cond_6
    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->type:I

    if-ne v5, v1, :cond_2

    .line 188
    const/4 v4, 0x1

    .line 189
    iget-boolean v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;->required:Z

    goto/16 :goto_1

    .line 3204
    .end local v3    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgFormItemObject;
    :cond_7
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->c:Landroid/view/View;

    sget v6, Lezg$h;->tag_image_cell:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;

    .line 3205
    if-eqz v4, :cond_9

    if-eqz v2, :cond_9

    .line 3207
    sget v6, Lezg$l;->dt_org_apply_form_required_tag:I

    invoke-static {v6}, Leda;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->setText(Ljava/lang/CharSequence;)V

    .line 3208
    new-instance v6, Ledp;

    new-instance v8, Ledu;

    invoke-direct {v8}, Ledu;-><init>()V

    new-instance v9, Ledr;

    invoke-direct {v9}, Ledr;-><init>()V

    invoke-direct {v6, v8, v9}, Ledp;-><init>(Ledq;Ledo;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->setStyle(Ledp;)V

    .line 194
    :goto_4
    if-eqz v4, :cond_b

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v5, v11, :cond_b

    move v0, v1

    .line 195
    .local v0, "case1":Z
    :goto_5
    if-nez v4, :cond_c

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v11, :cond_c

    .line 196
    .local v1, "case2":Z
    :goto_6
    if-nez v0, :cond_8

    if-eqz v1, :cond_d

    .line 197
    :cond_8
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->b:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 3209
    .end local v0    # "case1":Z
    .end local v1    # "case2":Z
    :cond_9
    if-eqz v4, :cond_a

    .line 3211
    sget v6, Lezg$l;->dt_org_apply_form_open_tag:I

    invoke-static {v6}, Leda;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->setText(Ljava/lang/CharSequence;)V

    .line 3212
    new-instance v6, Ledp;

    new-instance v8, Ledw;

    invoke-direct {v8}, Ledw;-><init>()V

    new-instance v9, Ledr;

    invoke-direct {v9}, Ledr;-><init>()V

    invoke-direct {v6, v8, v9}, Ledp;-><init>(Ledq;Ledo;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->setStyle(Ledp;)V

    goto :goto_4

    .line 3215
    :cond_a
    sget v6, Lezg$l;->dt_org_apply_form_closed_tag:I

    invoke-static {v6}, Leda;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->setText(Ljava/lang/CharSequence;)V

    .line 3216
    new-instance v6, Ledp;

    new-instance v8, Ledv;

    invoke-direct {v8}, Ledv;-><init>()V

    new-instance v9, Ledr;

    invoke-direct {v9}, Ledr;-><init>()V

    invoke-direct {v6, v8, v9}, Ledp;-><init>(Ledq;Ledo;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->setStyle(Ledp;)V

    goto :goto_4

    :cond_b
    move v0, v7

    .line 194
    goto :goto_5

    .restart local v0    # "case1":Z
    :cond_c
    move v1, v7

    .line 195
    goto :goto_6

    .line 199
    .restart local v1    # "case2":Z
    :cond_d
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->b:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 309
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->showLoadingDialog()V

    .line 300
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 314
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

    .line 279
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 280
    if-ne p1, v0, :cond_1

    if-ne p2, v0, :cond_1

    .line 281
    const-string/jumbo v0, "OrgApplyFormCustomizeActivity"

    const-string/jumbo v1, "onActivityResult: Get activity result, going in regular block."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->d:Lfko$a;

    if-nez v0, :cond_0

    .line 283
    const-string/jumbo v0, "OrgApplyFormCustomizeActivity"

    const-string/jumbo v1, "initArgs: Presenter is null!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->d:Lfko$a;

    invoke-interface {v0}, Lfko$a;->a()V

    goto :goto_0

    .line 288
    :cond_1
    const-string/jumbo v0, "OrgApplyFormCustomizeActivity"

    const-string/jumbo v1, "onActivityResult: Come from illegal direction!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->setResult(I)V

    .line 329
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    .line 330
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget v0, Lezg$j;->activity_org_apply_form_customize:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->setContentView(I)V

    .line 63
    sget v0, Lezg$l;->dt_org_apply_form_editing:I

    invoke-static {v0}, Leda;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v0, Lfkp;

    invoke-direct {v0, p0}, Lfkp;-><init>(Lfko$b;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->d:Lfko$a;

    .line 1099
    sget v0, Lezg$h;->ll_customize_question:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->a:Landroid/widget/LinearLayout;

    .line 1100
    sget v0, Lezg$h;->cell_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->c:Landroid/view/View;

    .line 1102
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->c:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$1;-><init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1147
    sget v0, Lezg$h;->v_add_cell:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->b:Landroid/view/View;

    .line 1148
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->b:Landroid/view/View;

    sget v1, Lezg$h;->ic_add_or_remove:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1149
    sget v1, Lezg$e;->ui_common_green1_color:I

    invoke-static {v1}, Leda;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1150
    sget v1, Lezg$l;->icon_addnew_fill:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->b:Landroid/view/View;

    sget v1, Lezg$h;->tv_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_org_apply_form_adding_custom_questions:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->b:Landroid/view/View;

    sget v1, Lezg$h;->tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->b:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity$2;-><init>(Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2073
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2074
    if-nez v0, :cond_1

    .line 2075
    const-string/jumbo v0, "OrgApplyFormCustomizeActivity"

    const-string/jumbo v1, "initArgs: Intent is null!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2076
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->finish()V

    .line 69
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;)V

    .line 70
    return-void

    .line 2079
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->d:Lfko$a;

    if-nez v0, :cond_2

    .line 2080
    const-string/jumbo v0, "OrgApplyFormCustomizeActivity"

    const-string/jumbo v1, "initArgs: Presenter is null!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2081
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->finish()V

    goto :goto_0

    .line 2084
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->d:Lfko$a;

    invoke-interface {v0}, Lfko$a;->b()Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    .line 2085
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    if-nez v0, :cond_3

    .line 2086
    const-string/jumbo v0, "OrgApplyFormCustomizeActivity"

    const-string/jumbo v1, "initArgs: FormObject is null!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2087
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->finish()V

    goto :goto_0

    .line 2090
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgFormObject;->orgId:J

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->e:J

    .line 2091
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2092
    const-string/jumbo v0, "OrgApplyFormCustomizeActivity"

    const-string/jumbo v1, "initArgs: OrgId is illegal!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2093
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->d:Lfko$a;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->d:Lfko$a;

    invoke-interface {v0}, Lfko$a;->i()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->d:Lfko$a;

    .line 323
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 324
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 136
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 138
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->onBackPressed()V

    .line 139
    const/4 v0, 0x0

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lfko$a;

    .line 3294
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgapply/OrgApplyFormCustomizeActivity;->d:Lfko$a;

    .line 38
    return-void
.end method
