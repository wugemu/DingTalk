.class public Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;
.super Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;
.source "NameCardGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lfsx$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity",
        "<",
        "Lftd;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lfsx$b;"
    }
.end annotation


# instance fields
.field private final b:I

.field private c:Lcom/alibaba/android/user/namecard/widget/NameCardView;

.field private d:Landroid/widget/ToggleButton;

.field private e:Landroid/widget/ToggleButton;

.field private f:Landroid/widget/ToggleButton;

.field private g:Landroid/widget/ToggleButton;

.field private h:Landroid/widget/ToggleButton;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private k:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private m:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private n:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

.field private o:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;-><init>()V

    .line 40
    iput v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->b:I

    .line 56
    iput-boolean v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->r:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 3
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 2089
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 2091
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2092
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setSelection(I)V

    .line 2093
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2094
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2095
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2096
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->c:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->setDataToView(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 170
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    .line 174
    :cond_1
    return-void
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 5
    .param p1, "isSuccess"    # Z
    .param p2, "type"    # I
    .param p3, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    if-nez p1, :cond_0

    .line 194
    invoke-static {p3}, Lcms;->a(Ljava/lang/String;)V

    .line 196
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 238
    :goto_0
    return-void

    .line 198
    :pswitch_0
    if-nez p1, :cond_2

    .line 199
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->d:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 201
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->c:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    invoke-virtual {v2, v3, v0, p2}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;ZI)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 205
    :pswitch_1
    if-nez p1, :cond_5

    .line 206
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->e:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_3

    .line 208
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->c:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_6

    :goto_4
    invoke-virtual {v2, v3, v0, p2}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;ZI)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_4

    .line 212
    :pswitch_2
    if-nez p1, :cond_8

    .line 213
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->h:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_7

    :goto_5
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_5

    .line 216
    :cond_8
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->c:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_9

    :goto_6
    invoke-virtual {v2, v3, v0, p2}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;ZI)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_6

    .line 220
    :pswitch_3
    if-nez p1, :cond_b

    .line 221
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->f:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_a

    :goto_7
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_7

    .line 224
    :cond_b
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->c:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_c

    :goto_8
    invoke-virtual {v2, v3, v0, p2}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;ZI)V

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_8

    .line 228
    :pswitch_4
    if-nez p1, :cond_e

    .line 229
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->g:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_d

    :goto_9
    invoke-virtual {v2, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    goto :goto_9

    .line 231
    :cond_e
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->c:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    iget-object v3, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->g:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_f

    :goto_a
    invoke-virtual {v2, v3, v0, p2}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;ZI)V

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto :goto_a

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lezg$j;->activity_name_card_guide:I

    return v0
.end method

.method protected final d()V
    .locals 1

    .prologue
    .line 65
    sget v0, Lezg$h;->name_card:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/widget/NameCardView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->c:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    .line 67
    sget v0, Lezg$h;->et_card_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 68
    sget v0, Lezg$h;->et_card_company:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 69
    sget v0, Lezg$h;->et_card_position:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 70
    sget v0, Lezg$h;->et_card_email:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 71
    sget v0, Lezg$h;->et_card_address:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 73
    sget v0, Lezg$h;->btn_toggle_company:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->d:Landroid/widget/ToggleButton;

    .line 74
    sget v0, Lezg$h;->btn_toggle_position:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->e:Landroid/widget/ToggleButton;

    .line 75
    sget v0, Lezg$h;->btn_toggle_email:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->f:Landroid/widget/ToggleButton;

    .line 76
    sget v0, Lezg$h;->btn_toggle_address:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->g:Landroid/widget/ToggleButton;

    .line 77
    sget v0, Lezg$h;->btn_toggle_phone:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->h:Landroid/widget/ToggleButton;

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->g:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    sget v0, Lezg$h;->ll_guide_edit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->p:Landroid/widget/LinearLayout;

    .line 85
    sget v0, Lezg$h;->ll_guide_switch:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->q:Landroid/widget/LinearLayout;

    .line 86
    return-void
.end method

.method public final f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 178
    iput-boolean v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->r:Z

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->q:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->c:Lcom/alibaba/android/user/namecard/widget/NameCardView;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;Z)V

    .line 2107
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    if-eqz v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->d:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->orgVisiableForStranger:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2109
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->e:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->titleVisiableForStranger:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2110
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->f:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->emailVisiableForStranger:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2111
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->g:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->addressVisiableForStranger:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2112
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->h:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->n:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->mobileVisiableForStranger:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 183
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 243
    .local v0, "id":I
    sget v1, Lezg$h;->btn_toggle_company:I

    if-ne v0, v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->a:Lclj;

    check-cast v1, Lftd;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lftd;->a(ZI)V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    sget v1, Lezg$h;->btn_toggle_position:I

    if-ne v0, v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->a:Lclj;

    check-cast v1, Lftd;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->e:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lftd;->a(ZI)V

    goto :goto_0

    .line 247
    :cond_2
    sget v1, Lezg$h;->btn_toggle_phone:I

    if-ne v0, v1, :cond_3

    .line 248
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->a:Lclj;

    check-cast v1, Lftd;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lftd;->a(ZI)V

    goto :goto_0

    .line 249
    :cond_3
    sget v1, Lezg$h;->btn_toggle_email:I

    if-ne v0, v1, :cond_4

    .line 250
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->a:Lclj;

    check-cast v1, Lftd;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lftd;->a(ZI)V

    goto :goto_0

    .line 251
    :cond_4
    sget v1, Lezg$h;->btn_toggle_address:I

    if-ne v0, v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->a:Lclj;

    check-cast v1, Lftd;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->g:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lftd;->a(ZI)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    const-string/jumbo v1, "\u4e0b\u4e00\u6b65"

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 119
    .local v0, "menuItemSent":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 120
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 121
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 128
    :pswitch_0
    iget-boolean v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->r:Z

    if-eqz v0, :cond_5

    .line 1141
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    sget v0, Lezg$l;->manual_add_people_dlg_name_hint:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    sget v0, Lezg$l;->dt_external_input_company:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1148
    sget v0, Lezg$l;->dt_external_input_position:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 1152
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-nez v0, :cond_4

    .line 1153
    :cond_3
    sget v0, Lezg$l;->dt_user_common_error_data_fetch_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 1156
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->name:Ljava/lang/String;

    .line 1157
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 1158
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    .line 1159
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    .line 1160
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->email:Ljava/lang/String;

    .line 1161
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->address:Ljava/lang/String;

    .line 1162
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->a:Lclj;

    check-cast v0, Lftd;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 2047
    sget-object v2, Lfuj$b;->a:Lfuj;

    .line 2039
    const/4 v3, 0x1

    new-instance v4, Lftd$2;

    invoke-direct {v4, v0}, Lftd$2;-><init>(Lftd;)V

    invoke-virtual {v2, v3, v1, v4}, Lfuj;->a(ZLcom/alibaba/android/dingtalk/userbase/model/CardUserObject;Lfuj$a;)V

    goto/16 :goto_0

    .line 131
    :cond_5
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/exchange_namecard.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->finish()V

    goto/16 :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPostResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 102
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;->onPostResume()V

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardGuideActivity;->a:Lclj;

    check-cast v0, Lftd;

    .line 1047
    sget-object v1, Lfuj$b;->a:Lfuj;

    .line 1028
    const/4 v2, 0x1

    new-instance v3, Lftd$1;

    invoke-direct {v3, v0}, Lftd$1;-><init>(Lftd;)V

    invoke-virtual {v1, v2, v3}, Lfuj;->a(ZLfuj$a;)V

    .line 104
    return-void
.end method
