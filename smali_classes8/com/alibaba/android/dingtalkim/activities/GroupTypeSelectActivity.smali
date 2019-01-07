.class public Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;
.super Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;
.source "GroupTypeSelectActivity.java"


# instance fields
.field private c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/lang/String;

.field private i:Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

.field private n:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

.field private o:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->m:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->j:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 327
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    .line 4222
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lctk$i;->dt_im_upgrade_to:I

    .line 4223
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_upgrade_to_private_service_group_tips_AT_AT:I

    .line 4224
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgName:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->sure:I

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)V

    .line 4225
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->cancel:I

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)V

    .line 4252
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 4256
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 48
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->n:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->k:Ljava/util/List;

    return-object p1
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 337
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ldjl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->l:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;Ljava/util/List;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    .line 5162
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5364
    invoke-static {}, Ldfm;->a()Z

    move-result v0

    .line 5166
    if-eqz v0, :cond_0

    .line 5167
    sget v0, Lctk$f;->cell_service_stub:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 5168
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 5169
    sget v1, Lctk$f;->cell_service:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 5170
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5185
    const/4 v1, 0x0

    invoke-static {}, Ldjl;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->a(II)V

    .line 48
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    .prologue
    const/4 v2, 0x0

    .line 48
    .line 6380
    invoke-static {}, Ldfm;->b()Z

    move-result v0

    .line 6190
    if-eqz v0, :cond_0

    .line 6194
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->n:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 6196
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->n:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    if-eqz v0, :cond_2

    .line 6197
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->n:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    move-object v3, v0

    .line 6204
    :goto_1
    sget v0, Lctk$f;->cell_enterprise_service_stub:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 6205
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 6206
    sget v4, Lctk$f;->cell_service:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 6207
    if-eqz v1, :cond_3

    sget v4, Lctk$i;->dt_im_group_type_dept_service:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 6208
    :goto_2
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setTitle(Ljava/lang/String;)V

    .line 6209
    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$6;

    invoke-direct {v5, p0, v4, v3}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)V

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6215
    if-eqz v1, :cond_6

    .line 7138
    invoke-static {}, Lcms;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7139
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 7140
    if-eqz v3, :cond_4

    sget v3, Lctk$e;->department_service_conv_icon_tw:I

    .line 6215
    :goto_3
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->a(II)V

    .line 6216
    sget v0, Lctk$f;->tv_cooper_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6217
    if-eqz v1, :cond_9

    sget v1, Lctk$i;->dt_im_group_type_dept_service_desc:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6201
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 6194
    goto :goto_0

    .line 6198
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->m:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    if-eqz v0, :cond_0

    .line 6199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->m:Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    move-object v3, v0

    goto :goto_1

    .line 6207
    :cond_3
    sget v4, Lctk$i;->dt_im_group_type_internal_service:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 7140
    :cond_4
    sget v3, Lctk$e;->department_service_conv_icon:I

    goto :goto_3

    .line 7142
    :cond_5
    sget v3, Lctk$e;->department_service_conv_icon_en:I

    goto :goto_3

    .line 8130
    :cond_6
    invoke-static {}, Lcms;->c()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 8131
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 8132
    if-eqz v3, :cond_7

    sget v3, Lctk$e;->enterprise_service_icon_for_session_fragment_tw:I

    goto :goto_3

    :cond_7
    sget v3, Lctk$e;->enterprise_service_icon_for_session_fragment:I

    goto :goto_3

    .line 8134
    :cond_8
    sget v3, Lctk$e;->enterprise_service_icon_for_session_fragment_en:I

    goto :goto_3

    .line 6217
    :cond_9
    sget v1, Lctk$i;->dt_im_group_type_internal_service_desc:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->a()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->b()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)V
    .locals 2
    .param p1, "mainOrg"    # Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 262
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    if-eqz p1, :cond_0

    .line 4076
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->a(J)Landroid/content/Intent;

    move-result-object v0

    .line 4077
    const-string/jumbo v1, "intent_key_group_org_owner"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4078
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 265
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->finish()V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->a(Landroid/view/View;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget v0, Lctk$g;->activity_group_type_select:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->setContentView(I)V

    .line 2107
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2108
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "cid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->h:Ljava/lang/String;

    .line 2109
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_group_tag_org_model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->i:Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;

    .line 2110
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->b:J

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->i:Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;

    if-nez v0, :cond_1

    .line 76
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "GroupTypeSelect param null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->finish()V

    .line 84
    :goto_0
    return-void

    .line 2115
    :cond_1
    sget v0, Lctk$f;->cell_org:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 2116
    sget v0, Lctk$f;->cell_cooper:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 2117
    sget v0, Lctk$f;->cell_normal:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 2119
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    const-wide/16 v2, 0x2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3, v1}, Ldjl;->b(JLjava/util/Map;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->a(II)V

    .line 2120
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    const-wide/16 v2, 0xd

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3, v1}, Ldjl;->b(JLjava/util/Map;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->a(II)V

    .line 2122
    sget v0, Lctk$f;->tv_org_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->f:Landroid/widget/TextView;

    .line 2123
    sget v0, Lctk$f;->tv_cooper_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->g:Landroid/widget/TextView;

    .line 2125
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->c:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2132
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->d:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2151
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2274
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_2

    .line 2275
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lctk$i;->dt_group_type_picker_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2277
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->i:Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;

    if-eqz v0, :cond_4

    .line 2278
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->i:Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->innerOrgIds:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->j:Ljava/util/List;

    .line 2279
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->i:Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->ownerOrgIds:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->k:Ljava/util/List;

    .line 2280
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->i:Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/models/GroupTagOrgIdsObject;->memberOrgIds:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->l:Ljava/util/List;

    .line 2281
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->a()V

    .line 2282
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->b()V

    .line 2323
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->e:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 3087
    :cond_3
    :goto_1
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->o:Landroid/content/BroadcastReceiver;

    .line 3101
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_group_type_selected"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3102
    const-string/jumbo v1, "action_group_upgrade_success"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3103
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_0

    .line 2284
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2285
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    invoke-virtual {v0}, Ldyn;->c()Ldxx;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->h:Ljava/lang/String;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$9;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v0}, Ldxx;->a(Ljava/lang/String;Lcma;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 348
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->o:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 349
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupTypeSelectActivity;->o:Landroid/content/BroadcastReceiver;

    .line 352
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupMainOrgBaseActivity;->onDestroy()V

    .line 353
    return-void
.end method
