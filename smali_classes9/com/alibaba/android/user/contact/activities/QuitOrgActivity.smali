.class public Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "QuitOrgActivity.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/widget/EditText;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/Button;

.field private f:J

.field private final g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 158
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->g:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;

    .prologue
    .line 35
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->b:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->f:J

    return-wide v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "currentCheckBox":Landroid/widget/CheckBox;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 97
    .local v2, "id":I
    sget v3, Lezg$h;->checkbox1:I

    if-eq v3, v2, :cond_0

    sget v3, Lezg$h;->rl_reason1:I

    if-ne v3, v2, :cond_6

    .line 98
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->a:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 99
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v3, Lezg$h;->rl_reason1:I

    if-ne v3, v2, :cond_1

    .line 100
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 102
    :cond_1
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x14

    :goto_1
    iput v3, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->b:I

    .line 140
    :cond_2
    :goto_2
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 141
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 142
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getId()I

    move-result v6

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getId()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 143
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_4
    move v3, v5

    .line 100
    goto :goto_0

    :cond_5
    move v3, v5

    .line 102
    goto :goto_1

    .line 103
    :cond_6
    sget v3, Lezg$h;->checkbox2:I

    if-eq v3, v2, :cond_7

    sget v3, Lezg$h;->rl_reason2:I

    if-ne v3, v2, :cond_b

    .line 104
    :cond_7
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->a:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 105
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v3, Lezg$h;->rl_reason2:I

    if-ne v3, v2, :cond_8

    .line 106
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v4

    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 108
    :cond_8
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x15

    :goto_5
    iput v3, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->b:I

    goto :goto_2

    :cond_9
    move v3, v5

    .line 106
    goto :goto_4

    :cond_a
    move v3, v5

    .line 108
    goto :goto_5

    .line 109
    :cond_b
    sget v3, Lezg$h;->checkbox3:I

    if-eq v3, v2, :cond_c

    sget v3, Lezg$h;->rl_reason3:I

    if-ne v3, v2, :cond_10

    .line 110
    :cond_c
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->a:Ljava/util/List;

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 111
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v3, Lezg$h;->rl_reason3:I

    if-ne v3, v2, :cond_d

    .line 112
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_e

    move v3, v4

    :goto_6
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 114
    :cond_d
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v3, 0x16

    :goto_7
    iput v3, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->b:I

    goto/16 :goto_2

    :cond_e
    move v3, v5

    .line 112
    goto :goto_6

    :cond_f
    move v3, v5

    .line 114
    goto :goto_7

    .line 115
    :cond_10
    sget v3, Lezg$h;->checkbox4:I

    if-eq v3, v2, :cond_11

    sget v3, Lezg$h;->rl_reason4:I

    if-ne v3, v2, :cond_15

    .line 116
    :cond_11
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->a:Ljava/util/List;

    const/4 v6, 0x3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 117
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v3, Lezg$h;->rl_reason4:I

    if-ne v3, v2, :cond_12

    .line 118
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_13

    move v3, v4

    :goto_8
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 120
    :cond_12
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v3, 0x17

    :goto_9
    iput v3, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->b:I

    goto/16 :goto_2

    :cond_13
    move v3, v5

    .line 118
    goto :goto_8

    :cond_14
    move v3, v5

    .line 120
    goto :goto_9

    .line 121
    :cond_15
    sget v3, Lezg$h;->checkbox5:I

    if-eq v3, v2, :cond_16

    sget v3, Lezg$h;->rl_reason5:I

    if-ne v3, v2, :cond_1a

    .line 122
    :cond_16
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->a:Ljava/util/List;

    const/4 v6, 0x4

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 123
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v3, Lezg$h;->rl_reason5:I

    if-ne v3, v2, :cond_17

    .line 124
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_18

    move v3, v4

    :goto_a
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    :cond_17
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_19

    const/16 v3, 0x18

    :goto_b
    iput v3, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->b:I

    goto/16 :goto_2

    :cond_18
    move v3, v5

    .line 124
    goto :goto_a

    :cond_19
    move v3, v5

    .line 126
    goto :goto_b

    .line 127
    :cond_1a
    sget v3, Lezg$h;->checkbox6:I

    if-eq v3, v2, :cond_1b

    sget v3, Lezg$h;->rl_reason6:I

    if-ne v3, v2, :cond_1f

    .line 128
    :cond_1b
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->a:Ljava/util/List;

    const/4 v6, 0x5

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 129
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v3, Lezg$h;->rl_reason6:I

    if-ne v3, v2, :cond_1c

    .line 130
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1d

    move v3, v4

    :goto_c
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 132
    :cond_1c
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/16 v3, 0x19

    :goto_d
    iput v3, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->b:I

    goto/16 :goto_2

    :cond_1d
    move v3, v5

    .line 130
    goto :goto_c

    :cond_1e
    move v3, v5

    .line 132
    goto :goto_d

    .line 133
    :cond_1f
    sget v3, Lezg$h;->checkbox7:I

    if-eq v3, v2, :cond_20

    sget v3, Lezg$h;->rl_reason7:I

    if-ne v3, v2, :cond_2

    .line 134
    :cond_20
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->a:Ljava/util/List;

    const/4 v6, 0x6

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 135
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v3, Lezg$h;->rl_reason7:I

    if-ne v3, v2, :cond_21

    .line 136
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_22

    move v3, v4

    :goto_e
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 138
    :cond_21
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_23

    const/16 v3, 0x1a

    :goto_f
    iput v3, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->b:I

    goto/16 :goto_2

    :cond_22
    move v3, v5

    .line 136
    goto :goto_e

    :cond_23
    move v3, v5

    .line 138
    goto :goto_f

    .line 146
    :cond_24
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->e:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    :cond_25
    :goto_10
    return-void

    .line 147
    :cond_26
    if-eqz v1, :cond_25

    .line 148
    iput v5, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->b:I

    .line 149
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->e:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_10
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v0, Lezg$j;->activity_quit_org:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->setContentView(I)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->quit_org_enterprise:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "display_enterprise_oid"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->f:J

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->a:Ljava/util/List;

    .line 58
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->a:Ljava/util/List;

    sget v0, Lezg$h;->checkbox1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->a:Ljava/util/List;

    sget v0, Lezg$h;->checkbox2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->a:Ljava/util/List;

    sget v0, Lezg$h;->checkbox3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->a:Ljava/util/List;

    sget v0, Lezg$h;->checkbox4:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->a:Ljava/util/List;

    sget v0, Lezg$h;->checkbox5:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->a:Ljava/util/List;

    sget v0, Lezg$h;->checkbox6:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->a:Ljava/util/List;

    sget v0, Lezg$h;->checkbox7:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget v0, Lezg$h;->et_add:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->c:Landroid/widget/EditText;

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    sget v0, Lezg$h;->rl_add:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1161
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->actbar_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->d:Landroid/view/View;

    .line 1162
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->d:Landroid/view/View;

    sget v1, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->e:Landroid/widget/Button;

    .line 1163
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1164
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->e:Landroid/widget/Button;

    sget v1, Lezg$l;->sure:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
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

    .line 215
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 216
    const/4 v1, 0x1

    sget v2, Lezg$l;->sure:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 217
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/QuitOrgActivity;->d:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 218
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 220
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
