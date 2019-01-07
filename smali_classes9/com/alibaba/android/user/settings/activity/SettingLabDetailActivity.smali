.class public Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SettingLabDetailActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

.field private b:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/alibaba/android/user/settings/model/LabItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;)Lcom/alibaba/android/user/settings/model/LabItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->h:Lcom/alibaba/android/user/settings/model/LabItem;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 44
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v0, Lezg$j;->layout_setting_lab_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_setting_lab_item"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/settings/model/LabItem;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->h:Lcom/alibaba/android/user/settings/model/LabItem;

    .line 1058
    sget v0, Lezg$h;->setting_enable:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    .line 1059
    sget v0, Lezg$h;->setting_lab_feedback:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 1060
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 1062
    sget v0, Lezg$h;->tv_lab_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->e:Landroid/widget/TextView;

    .line 1064
    sget v0, Lezg$h;->tv_lab_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->f:Landroid/widget/TextView;

    .line 1066
    sget v0, Lezg$h;->rl_lab_success:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->c:Landroid/widget/RelativeLayout;

    .line 1067
    sget v0, Lezg$h;->tv_lab_status_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->d:Landroid/widget/TextView;

    .line 1069
    sget v0, Lezg$h;->img_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->g:Landroid/widget/ImageView;

    .line 1073
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->h:Lcom/alibaba/android/user/settings/model/LabItem;

    if-eqz v0, :cond_2

    .line 1074
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->h:Lcom/alibaba/android/user/settings/model/LabItem;

    iget v0, v0, Lcom/alibaba/android/user/settings/model/LabItem;->title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->e:Landroid/widget/TextView;

    sget v3, Lezg$l;->dt_lab_function_intro:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->h:Lcom/alibaba/android/user/settings/model/LabItem;

    iget v3, v3, Lcom/alibaba/android/user/settings/model/LabItem;->content:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->h:Lcom/alibaba/android/user/settings/model/LabItem;

    iget v0, v0, Lcom/alibaba/android/user/settings/model/LabItem;->icon:I

    if-lez v0, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->h:Lcom/alibaba/android/user/settings/model/LabItem;

    iget v0, v0, Lcom/alibaba/android/user/settings/model/LabItem;->type:I

    if-ne v0, v4, :cond_5

    .line 1081
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcms;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->g:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->h:Lcom/alibaba/android/user/settings/model/LabItem;

    iget v3, v3, Lcom/alibaba/android/user/settings/model/LabItem;->icon:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1097
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->h:Lcom/alibaba/android/user/settings/model/LabItem;

    iget v0, v0, Lcom/alibaba/android/user/settings/model/LabItem;->labStatus:I

    if-ne v0, v4, :cond_9

    .line 1098
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1099
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setVisibility(I)V

    .line 1100
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->h:Lcom/alibaba/android/user/settings/model/LabItem;

    iget v1, v1, Lcom/alibaba/android/user/settings/model/LabItem;->labSuccessTip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    return-void

    :cond_3
    move v0, v2

    .line 1060
    goto/16 :goto_0

    .line 1084
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->g:Landroid/widget/ImageView;

    sget v3, Lezg$g;->icon_lab_efficient_tip_new_en:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1086
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->h:Lcom/alibaba/android/user/settings/model/LabItem;

    iget v0, v0, Lcom/alibaba/android/user/settings/model/LabItem;->type:I

    if-ne v0, v5, :cond_8

    .line 1087
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcms;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1088
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->g:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->h:Lcom/alibaba/android/user/settings/model/LabItem;

    iget v3, v3, Lcom/alibaba/android/user/settings/model/LabItem;->icon:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1090
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->g:Landroid/widget/ImageView;

    sget v3, Lezg$g;->icon_at_me_large_en:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1093
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->g:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->h:Lcom/alibaba/android/user/settings/model/LabItem;

    iget v3, v3, Lcom/alibaba/android/user/settings/model/LabItem;->icon:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1101
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->h:Lcom/alibaba/android/user/settings/model/LabItem;

    iget v0, v0, Lcom/alibaba/android/user/settings/model/LabItem;->labStatus:I

    if-ne v0, v5, :cond_b

    .line 1102
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setVisibility(I)V

    .line 1104
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    sget v2, Lezg$l;->dt_lab_enable:I

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->h:Lcom/alibaba/android/user/settings/model/LabItem;

    iget v4, v4, Lcom/alibaba/android/user/settings/model/LabItem;->title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setTitle(Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->h:Lcom/alibaba/android/user/settings/model/LabItem;

    iget v0, v0, Lcom/alibaba/android/user/settings/model/LabItem;->type:I

    if-ne v0, v5, :cond_a

    .line 1106
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->A()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setToggleChecked(Z)V

    goto/16 :goto_2

    .line 1108
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->h:Lcom/alibaba/android/user/settings/model/LabItem;

    iget-boolean v1, v1, Lcom/alibaba/android/user/settings/model/LabItem;->enable:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setToggleChecked(Z)V

    goto/16 :goto_2

    .line 1111
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1112
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SettingLabDetailActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C4T1ToggleCell;->setVisibility(I)V

    goto/16 :goto_2
.end method
