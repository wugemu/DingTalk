.class public Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "DisbandOrgActivity.java"


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

.field private f:Landroid/widget/ImageView;

.field private g:J

.field private final h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 214
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->h:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->g:J

    return-wide v0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;

    .prologue
    .line 35
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->b:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, "currentCheckBox":Landroid/widget/CheckBox;
    sget v2, Lezg$h;->checkbox1:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v2, v5, :cond_0

    sget v2, Lezg$h;->rl_reason1:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v2, v5, :cond_8

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->a:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 109
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v2, Lezg$h;->rl_reason1:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v2, v5, :cond_1

    .line 110
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 112
    :cond_1
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x32

    :goto_1
    iput v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->b:I

    .line 114
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2177
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->f:Landroid/widget/ImageView;

    if-nez v2, :cond_2

    .line 2178
    sget v2, Lezg$h;->add_banner:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->f:Landroid/widget/ImageView;

    .line 2179
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    .line 2180
    mul-int/lit16 v2, v2, 0x154

    div-int/lit16 v2, v2, 0x2ee

    .line 2181
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2182
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2183
    const-string/jumbo v2, "IMAGE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 2185
    :try_start_0
    sget v5, Lezg$l;->and_user_disband_org_banner_media_id:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\""

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2186
    invoke-static {v5}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2187
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->f:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-interface {v2, v6, v5, v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2191
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->f:Landroid/widget/ImageView;

    new-instance v5, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity$3;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2200
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    :cond_3
    :goto_3
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 164
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 165
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getId()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getId()I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 166
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_5
    move v2, v4

    .line 110
    goto/16 :goto_0

    :cond_6
    move v2, v4

    .line 112
    goto/16 :goto_1

    .line 2188
    :catch_0
    move-exception v2

    .line 2189
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_2

    .line 117
    :cond_7
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->b()V

    goto :goto_3

    .line 119
    :cond_8
    sget v2, Lezg$h;->checkbox2:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v2, v5, :cond_9

    sget v2, Lezg$h;->rl_reason2:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v2, v5, :cond_d

    .line 120
    :cond_9
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 121
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v2, Lezg$h;->rl_reason2:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v2, v5, :cond_a

    .line 122
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v3

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 124
    :cond_a
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x33

    :goto_6
    iput v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->b:I

    .line 125
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->b()V

    goto :goto_3

    :cond_b
    move v2, v4

    .line 122
    goto :goto_5

    :cond_c
    move v2, v4

    .line 124
    goto :goto_6

    .line 126
    :cond_d
    sget v2, Lezg$h;->checkbox3:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v2, v5, :cond_e

    sget v2, Lezg$h;->rl_reason3:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v2, v5, :cond_12

    .line 127
    :cond_e
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->a:Ljava/util/List;

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 128
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v2, Lezg$h;->rl_reason3:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v2, v5, :cond_f

    .line 129
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_10

    move v2, v3

    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 131
    :cond_f
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v2, 0x34

    :goto_8
    iput v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->b:I

    .line 132
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->b()V

    goto/16 :goto_3

    :cond_10
    move v2, v4

    .line 129
    goto :goto_7

    :cond_11
    move v2, v4

    .line 131
    goto :goto_8

    .line 133
    :cond_12
    sget v2, Lezg$h;->checkbox4:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v2, v5, :cond_13

    sget v2, Lezg$h;->rl_reason4:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v2, v5, :cond_17

    .line 134
    :cond_13
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->a:Ljava/util/List;

    const/4 v5, 0x3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 135
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v2, Lezg$h;->rl_reason4:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v2, v5, :cond_14

    .line 136
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_15

    move v2, v3

    :goto_9
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 138
    :cond_14
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v2, 0x35

    :goto_a
    iput v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->b:I

    .line 139
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->b()V

    goto/16 :goto_3

    :cond_15
    move v2, v4

    .line 136
    goto :goto_9

    :cond_16
    move v2, v4

    .line 138
    goto :goto_a

    .line 141
    :cond_17
    sget v2, Lezg$h;->checkbox5:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v2, v5, :cond_18

    sget v2, Lezg$h;->rl_reason5:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v2, v5, :cond_1c

    .line 142
    :cond_18
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->a:Ljava/util/List;

    const/4 v5, 0x4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 143
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v2, Lezg$h;->rl_reason5:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v2, v5, :cond_19

    .line 144
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1a

    move v2, v3

    :goto_b
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 146
    :cond_19
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/16 v2, 0x36

    :goto_c
    iput v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->b:I

    .line 147
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->b()V

    goto/16 :goto_3

    :cond_1a
    move v2, v4

    .line 144
    goto :goto_b

    :cond_1b
    move v2, v4

    .line 146
    goto :goto_c

    .line 148
    :cond_1c
    sget v2, Lezg$h;->checkbox6:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v2, v5, :cond_1d

    sget v2, Lezg$h;->rl_reason6:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v2, v5, :cond_21

    .line 149
    :cond_1d
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->a:Ljava/util/List;

    const/4 v5, 0x5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 150
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v2, Lezg$h;->rl_reason6:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v2, v5, :cond_1e

    .line 151
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1f

    move v2, v3

    :goto_d
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 153
    :cond_1e
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v2, 0x37

    :goto_e
    iput v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->b:I

    .line 154
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->b()V

    goto/16 :goto_3

    :cond_1f
    move v2, v4

    .line 151
    goto :goto_d

    :cond_20
    move v2, v4

    .line 153
    goto :goto_e

    .line 155
    :cond_21
    sget v2, Lezg$h;->checkbox7:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v2, v5, :cond_22

    sget v2, Lezg$h;->rl_reason7:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 156
    :cond_22
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->a:Ljava/util/List;

    const/4 v5, 0x6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 157
    .restart local v1    # "currentCheckBox":Landroid/widget/CheckBox;
    sget v2, Lezg$h;->rl_reason7:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v2, v5, :cond_23

    .line 158
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_24

    move v2, v3

    :goto_f
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 160
    :cond_23
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_25

    const/16 v2, 0x38

    :goto_10
    iput v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->b:I

    .line 161
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->b()V

    goto/16 :goto_3

    :cond_24
    move v2, v4

    .line 158
    goto :goto_f

    :cond_25
    move v2, v4

    .line 160
    goto :goto_10

    .line 169
    :cond_26
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->e:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    :cond_27
    :goto_11
    return-void

    .line 170
    :cond_28
    if-eqz v1, :cond_27

    .line 171
    iput v4, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->b:I

    .line 172
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->e:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_11
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v0, Lezg$j;->activity_disband_org:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->setContentView(I)V

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dt_org_dismissReason_reason:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->a:Ljava/util/List;

    .line 67
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->a:Ljava/util/List;

    sget v0, Lezg$h;->checkbox1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->a:Ljava/util/List;

    sget v0, Lezg$h;->checkbox2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->a:Ljava/util/List;

    sget v0, Lezg$h;->checkbox3:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->a:Ljava/util/List;

    sget v0, Lezg$h;->checkbox4:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->a:Ljava/util/List;

    sget v0, Lezg$h;->checkbox5:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->a:Ljava/util/List;

    sget v0, Lezg$h;->checkbox6:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->a:Ljava/util/List;

    sget v0, Lezg$h;->checkbox7:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget v0, Lezg$h;->et_add:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->c:Landroid/widget/EditText;

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 94
    sget v0, Lezg$h;->rl_add:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1217
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->actbar_button:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->d:Landroid/view/View;

    .line 1218
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->d:Landroid/view/View;

    sget v1, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->e:Landroid/widget/Button;

    .line 1219
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1220
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->e:Landroid/widget/Button;

    sget v1, Lezg$l;->sure:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->g:J

    .line 103
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

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

    .line 240
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 241
    const/4 v1, 0x1

    sget v2, Lezg$l;->sure:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 242
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/DisbandOrgActivity;->d:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 243
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 245
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
    .line 211
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
