.class public Lcom/alibaba/android/user/contact/activities/ReportActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ReportActivity.java"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Landroid/widget/ProgressBar;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:I

.field private g:Landroid/widget/EditText;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/Button;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 53
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 55
    iput v1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->a:I

    .line 57
    iput v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->b:I

    .line 65
    iput v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->f:I

    .line 77
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ReportActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ReportActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ReportActivity;I)Lfqg;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ReportActivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    .line 1259
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1261
    new-instance v1, Lfqg;

    invoke-direct {v1}, Lfqg;-><init>()V

    .line 1262
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfqg;->a:Ljava/lang/String;

    .line 1263
    const-string/jumbo v2, "report_item_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfqg;->b:Ljava/lang/String;

    .line 1264
    const-string/jumbo v2, "report_item_type"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lfqg;->c:Ljava/lang/Integer;

    .line 1265
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfqg;->f:Ljava/lang/String;

    .line 1266
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lfqg;->g:Ljava/lang/String;

    .line 1267
    iget-object v2, v1, Lfqg;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;->DING:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1268
    const-string/jumbo v2, "report_item_owner_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfqg;->d:Ljava/lang/String;

    .line 53
    :cond_0
    :goto_0
    return-object v1

    .line 1269
    :cond_1
    iget-object v0, v1, Lfqg;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;->USER:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1270
    iget-object v0, v1, Lfqg;->b:Ljava/lang/String;

    iput-object v0, v1, Lfqg;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ReportActivity;Lfqg;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ReportActivity;
    .param p1, "x1"    # Lfqg;

    .prologue
    const/4 v1, 0x0

    .line 53
    .line 1278
    if-eqz p1, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1304
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1305
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->j:Z

    .line 1306
    invoke-direct {p0, v1}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->a(Z)V

    .line 1283
    const-class v0, Lcom/alibaba/android/user/idl/services/BopsIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/BopsIService;

    .line 1284
    new-instance v1, Lcom/alibaba/android/user/contact/activities/ReportActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ReportActivity$5;-><init>(Lcom/alibaba/android/user/contact/activities/ReportActivity;)V

    .line 1298
    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/user/idl/services/BopsIService;->lippiUserReport(Lfqg;Liyv;)V

    .line 53
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "value"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 318
    if-eqz p1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 320
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 327
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 325
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/ReportActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ReportActivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->f:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/ReportActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ReportActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/ReportActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ReportActivity;

    .prologue
    const/4 v2, 0x1

    .line 53
    .line 1311
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1312
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1313
    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->j:Z

    .line 1314
    invoke-direct {p0, v2}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->a(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 175
    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->j:Z

    if-nez v2, :cond_2

    .line 176
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 177
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v2, v6, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    .line 184
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_2
    const/4 v1, 0x0

    .line 185
    .local v1, "currentCheckBox":Landroid/widget/CheckBox;
    sget v2, Lezg$h;->report_checkbox1:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    if-eq v2, v8, :cond_3

    sget v2, Lezg$h;->rl_report_reason1:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    if-ne v2, v8, :cond_9

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 187
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v2, Lezg$h;->rl_report_reason1:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v2, v6, :cond_4

    .line 188
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 190
    :cond_4
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v4

    :goto_3
    iput v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->f:I

    .line 234
    :cond_5
    :goto_4
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 235
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 236
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getId()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getId()I

    move-result v6

    if-eq v5, v6, :cond_6

    .line 237
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_7
    move v2, v4

    .line 188
    goto :goto_2

    :cond_8
    move v2, v5

    .line 190
    goto :goto_3

    .line 191
    :cond_9
    sget v2, Lezg$h;->report_checkbox2:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    if-eq v2, v8, :cond_a

    sget v2, Lezg$h;->rl_report_reason2:I

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    if-ne v2, v8, :cond_e

    .line 193
    :cond_a
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 194
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v2, Lezg$h;->rl_report_reason2:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v2, v6, :cond_b

    .line 195
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 197
    :cond_b
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v3

    :goto_7
    iput v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->f:I

    goto :goto_4

    :cond_c
    move v2, v4

    .line 195
    goto :goto_6

    :cond_d
    move v2, v5

    .line 197
    goto :goto_7

    .line 198
    :cond_e
    sget v2, Lezg$h;->report_checkbox3:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    if-eq v2, v8, :cond_f

    sget v2, Lezg$h;->rl_report_reason3:I

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    if-ne v2, v8, :cond_13

    .line 200
    :cond_f
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 201
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v2, Lezg$h;->rl_report_reason3:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v2, v7, :cond_10

    .line 202
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_11

    move v2, v3

    :goto_8
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 204
    :cond_10
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v6

    :goto_9
    iput v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->f:I

    goto/16 :goto_4

    :cond_11
    move v2, v4

    .line 202
    goto :goto_8

    :cond_12
    move v2, v5

    .line 204
    goto :goto_9

    .line 205
    :cond_13
    sget v2, Lezg$h;->report_checkbox4:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v2, v6, :cond_14

    sget v2, Lezg$h;->rl_report_reason4:I

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v2, v6, :cond_18

    .line 207
    :cond_14
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 208
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v2, Lezg$h;->rl_report_reason4:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v2, v6, :cond_15

    .line 209
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_16

    move v2, v3

    :goto_a
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 211
    :cond_15
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v7

    :goto_b
    iput v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->f:I

    goto/16 :goto_4

    :cond_16
    move v2, v4

    .line 209
    goto :goto_a

    :cond_17
    move v2, v5

    .line 211
    goto :goto_b

    .line 212
    :cond_18
    sget v2, Lezg$h;->report_checkbox5:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v2, v6, :cond_19

    sget v2, Lezg$h;->rl_report_reason5:I

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v2, v6, :cond_1d

    .line 214
    :cond_19
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d:Ljava/util/List;

    const/4 v6, 0x4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 215
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v2, Lezg$h;->rl_report_reason5:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v2, v6, :cond_1a

    .line 216
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1b

    move v2, v3

    :goto_c
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    :cond_1a
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x4

    :goto_d
    iput v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->f:I

    goto/16 :goto_4

    :cond_1b
    move v2, v4

    .line 216
    goto :goto_c

    :cond_1c
    move v2, v5

    .line 218
    goto :goto_d

    .line 219
    :cond_1d
    sget v2, Lezg$h;->report_checkbox6:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v2, v6, :cond_1e

    sget v2, Lezg$h;->rl_report_reason6:I

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v2, v6, :cond_22

    .line 221
    :cond_1e
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d:Ljava/util/List;

    const/4 v6, 0x5

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 222
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v2, Lezg$h;->rl_report_reason6:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v2, v6, :cond_1f

    .line 223
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_20

    move v2, v3

    :goto_e
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 225
    :cond_1f
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x5

    :goto_f
    iput v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->f:I

    goto/16 :goto_4

    :cond_20
    move v2, v4

    .line 223
    goto :goto_e

    :cond_21
    move v2, v5

    .line 225
    goto :goto_f

    .line 226
    :cond_22
    sget v2, Lezg$h;->report_checkbox7:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v2, v6, :cond_23

    sget v2, Lezg$h;->rl_report_reason7:I

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v2, v6, :cond_5

    .line 228
    :cond_23
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d:Ljava/util/List;

    const/4 v6, 0x6

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 229
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v2, Lezg$h;->rl_report_reason7:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v2, v6, :cond_24

    .line 230
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_25

    move v2, v3

    :goto_10
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 232
    :cond_24
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x6

    :goto_11
    iput v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->f:I

    goto/16 :goto_4

    :cond_25
    move v2, v4

    .line 230
    goto :goto_10

    :cond_26
    move v2, v5

    .line 232
    goto :goto_11

    .line 240
    :cond_27
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->i:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 245
    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    :cond_28
    :goto_12
    return-void

    .line 241
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    :cond_29
    if-eqz v1, :cond_28

    .line 242
    iput v5, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->f:I

    .line 243
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->i:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_12
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    sget v0, Lezg$j;->activity_report:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->setContentView(I)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->report_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 85
    iput-object p0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->e:Landroid/content/Context;

    .line 87
    sget v0, Lezg$h;->pb_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->c:Landroid/widget/ProgressBar;

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d:Ljava/util/List;

    .line 1102
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d:Ljava/util/List;

    sget v0, Lezg$h;->report_checkbox1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1103
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d:Ljava/util/List;

    sget v0, Lezg$h;->report_checkbox2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d:Ljava/util/List;

    sget v0, Lezg$h;->report_checkbox3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d:Ljava/util/List;

    sget v0, Lezg$h;->report_checkbox4:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1106
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d:Ljava/util/List;

    sget v0, Lezg$h;->report_checkbox5:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1107
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d:Ljava/util/List;

    sget v0, Lezg$h;->report_checkbox6:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->d:Ljava/util/List;

    sget v0, Lezg$h;->report_checkbox7:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1113
    sget v0, Lezg$h;->et_add:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->g:Landroid/widget/EditText;

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/ReportActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ReportActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/ReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1133
    sget v0, Lezg$h;->rl_add:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/activities/ReportActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ReportActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/ReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->actbar_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->h:Landroid/view/View;

    .line 1144
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->h:Landroid/view/View;

    sget v1, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->i:Landroid/widget/Button;

    .line 1145
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1146
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->i:Landroid/widget/Button;

    sget v1, Lezg$l;->sure:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->i:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/ReportActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ReportActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/ReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1163
    sget v0, Lezg$h;->sv_report:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 1164
    new-instance v1, Lcom/alibaba/android/user/contact/activities/ReportActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ReportActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/ReportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 249
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->h:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 250
    const/4 v1, 0x1

    sget v2, Lezg$l;->sure:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 251
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ReportActivity;->h:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 252
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 254
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method
