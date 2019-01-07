.class public Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "EditProfileActivity.java"


# instance fields
.field protected a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private final b:Ljava/lang/String;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/ToggleButton;

.field private h:Landroid/view/View;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

.field private j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/alibaba/android/user/model/PositionData;

.field private r:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

.field private s:Landroid/content/BroadcastReceiver;

.field private t:I

.field private u:Lfuz;

.field private v:Lfva;

.field private w:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 68
    const-string/jumbo v0, "EditProfileActivity"

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->b:Ljava/lang/String;

    .line 102
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->t:I

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->w:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->r:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 65
    .line 5565
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-nez v0, :cond_1

    .line 6036
    sget v0, Lezg$l;->wrong_arguments:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 5567
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->finish()V

    .line 5603
    :cond_0
    :goto_0
    return-void

    .line 5570
    :cond_1
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5571
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->f()V

    goto :goto_0

    .line 5574
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6739
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6740
    sget v0, Lezg$l;->input_nickname_notice:I

    invoke-static {v0}, Lcms;->a(I)V

    move v0, v4

    .line 5575
    :goto_1
    if-eqz v0, :cond_0

    .line 5579
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5580
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5581
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->f:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 5582
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    .line 5583
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    .line 5585
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->u:Lfuz;

    if-eqz v0, :cond_3

    .line 5586
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->u:Lfuz;

    .line 7110
    iget-object v1, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->c:Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->c:Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    invoke-virtual {v1}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 7111
    iget-object v1, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->c:Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/service/SearchOrgNameCenter$AutoCompleteAdapter;->a(I)Lccl;

    move-result-object v1

    .line 7112
    iget-object v6, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7113
    iget-object v7, v1, Lccl;->b:Ljava/lang/String;

    invoke-static {v7}, Lcos;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7114
    if-eqz v1, :cond_3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 7115
    iget-object v6, v1, Lccl;->b:Ljava/lang/String;

    iput-object v6, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->e:Ljava/lang/String;

    .line 7116
    iget-wide v6, v1, Lccl;->a:J

    iput-wide v6, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->f:J

    .line 7117
    iget-object v1, v1, Lccl;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->g:Ljava/lang/String;

    .line 5589
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->registerOrgName:Ljava/lang/String;

    .line 5590
    iget-object v6, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->u:Lfuz;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->u:Lfuz;

    .line 7158
    iget-wide v0, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->f:J

    .line 5590
    :goto_2
    iput-wide v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->registerOrgId:J

    .line 5591
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->i()Z

    move-result v1

    .line 5593
    iget-object v6, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v1, :cond_a

    move v0, v3

    :goto_3
    iput v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->registerIdentity:I

    .line 5595
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5596
    const-string/jumbo v0, "EditProfileActivity"

    const-string/jumbo v6, "EditProfileActivity isOrgNameNeedForNotStudent return true and the user is in OrgNameRequired"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5598
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->registerOrgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->registerOrgName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v6, 0x3

    if-ge v0, v6, :cond_b

    .line 5599
    :cond_4
    sget v0, Lezg$l;->dt_register_company_name_empty:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 5602
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->g()V

    goto/16 :goto_0

    .line 6743
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 6744
    if-lez v0, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_6

    .line 6745
    sget v0, Lezg$l;->profile_nick_not_null:I

    invoke-static {v0}, Lcms;->a(I)V

    move v0, v4

    .line 6746
    goto/16 :goto_1

    .line 6748
    :cond_6
    if-lez v0, :cond_7

    iget v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->t:I

    if-le v0, v1, :cond_8

    .line 6749
    :cond_7
    sget v0, Lezg$l;->profile_nick_hint:I

    new-array v1, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->t:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    move v0, v4

    .line 6750
    goto/16 :goto_1

    :cond_8
    move v0, v3

    .line 6752
    goto/16 :goto_1

    .line 5590
    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_a
    move v0, v4

    .line 5593
    goto :goto_3

    .line 5607
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->r:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    if-eqz v0, :cond_c

    .line 5608
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->r:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    iput v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->industryCode:I

    .line 5611
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->q:Lcom/alibaba/android/user/model/PositionData;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->q:Lcom/alibaba/android/user/model/PositionData;

    iget-object v0, v0, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 5612
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v6, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->q:Lcom/alibaba/android/user/model/PositionData;

    iget-object v6, v6, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    iput-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->jobPosition:Ljava/lang/String;

    .line 7801
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_e

    .line 7802
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 7803
    sget v0, Lezg$l;->loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v9, v0, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->mLoadingDialog:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 7804
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    new-instance v6, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$10;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$10;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 7811
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 5616
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    const-string/jumbo v0, "EVENTBUTLER"

    .line 5617
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v8, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;

    invoke-direct {v8, p0, v5, v1, v2}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$6;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;Ljava/lang/String;ZLjava/lang/String;)V

    const-class v2, Lcma;

    invoke-interface {v0, v8, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5616
    invoke-interface {v6, v7, v0}, Lfac;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcma;)V

    .line 5685
    if-eqz v1, :cond_0

    .line 8693
    new-instance v7, Lfqf;

    invoke-direct {v7}, Lfqf;-><init>()V

    .line 8694
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lfqf;->a:Ljava/lang/Long;

    .line 8695
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->u:Lfuz;

    if-eqz v0, :cond_f

    .line 8696
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->u:Lfuz;

    invoke-virtual {v0}, Lfuz;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lfqf;->d:Ljava/lang/String;

    .line 8697
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->u:Lfuz;

    .line 9158
    iget-wide v0, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->f:J

    .line 8697
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lfqf;->e:Ljava/lang/Long;

    .line 8699
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->v:Lfva;

    if-eqz v0, :cond_12

    .line 8700
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->v:Lfva;

    invoke-virtual {v0}, Lfva;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lfqf;->b:Ljava/lang/String;

    .line 8701
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->v:Lfva;

    .line 10089
    iget-object v0, v0, Lcom/alibaba/android/user/service/SearchNameCenter;->r:Ljava/lang/String;

    .line 8701
    iput-object v0, v7, Lfqf;->c:Ljava/lang/String;

    .line 8702
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->v:Lfva;

    .line 10167
    iget v1, v0, Lfva;->g:I

    if-ltz v1, :cond_10

    iget v1, v0, Lfva;->g:I

    iget-object v2, v0, Lfva;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_13

    :cond_10
    move v0, v4

    .line 8702
    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v7, Lfqf;->f:Ljava/lang/Integer;

    .line 8703
    iget-object v2, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->v:Lfva;

    .line 10174
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 10175
    iget v1, v2, Lfva;->h:I

    const/16 v5, 0x7b2

    if-le v1, v5, :cond_11

    iget v1, v2, Lfva;->i:I

    if-lez v1, :cond_11

    iget v1, v2, Lfva;->i:I

    const/16 v5, 0xc

    if-gt v1, v5, :cond_11

    .line 10176
    iget v1, v2, Lfva;->h:I

    iget v2, v2, Lfva;->i:I

    add-int/lit8 v2, v2, -0x1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 10178
    :cond_11
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 8703
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lfqf;->g:Ljava/lang/Long;

    .line 8706
    :cond_12
    invoke-static {}, Lfbb;->a()Lfbb;

    move-result-object v1

    new-instance v0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$7;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    const-class v2, Lcma;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 11052
    new-instance v2, Lfbb$1;

    invoke-direct {v2, v1, v0}, Lfbb$1;-><init>(Lfbb;Lcma;)V

    .line 11058
    const-class v0, Lcom/alibaba/android/user/idl/services/RECRCandidateIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/RECRCandidateIService;

    invoke-interface {v0, v7, v2}, Lcom/alibaba/android/user/idl/services/RECRCandidateIService;->updateUserProfile(Lfqf;Liyv;)V

    .line 5688
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "user_register_stu_enter"

    invoke-interface {v0, v9, v1, v9}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 10170
    :cond_13
    iget v0, v0, Lfva;->g:I

    add-int/lit8 v0, v0, 0x4

    goto :goto_4
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;Z)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    .line 11196
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->w:Z

    if-nez v0, :cond_0

    .line 11199
    if-eqz p1, :cond_1

    .line 11200
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->e:Landroid/widget/Button;

    sget v1, Lezg$l;->dt_recruit_enter_dingtalk_find_job:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    :goto_0
    return-void

    .line 11202
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->e:Landroid/widget/Button;

    sget v1, Lezg$l;->enter_guide:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 65
    iget v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->t:I

    return v0
.end method

.method private b()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 427
    iget-boolean v2, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->w:Z

    if-eqz v2, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v0

    .line 431
    :cond_1
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_user_register_org_name_global"

    .line 5083
    invoke-virtual {v2, v3, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 431
    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d(Z)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 435
    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->g()V

    return-void
.end method

.method private c()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 464
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->w:Z

    if-nez v1, :cond_0

    invoke-static {}, Lfvw;->a()Lfvw;

    move-result-object v1

    const-string/jumbo v2, "OrgNameRequiredV2"

    invoke-virtual {v1, v2, v0}, Lfvw;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private d()I
    .locals 1

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lezg$l;->dt_register_company_name_placeholder_must:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lezg$l;->dt_register_company_name_placeholder:I

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->d()I

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lfuz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->u:Lfuz;

    return-object v0
.end method

.method private g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 542
    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->h:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->g:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 543
    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->f:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    .line 544
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->v:Lfva;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->v:Lfva;

    .line 545
    invoke-virtual {v3}, Lfva;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 546
    .local v0, "enable":Z
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->e:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 548
    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->c:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 562
    :cond_0
    :goto_1
    return-void

    .end local v0    # "enable":Z
    :cond_1
    move v0, v2

    .line 545
    goto :goto_0

    .line 551
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->f:Landroid/widget/EditText;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    .line 553
    .restart local v0    # "enable":Z
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 554
    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    :goto_3
    and-int/2addr v0, v1

    .line 557
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->e:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 559
    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->c:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .end local v0    # "enable":Z
    :cond_4
    move v0, v2

    .line 551
    goto :goto_2

    .restart local v0    # "enable":Z
    :cond_5
    move v1, v2

    .line 554
    goto :goto_3
.end method

.method static synthetic h(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lfva;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->v:Lfva;

    return-object v0
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 797
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 798
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->m:Landroid/view/View;

    return-object v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->g:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->g:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lcom/alibaba/android/user/model/PositionData;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->q:Lcom/alibaba/android/user/model/PositionData;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->r:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 65
    .line 11815
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 11816
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->j:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 65
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 65
    .line 12722
    invoke-static {}, Lifo;->a()Lifo;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$8;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    invoke-virtual {v0, v1}, Lifo;->a(Lcom/alibaba/wukong/Callback;)V

    .line 65
    return-void
.end method

.method static synthetic p(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->w:Z

    return v0
.end method

.method static synthetic q(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    const/4 v4, 0x0

    .line 65
    .line 12829
    invoke-static {}, Lfvw;->a()Lfvw;

    move-result-object v0

    const-string/jumbo v1, "register_new_user_guide"

    invoke-virtual {v0, v1, v4}, Lfvw;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12830
    invoke-static {v4}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d(Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 12831
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->i()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12832
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->dismissLoadingDialog()V

    .line 12833
    const-string/jumbo v0, "EditProfileActivity"

    const-string/jumbo v1, "join team switch open"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12835
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-nez v0, :cond_0

    .line 12836
    const-string/jumbo v0, "EditProfileActivity"

    const-string/jumbo v1, "mUserProfile null or mOrgNameCenter null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12854
    :goto_0
    return-void

    .line 12839
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->registerOrgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12840
    const-string/jumbo v0, "EditProfileActivity"

    const-string/jumbo v1, "join team match orgName null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12842
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->registerOrgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 12843
    const-string/jumbo v0, "EditProfileActivity"

    const-string/jumbo v1, "join team match orgId null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12845
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->u:Lfuz;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->u:Lfuz;

    .line 13175
    iget-object v0, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->g:Ljava/lang/String;

    .line 12845
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12846
    :cond_3
    const-string/jumbo v0, "EditProfileActivity"

    const-string/jumbo v1, "mOrgNameCenter null or join team match corpId null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12848
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12849
    const-string/jumbo v2, "corp_id"

    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->u:Lfuz;

    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12850
    const-string/jumbo v0, "org_name"

    iget-object v2, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->registerOrgName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12851
    const-string/jumbo v0, "from"

    const-string/jumbo v2, "intent_value_from_register"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12852
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->z(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 12849
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->u:Lfuz;

    .line 14175
    iget-object v0, v0, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->g:Ljava/lang/String;

    goto :goto_1

    .line 12855
    :cond_6
    const-string/jumbo v0, "EditProfileActivity"

    const-string/jumbo v1, "join team switch close or is oversea user"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12856
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->j(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method static synthetic r(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->h()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 502
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/UserBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 503
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    .line 507
    const-string/jumbo v0, "intent_key_selected_position"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/PositionData;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->q:Lcom/alibaba/android/user/model/PositionData;

    .line 5524
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->q:Lcom/alibaba/android/user/model/PositionData;

    if-eqz v0, :cond_2

    .line 5528
    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->q:Lcom/alibaba/android/user/model/PositionData;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/PositionData;->custom:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->q:Lcom/alibaba/android/user/model/PositionData;

    iget-object v0, v0, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->g()V

    goto :goto_0

    .line 5528
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->q:Lcom/alibaba/android/user/model/PositionData;

    iget-object v0, v0, Lcom/alibaba/android/user/model/PositionData;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    sget v0, Lezg$j;->activity_edit_profile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->setContentView(I)V

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->hideToolbarDivide()V

    .line 1532
    sget v0, Lezg$h;->vertical_scroll_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$5;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2136
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2137
    if-eqz v0, :cond_0

    .line 2141
    const-string/jumbo v3, "intent_key_nav_to_confirm_org"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->w:Z

    .line 2146
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1

    .line 2151
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2152
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 2153
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 2154
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 2155
    const/16 v0, 0x12

    invoke-static {v0}, Lcms;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2156
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v3, Lezg$g;->small_home_up_indicator:I

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 2162
    :cond_1
    sget v0, Lezg$h;->btn_join:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->e:Landroid/widget/Button;

    .line 2163
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->e:Landroid/widget/Button;

    new-instance v3, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$1;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2169
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2170
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->w:Z

    if-eqz v0, :cond_2

    .line 2171
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->e:Landroid/widget/Button;

    sget v3, Lezg$l;->login_next:I

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 2174
    :cond_2
    sget v0, Lezg$h;->btn_not_join_2_org:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->d:Landroid/widget/Button;

    .line 2175
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->d:Landroid/widget/Button;

    new-instance v3, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$11;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$11;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2181
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2183
    sget v0, Lezg$h;->btn_join_2_org:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->c:Landroid/widget/Button;

    .line 2184
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->c:Landroid/widget/Button;

    new-instance v3, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$12;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$12;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2192
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2208
    sget v0, Lezg$h;->et_nickname:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->f:Landroid/widget/EditText;

    .line 2209
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2211
    const/16 v0, 0x32

    iput v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->t:I

    .line 2217
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->f:Landroid/widget/EditText;

    new-instance v3, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$13;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$13;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2241
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->w:Z

    if-nez v0, :cond_3

    .line 2245
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2294
    :cond_3
    :goto_1
    sget v0, Lezg$h;->tv_org_name_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->k:Landroid/widget/TextView;

    .line 2295
    sget v0, Lezg$h;->et_org_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    .line 2296
    sget v0, Lezg$h;->et_profession_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    .line 2297
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->b()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2298
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setVisibility(I)V

    .line 2299
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2300
    sget v0, Lezg$h;->org_name_divider:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3404
    :goto_2
    sget v0, Lezg$h;->rl_industry:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->m:Landroid/view/View;

    .line 3405
    sget v0, Lezg$h;->item_org_type:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->n:Landroid/widget/TextView;

    .line 3445
    invoke-static {v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d(Z)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "pref_key_user_industry_switch"

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 3407
    :goto_3
    if-nez v0, :cond_a

    .line 3408
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->m:Landroid/view/View;

    invoke-static {v0, v5}, Lfxp;->a(Landroid/view/View;I)V

    .line 4377
    :goto_4
    sget v0, Lezg$h;->rl_my_position:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->o:Landroid/view/View;

    .line 4378
    sget v0, Lezg$h;->tv_my_position_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->p:Landroid/widget/TextView;

    .line 4455
    invoke-static {v2}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d(Z)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "pref_key_user_position_switch"

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 4380
    :goto_5
    if-nez v0, :cond_c

    .line 4381
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->o:Landroid/view/View;

    invoke-static {v0, v5}, Lfxp;->a(Landroid/view/View;I)V

    .line 4477
    :goto_6
    new-instance v0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$4;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->s:Landroid/content/BroadcastReceiver;

    .line 4495
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4496
    const-string/jumbo v1, "action_key_select_org_type"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4497
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4756
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->showLoadingDialog()V

    .line 4757
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 4759
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-nez v0, :cond_d

    .line 4760
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    .line 4761
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string/jumbo v0, "EVENTBUTLER"

    .line 4762
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$9;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$9;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    const-class v7, Lcma;

    invoke-interface {v0, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 4761
    invoke-interface/range {v1 .. v6}, Lfac;->a(JJLcma;)V

    .line 131
    :goto_7
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "bh_register_view_show"

    invoke-interface {v0, p0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->enterPage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    return-void

    .line 2214
    :cond_4
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->t:I

    goto/16 :goto_0

    .line 2250
    :cond_5
    invoke-static {}, Lfvw;->a()Lfvw;

    move-result-object v0

    const-string/jumbo v3, "registerIdentity"

    invoke-virtual {v0, v3, v2}, Lfvw;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2255
    sget v0, Lezg$h;->student_register_flag_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->h:Landroid/view/View;

    .line 2256
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2257
    sget v0, Lezg$h;->tv_student_register_flag:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->g:Landroid/widget/ToggleButton;

    .line 2258
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->g:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$14;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1

    .line 2302
    :cond_6
    new-instance v0, Lfuz;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-direct {v0, v3, p0}, Lfuz;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->u:Lfuz;

    .line 2304
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-direct {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setHint(I)V

    .line 2306
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    new-instance v3, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$15;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$15;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2320
    new-instance v0, Lfva;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-direct {v0, v3, p0}, Lfva;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->v:Lfva;

    .line 2321
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->v:Lfva;

    sget v3, Lezg$h;->et_profession_name_container:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3087
    iput-object v3, v0, Lfva;->b:Landroid/view/View;

    .line 2322
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->v:Lfva;

    sget v3, Lezg$h;->et_education_container:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3091
    iput-object v3, v0, Lfva;->c:Landroid/view/View;

    .line 3092
    iget-object v3, v0, Lfva;->c:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 3093
    iget-object v3, v0, Lfva;->c:Landroid/view/View;

    new-instance v4, Lfva$1;

    invoke-direct {v4, v0}, Lfva$1;-><init>(Lfva;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2323
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->v:Lfva;

    sget v3, Lezg$h;->et_graduate_date_container:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 3119
    iput-object v3, v0, Lfva;->d:Landroid/view/View;

    .line 3120
    iget-object v3, v0, Lfva;->d:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 3121
    iget-object v3, v0, Lfva;->d:Landroid/view/View;

    new-instance v4, Lfva$2;

    invoke-direct {v4, v0}, Lfva$2;-><init>(Lfva;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2324
    :cond_8
    sget v0, Lezg$h;->et_education:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2325
    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->v:Lfva;

    .line 3143
    iput-object v0, v3, Lfva;->e:Landroid/widget/TextView;

    .line 2326
    new-instance v3, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$16;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$16;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2340
    sget v0, Lezg$h;->et_graduate_date:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2341
    iget-object v3, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->v:Lfva;

    .line 3147
    iput-object v0, v3, Lfva;->f:Landroid/widget/TextView;

    .line 2342
    new-instance v3, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$17;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$17;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2356
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    new-instance v3, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$18;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$18;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_2

    :cond_9
    move v0, v2

    .line 3445
    goto/16 :goto_3

    .line 3412
    :cond_a
    sget v0, Lezg$h;->layout_item_org_type:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$3;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_b
    move v0, v2

    .line 4455
    goto/16 :goto_5

    .line 4385
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->o:Landroid/view/View;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 4387
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->o:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity$2;-><init>(Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 4792
    :cond_d
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->h()V

    .line 4793
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->dismissLoadingDialog()V

    goto/16 :goto_7
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 515
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 517
    iget-object v0, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->s:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 518
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/editprofile/EditProfileActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 520
    :cond_0
    return-void
.end method
