.class public Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "EditExtFieldActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/external/ExternalEditContract$c;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/alibaba/android/user/model/OrgExtFieldObject;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private d:Landroid/widget/ToggleButton;

.field private e:Landroid/widget/Button;

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/alibaba/android/user/external/ExternalEditContract$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;

    .prologue
    const/4 v4, 0x2

    .line 44
    .line 2147
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2151
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->b:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-nez v0, :cond_0

    .line 2152
    new-instance v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgExtFieldObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->b:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 2154
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->b:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    .line 2155
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->b:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    .line 2156
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->b:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-wide v2, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->f:J

    iput-wide v2, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->orgId:J

    .line 2158
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->showLoadingDialog()V

    .line 2160
    iget-boolean v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->h:Z

    if-eqz v0, :cond_2

    .line 2161
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->j:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->b:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    invoke-interface {v0, v4, v1}, Lcom/alibaba/android/user/external/ExternalEditContract$b;->b(ILcom/alibaba/android/user/model/OrgExtFieldObject;)V

    :cond_1
    :goto_0
    return-void

    .line 2163
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->j:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->b:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    invoke-interface {v0, v4, v1}, Lcom/alibaba/android/user/external/ExternalEditContract$b;->a(ILcom/alibaba/android/user/model/OrgExtFieldObject;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->g()V

    return-void
.end method

.method private c(Lcom/alibaba/android/user/model/OrgExtFieldObject;)V
    .locals 2
    .param p1, "result"    # Lcom/alibaba/android/user/model/OrgExtFieldObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_org_ext_field_object"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 170
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->finish()V

    .line 172
    return-void
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 139
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->dismissLoadingDialog()V

    .line 222
    return-void
.end method

.method public final a(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 197
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;)V
    .locals 0
    .param p1, "contactFieldsObject"    # Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    .prologue
    .line 187
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/model/OrgExtFieldObject;)V
    .locals 0
    .param p1, "fieldObject"    # Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->c(Lcom/alibaba/android/user/model/OrgExtFieldObject;)V

    .line 202
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->showLoadingDialog()V

    .line 217
    return-void
.end method

.method public final b(Lcom/alibaba/android/user/model/OrgExtFieldObject;)V
    .locals 0
    .param p1, "fieldObject"    # Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->c(Lcom/alibaba/android/user/model/OrgExtFieldObject;)V

    .line 207
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 231
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lezg$j;->activity_external_add_field:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_org_ext_field_object"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->b:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_default_org_ext_field_object"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->g:Z

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->f:J

    .line 66
    iget-wide v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 67
    new-instance v0, Lfno;

    iget-wide v2, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->f:J

    invoke-direct {v0, p0, v2, v3, p0}, Lfno;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;JLcom/alibaba/android/user/external/ExternalEditContract$c;)V

    .line 1077
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->actbar_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->a:Landroid/view/View;

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->a:Landroid/view/View;

    sget v1, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->e:Landroid/widget/Button;

    .line 1079
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->e:Landroid/widget/Button;

    sget v1, Lezg$l;->save:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity$1;-><init>(Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1087
    sget v0, Lezg$h;->field_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 1088
    sget v0, Lezg$h;->field_required_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_toggle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->d:Landroid/widget/ToggleButton;

    .line 1089
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->b:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v0, :cond_2

    .line 1090
    sget v0, Lezg$l;->dt_external_title_edit_field:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->setTitle(I)V

    .line 1091
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->b:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->d:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->b:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v1, v1, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1094
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->h:Z

    .line 1100
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->g:Z

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setEnabled(Z)V

    .line 1102
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setGravity(I)V

    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->uidic_global_color_c11_9:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setTextColor(I)V

    .line 1104
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setClearAble(Z)V

    .line 1105
    sget v0, Lezg$h;->tv_default_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity$2;-><init>(Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1126
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->d:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity$3;-><init>(Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1134
    invoke-direct {p0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->g()V

    .line 74
    :goto_1
    return-void

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->finish()V

    goto :goto_1

    .line 1096
    :cond_2
    sget v0, Lezg$l;->dt_external_title_add_field:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->setTitle(I)V

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 177
    const/4 v1, 0x1

    sget v2, Lezg$l;->save:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 178
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 179
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 181
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lcom/alibaba/android/user/external/ExternalEditContract$b;

    .line 1211
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;->j:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    .line 44
    return-void
.end method
