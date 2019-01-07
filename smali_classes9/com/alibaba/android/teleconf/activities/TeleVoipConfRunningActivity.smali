.class public Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleVoipConfRunningActivity.java"

# interfaces
.implements Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private D:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field private E:I

.field private F:I

.field private G:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

.field private H:Ljava/util/TimerTask;

.field private I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

.field private J:Landroid/view/View$OnClickListener;

.field private K:Landroid/view/View$OnClickListener;

.field private L:Landroid/view/View$OnClickListener;

.field private M:Landroid/view/View$OnClickListener;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/GridView;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;

.field private q:Landroid/view/View;

.field private r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private s:Landroid/widget/TextView;

.field private t:Lewj;

.field private u:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

.field private v:Lewm;

.field private w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 118
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->z:Z

    .line 119
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->A:Z

    .line 130
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->J:Landroid/view/View$OnClickListener;

    .line 194
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$11;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->K:Landroid/view/View$OnClickListener;

    .line 226
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$12;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->L:Landroid/view/View$OnClickListener;

    .line 272
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$13;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$13;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->M:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;Lezd;)V
    .locals 13
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;
    .param p1, "x1"    # Lezd;

    .prologue
    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 83
    .line 22231
    if-eqz p1, :cond_0

    iget-object v0, p1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-nez v0, :cond_2

    .line 22232
    :cond_0
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Invalid user clk for show menu"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22233
    :cond_1
    :goto_0
    return-void

    .line 22235
    :cond_2
    new-instance v3, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    sget v0, Leuj$l;->and_conf_video_conference_kickoff_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v7, v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22236
    sget-object v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_GRAVITY_CENTER:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 22585
    iput-object v0, v3, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->h:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 22237
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Leuj$f;->ui_common_alert_bg_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 23569
    iput v0, v3, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->i:I

    .line 22238
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$18;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$18;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;Lezd;)V

    .line 23581
    iput-object v0, v3, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 22250
    new-instance v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    sget v4, Leuj$l;->and_conf_video_conference_recall_txt:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v7, v4}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22251
    sget-object v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_GRAVITY_CENTER:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 23585
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->h:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 22252
    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$2;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;Lezd;)V

    .line 24581
    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 22265
    new-instance v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    sget v5, Leuj$l;->conf_txt_mute_her:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22266
    sget-object v5, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_GRAVITY_CENTER:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 24585
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->h:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 22267
    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$3;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;Lezd;)V

    .line 25581
    iput-object v5, v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 22280
    new-instance v5, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    sget v6, Leuj$l;->conf_txt_cancel_mute:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22281
    sget-object v6, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_GRAVITY_CENTER:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 25585
    iput-object v6, v5, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->h:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 22282
    new-instance v6, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$4;

    invoke-direct {v6, p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;Lezd;)V

    .line 26581
    iput-object v6, v5, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 22295
    invoke-static {}, Levn;->p()Levn;

    move-result-object v6

    invoke-virtual {v6}, Levn;->r()Z

    move-result v6

    .line 22296
    new-instance v7, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    invoke-direct {v7, p0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;-><init>(Landroid/content/Context;)V

    .line 22297
    iget-object v8, p1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v10

    invoke-virtual {v10}, Lccr;->c()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    .line 22298
    invoke-virtual {p1}, Lezd;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22299
    invoke-virtual {v7, v5}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .line 22304
    :goto_1
    if-eqz v6, :cond_a

    move v0, v1

    .line 22328
    :cond_3
    :goto_2
    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    .line 22329
    iget-object v0, p1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 27205
    :goto_3
    iput-object v0, v7, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a:Ljava/lang/String;

    .line 22331
    invoke-virtual {v7}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->show()V

    .line 22333
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "phone_voip_conference_avatar_click"

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 22334
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    new-array v5, v12, [Ljava/lang/String;

    const-string/jumbo v6, "Show control menu: "

    aput-object v6, v5, v2

    aput-object v0, v5, v1

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 22301
    :cond_4
    invoke-virtual {v7, v4}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    goto :goto_1

    .line 22308
    :cond_5
    invoke-virtual {p1}, Lezd;->a()I

    move-result v8

    .line 22309
    if-ne v8, v12, :cond_7

    .line 22310
    if-eqz v6, :cond_9

    .line 22311
    invoke-virtual {p1}, Lezd;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22312
    invoke-virtual {v7, v5}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    :goto_4
    move v0, v1

    .line 22323
    :goto_5
    if-eqz v6, :cond_3

    .line 22324
    invoke-virtual {v7, v3}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    move v0, v1

    .line 22325
    goto :goto_2

    .line 22314
    :cond_6
    invoke-virtual {v7, v4}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    goto :goto_4

    .line 22318
    :cond_7
    if-nez v8, :cond_9

    .line 22319
    invoke-virtual {v7, v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    move v0, v1

    .line 22320
    goto :goto_5

    .line 22329
    :cond_8
    iget-object v0, p1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_5

    :cond_a
    move v0, v2

    goto :goto_2
.end method

.method private a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V
    .locals 10
    .param p1, "callState"    # Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/16 v9, 0x8

    const/4 v4, 0x0

    .line 931
    if-nez p1, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v5, :cond_0

    .line 932
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v5}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->k()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object p1

    .line 934
    :cond_0
    if-nez p1, :cond_2

    .line 1003
    :cond_1
    :goto_0
    return-void

    .line 937
    :cond_2
    const-string/jumbo v5, "tele_conf"

    sget-object v6, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "Update view by state "

    aput-object v8, v7, v4

    .line 938
    invoke-virtual {p1}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 937
    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    sget-object v5, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$10;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 941
    :pswitch_0
    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->x:Z

    if-nez v3, :cond_1

    .line 942
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->u:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    sget-object v4, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_ACCEPTING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;)V

    goto :goto_0

    .line 947
    :pswitch_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->u:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    sget-object v5, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_CALLING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    invoke-virtual {v3, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;)V

    .line 948
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->b:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 949
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->i:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 950
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->q:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 954
    :pswitch_2
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->u:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    sget-object v6, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_CALLED:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;)V

    .line 955
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->b:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 956
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->i:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 957
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->q:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 958
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v5, :cond_3

    .line 959
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 960
    .local v1, "nickName":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    .end local v1    # "nickName":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 964
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->p:Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;

    invoke-virtual {v5, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->setNickVisible(Z)V

    .line 966
    iget v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->F:I

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v5, v6, :cond_5

    move v0, v3

    .line 967
    .local v0, "hasTail":Z
    :goto_2
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->p:Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    invoke-virtual {v5, v6, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;->a(Ljava/util/List;Z)V

    .line 968
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->k:Landroid/widget/TextView;

    sget v6, Leuj$l;->dt_conf_video_accept_member_count:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {p0, v6, v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 959
    .end local v0    # "hasTail":Z
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move v0, v4

    .line 966
    goto :goto_2

    .line 974
    :pswitch_3
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->u:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    sget-object v5, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;->TYPE_TALKING:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;

    invoke-virtual {v3, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$ControlType;)V

    .line 975
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Leuj$h;->conf_common_green_dot_icon:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 976
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->b:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 977
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->i:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 979
    invoke-static {}, Levn;->p()Levn;

    move-result-object v3

    invoke-virtual {v3}, Levn;->r()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 980
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->q:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 981
    invoke-static {}, Levn;->p()Levn;

    move-result-object v3

    invoke-virtual {v3}, Levn;->k()Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->y:Z

    .line 982
    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->y:Z

    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->e(Z)V

    .line 986
    :goto_3
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v3, :cond_1

    .line 988
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->i()V

    .line 989
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->j()Z

    goto/16 :goto_0

    .line 984
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->q:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 996
    :pswitch_4
    sget v3, Leuj$l;->conf_txt_terminated:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 997
    .local v2, "toast":Ljava/lang/String;
    const-string/jumbo v3, "200"

    .line 15764
    invoke-static {v3, v2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->finish()V

    goto/16 :goto_0

    .line 939
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 17290
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    invoke-virtual {v0}, Levn;->c()Z

    move-result v0

    .line 83
    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->z:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->y:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 83
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->E:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->e(Z)V

    return-void
.end method

.method private d(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 359
    invoke-static {}, Lewx;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    if-eqz p1, :cond_0

    .line 361
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->x:Z

    .line 6424
    iput-boolean v1, v0, Lewv;->d:Z

    .line 362
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lewv;->a(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    .line 376
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-static {}, Lewv;->e()Lewv;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lewv;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    goto :goto_0

    .line 369
    :cond_1
    if-eqz p1, :cond_2

    .line 370
    invoke-static {}, Lewu;->a()Lewv;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lewv;->a(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    goto :goto_0

    .line 373
    :cond_2
    invoke-static {}, Lewu;->a()Lewv;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;->FLOATING_CONF:Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;

    invoke-virtual {v0, v1}, Lewv;->b(Lcom/alibaba/android/teleconf/operation/BaseFloatingManager$FloatingType;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->z:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    const/4 v2, 0x0

    .line 83
    .line 18155
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    if-nez v0, :cond_0

    .line 18156
    :goto_0
    return-void

    .line 18158
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 18159
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 18160
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(I)Lezd;

    move-result-object v3

    .line 18161
    if-eqz v3, :cond_1

    iget-object v4, v3, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 18163
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 18166
    iget-object v3, v3, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18159
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 18168
    :cond_2
    const-string/jumbo v1, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "Adding member"

    invoke-static {v1, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18170
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 18171
    const-string/jumbo v3, "choose_mode"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18172
    const-string/jumbo v3, "activity_identify"

    const-string/jumbo v4, "VOIP_CONF_ACTIVITY_CHOOSE_MEMBERS"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18173
    const-string/jumbo v3, "count_limit"

    iget v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->E:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18174
    const-string/jumbo v3, "count_limit_tips"

    sget v4, Leuj$l;->conference_choose_limit:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18177
    const-string/jumbo v3, "title"

    sget v4, Leuj$l;->dt_conference_select_member_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18178
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v3

    invoke-virtual {v3}, Lewh;->l()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18179
    const-string/jumbo v3, "intent_key_support_fix_line"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18181
    :cond_3
    const-string/jumbo v3, "hide_org_external"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18182
    invoke-static {}, Levn;->p()Levn;

    move-result-object v2

    invoke-virtual {v2}, Levn;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18183
    const-string/jumbo v2, "key_request_select_user_list"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 18188
    :goto_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 18185
    :cond_4
    const-string/jumbo v2, "seleced_members"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2
.end method

.method private e(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1339
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1355
    :cond_0
    :goto_0
    return-void

    .line 1342
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1343
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Leuj$l;->dt_common_i_know:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$5;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$5;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 1344
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1351
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1352
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1353
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method private e(Z)V
    .locals 3
    .param p1, "muted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 870
    if-eqz p1, :cond_0

    .line 871
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Leuj$l;->icon_muteoff_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 872
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->conf_call_and_video_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 873
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->conf_call_and_video_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 874
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->q:Landroid/view/View;

    sget v1, Leuj$h;->conf_panel_unmute_bg_shape:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 881
    :goto_0
    return-void

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Leuj$l;->icon_mute_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 877
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->pure_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 878
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->pure_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 879
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->q:Landroid/view/View;

    sget v1, Leuj$h;->conf_voip_switch_stroke_shape:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->y:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->j()Z

    move-result v0

    return v0
.end method

.method private i()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 887
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->u:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    if-eqz v6, :cond_1

    .line 888
    const/4 v0, 0x0

    .line 891
    .local v0, "audioMode":Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v6}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->p()Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v5

    .line 892
    .local v5, "mode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v6}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->o()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 893
    const/4 v4, 0x0

    .line 894
    .local v4, "enable":Z
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    .line 913
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->u:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    invoke-virtual {v6, v0, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;Z)V

    .line 915
    .end local v0    # "audioMode":Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;
    .end local v4    # "enable":Z
    .end local v5    # "mode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    :cond_1
    return-void

    .line 896
    .restart local v0    # "audioMode":Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;
    .restart local v5    # "mode":Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;
    :cond_2
    invoke-static {}, Lewx;->c()Z

    move-result v3

    .line 897
    .local v3, "deviceSwitchEnable":Z
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v6}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->n()Z

    move-result v1

    .line 898
    .local v1, "bluetoothHeadsetPlugin":Z
    if-nez v3, :cond_3

    if-eqz v1, :cond_3

    .line 899
    const/4 v4, 0x0

    .line 900
    .restart local v4    # "enable":Z
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    goto :goto_0

    .line 902
    .end local v4    # "enable":Z
    :cond_3
    const/4 v4, 0x1

    .line 903
    .restart local v4    # "enable":Z
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    .line 904
    .local v2, "bluetoothheadsetValid":Z
    :goto_1
    sget-object v6, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v5, v6, :cond_6

    .line 905
    if-eqz v2, :cond_5

    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_S_SPEAKER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    :goto_2
    goto :goto_0

    .line 903
    .end local v2    # "bluetoothheadsetValid":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 905
    .restart local v2    # "bluetoothheadsetValid":Z
    :cond_5
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_SPEAKER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    goto :goto_2

    .line 906
    :cond_6
    sget-object v6, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v5, v6, :cond_8

    .line 907
    if-eqz v2, :cond_7

    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_S_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    :goto_3
    goto :goto_0

    :cond_7
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_N_RECEIVER:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    goto :goto_3

    .line 908
    :cond_8
    sget-object v6, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->BluetoothHeadset:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v5, v6, :cond_0

    .line 909
    sget-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;->MODE_S_BLUETOOTH:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout$AudioMode;

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->A:Z

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    .line 18405
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-nez v0, :cond_1

    .line 18407
    :cond_0
    :goto_0
    return-void

    .line 18409
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->t:Lewj;

    if-nez v0, :cond_2

    .line 18410
    new-instance v0, Lewj;

    invoke-direct {v0, p0}, Lewj;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->t:Lewj;

    .line 18412
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->p()Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v3

    .line 18414
    sget v0, Leuj$l;->dt_conference_voip_speaker_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v4, Leuj$l;->icon_speaker_fill:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lewj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v4

    .line 18415
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->Speaker:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v3, v0, :cond_4

    move v0, v1

    .line 19093
    :goto_1
    iput-boolean v0, v4, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->f:Z

    .line 18416
    sget v0, Leuj$l;->dt_conference_voip_receiver_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v5, Leuj$l;->icon_mobilephone_fill:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lewj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v5

    .line 18417
    sget-object v0, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v3, v0, :cond_5

    move v0, v1

    .line 20093
    :goto_2
    iput-boolean v0, v5, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->f:Z

    .line 18418
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->q()Ljava/lang/String;

    move-result-object v0

    .line 18419
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 18420
    sget v0, Leuj$l;->dt_conference_voip_bluetooth_headset_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 18422
    :cond_3
    sget v6, Leuj$l;->icon_voip_bluetooth_fill:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lewj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v0

    .line 18423
    sget-object v6, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->BluetoothHeadset:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v3, v6, :cond_6

    .line 21093
    :goto_3
    iput-boolean v1, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->f:Z

    .line 18425
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18426
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18427
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18428
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18430
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->t:Lewj;

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$8;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V

    .line 22079
    iput-object v2, v0, Lewj;->c:Lewj$b;

    .line 18460
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->t:Lewj;

    sget v2, Leuj$l;->dt_conference_voip_have_bluetooth_input:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lewj;->a(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 18415
    goto :goto_1

    :cond_5
    move v0, v2

    .line 18417
    goto :goto_2

    :cond_6
    move v1, v2

    .line 18423
    goto :goto_3
.end method

.method private j()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 918
    const/4 v0, 0x0

    .line 919
    .local v0, "silenceState":Z
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->u:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    if-eqz v1, :cond_0

    .line 920
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->m()Z

    move-result v0

    .line 921
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->u:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Z)V

    .line 923
    :cond_0
    return v0
.end method

.method private k()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, 0x3a98

    .line 1464
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    invoke-virtual {v0}, Levn;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1479
    :cond_0
    :goto_0
    return-void

    .line 1467
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->H:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 1468
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$9;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->H:Ljava/util/TimerTask;

    .line 1477
    invoke-static {}, Leyy;->a()Leyy;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->H:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Leyy;->a(Ljava/util/TimerTask;JJ)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->i()V

    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->o:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 760
    return-void
.end method

.method public final a()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 406
    return-object p0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 5
    .param p1, "errCode"    # I
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 543
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "VoIP conf error occur"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 544
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v0, p1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->b(I)Z

    .line 548
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;ILjava/lang/String;)V
    .locals 7
    .param p1, "actionType"    # Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .param p2, "errCode"    # I
    .param p3, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 517
    if-nez p1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "Action "

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " fail, "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 521
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, ","

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p3, v3, v4

    .line 520
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CREATE_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne p1, v1, :cond_2

    .line 524
    sget v1, Leuj$l;->conf_txt_create_failed_toast:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "toast":Ljava/lang/String;
    const-string/jumbo v1, "200"

    .line 8764
    invoke-static {v1, v0}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, v6}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 528
    .end local v0    # "toast":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_INIT:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne p1, v1, :cond_0

    .line 529
    invoke-static {}, Levn;->p()Levn;

    move-result-object v1

    sget v2, Levh;->c:I

    invoke-virtual {v1, v2}, Levn;->a(I)V

    .line 530
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->finish()V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;Ljava/lang/Object;)V
    .locals 10
    .param p1, "actionType"    # Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .param p2, "destObj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 459
    if-nez p1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "Action "

    aput-object v6, v5, v9

    .line 463
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string/jumbo v7, " success"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 462
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne v3, p1, :cond_2

    .line 465
    instance-of v3, p2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 466
    check-cast v1, Ljava/lang/Long;

    .line 467
    .local v1, "destUid":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 468
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v3, :cond_0

    .line 469
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->k()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 470
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->m()Z

    move-result v3

    if-nez v3, :cond_0

    .line 471
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->l()V

    .line 472
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->u:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    invoke-virtual {v3, v8}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Z)V

    goto :goto_0

    .line 477
    .end local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .end local v1    # "destUid":Ljava/lang/Long;
    :cond_2
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne v3, p1, :cond_3

    .line 478
    instance-of v3, p2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 479
    check-cast v1, Ljava/lang/Long;

    .line 480
    .restart local v1    # "destUid":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 481
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v3, :cond_0

    .line 482
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->k()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 483
    .restart local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v3, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->l()V

    .line 485
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->u:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    invoke-virtual {v3, v9}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->a(Z)V

    goto/16 :goto_0

    .line 490
    .end local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .end local v1    # "destUid":Ljava/lang/Long;
    :cond_3
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_ADD_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne v3, p1, :cond_5

    .line 491
    instance-of v3, p2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 492
    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 493
    .local v2, "destUser":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 494
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 495
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v8, v8}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    goto/16 :goto_0

    .line 497
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v3, v2, v8, v8}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZI)V

    goto/16 :goto_0

    .line 501
    .end local v2    # "destUser":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_5
    sget-object v3, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    if-ne v3, p1, :cond_0

    .line 502
    instance-of v3, p2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 503
    check-cast v1, Ljava/lang/Long;

    .line 504
    .restart local v1    # "destUid":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 505
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    if-eqz v3, :cond_0

    .line 506
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v8}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZ)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1, "confId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 411
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Conf created "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public final a(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "confId"    # Ljava/lang/String;
    .param p2, "errCode"    # I
    .param p3, "beDelayEnded"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 568
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Conf ended "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 569
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 568
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->f()V

    .line 574
    :cond_0
    if-eqz p3, :cond_2

    .line 10358
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Leuj$l;->dt_common_i_know:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 10359
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_voip_conf_kickoff_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10360
    invoke-static {p0, v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10361
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10362
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->finish()V

    .line 590
    :cond_1
    :goto_0
    return-void

    .line 577
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$14;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$14;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;>;"
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 433
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 434
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "Conf pulled "

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;

    .line 437
    .local v0, "statusObject":Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;->mUser:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_0

    .line 440
    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;->mUser:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    .line 441
    .local v1, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v1, :cond_0

    .line 442
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d(J)Z

    move-result v3

    if-nez v3, :cond_2

    .line 443
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    iget v4, v0, Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;->mUserStatus:I

    invoke-virtual {v3, v1, v7, v4}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZI)V

    .line 447
    :goto_1
    iget v3, v0, Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;->mUserStatus:I

    if-ne v3, v8, :cond_1

    .line 448
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-boolean v6, v0, Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;->mBeMuted:Z

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(JZZ)V

    .line 450
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v5, v0, Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;->mUserExpStatus:I

    invoke-virtual {v3, v4, v5, v7}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b(Ljava/lang/Long;IZ)V

    goto :goto_0

    .line 445
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v5, v0, Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;->mUserStatus:I

    invoke-virtual {v3, v4, v5, v7}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;IZ)V

    goto :goto_1

    .line 453
    .end local v0    # "statusObject":Lcom/alibaba/android/teleconf/data/TeleConfMemStatusObject;
    .end local v1    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    .line 8041
    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->notifyDataSetChanged()V

    .line 455
    :cond_4
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "usersStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 629
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    if-eqz v3, :cond_3

    .line 631
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "Member prevented "

    aput-object v6, v5, v8

    const/4 v6, 0x1

    .line 632
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 631
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 635
    .local v1, "statusEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 638
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 639
    .local v2, "uid":Ljava/lang/Long;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 640
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 641
    .local v0, "status":I
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v3, v2, v0, v8}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->b(Ljava/lang/Long;IZ)V

    goto :goto_0

    .line 640
    .end local v0    # "status":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    .line 644
    .end local v1    # "statusEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v2    # "uid":Ljava/lang/Long;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    .line 13041
    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->notifyDataSetChanged()V

    .line 646
    :cond_3
    return-void
.end method

.method public final a(Z)V
    .locals 5
    .param p1, "beOffhook"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 650
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Phone call "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 651
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 650
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    const/16 v1, 0xc8

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->b(I)Z

    .line 657
    :goto_0
    return-void

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->i()V

    goto :goto_0
.end method

.method public final a(ZJ)V
    .locals 6
    .param p1, "beEnter"    # Z
    .param p2, "uid"    # J

    .prologue
    .line 617
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "User "

    aput-object v4, v3, v0

    const/4 v0, 0x1

    .line 618
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string/jumbo v4, " "

    aput-object v4, v3, v0

    const/4 v4, 0x3

    if-eqz p1, :cond_0

    const-string/jumbo v0, "enter"

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x4

    const-string/jumbo v4, " conference"

    aput-object v4, v3, v0

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    return-void

    .line 618
    :cond_0
    const-string/jumbo v0, "leave"

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 764
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 755
    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 3
    .param p1, "errCode"    # I
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 552
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;->ERR_LOW_VOLUME:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$VoipConfError;->value()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 553
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Show low volume warning"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-direct {p0, p2}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->e(Ljava/lang/String;)V

    .line 557
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5
    .param p1, "confId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 416
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Conf accepted "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->HOLD:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 418
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 624
    .line 11192
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 11193
    :cond_0
    :goto_0
    return-void

    .line 11195
    :cond_1
    iget v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->E:I

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 11196
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_5

    .line 11197
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 11199
    :goto_1
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    invoke-virtual {v0}, Levn;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v4

    .line 11201
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    move v2, v3

    .line 11202
    :goto_2
    if-ge v2, v1, :cond_4

    .line 11203
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 11205
    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 11206
    invoke-virtual {v6, v8, v9}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d(J)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerId:Ljava/lang/Long;

    .line 11207
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 11211
    iget-object v6, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11213
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v6, v0, v3, v10}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;ZI)V

    .line 11214
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v6, :cond_2

    .line 11215
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v6, v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 11218
    :cond_2
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 11219
    add-int/lit8 v0, v1, -0x1

    if-ge v2, v0, :cond_3

    .line 11220
    const-string/jumbo v0, ","

    invoke-virtual {v5, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 11202
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 11223
    :cond_4
    invoke-static {}, Levi;->p()Levi;

    move-result-object v0

    iget-object v1, v4, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Levi;->a(Ljava/util/List;)V

    .line 11225
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "Add mems: "

    aput-object v4, v2, v3

    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11226
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    .line 12041
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_5
    move v1, v0

    goto/16 :goto_1
.end method

.method public final b(Z)V
    .locals 7
    .param p1, "beEar"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 676
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Headset plugged out "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 677
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 676
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v2, :cond_0

    .line 679
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->k()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 680
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v0, v2, :cond_0

    .line 681
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->i()V

    .line 682
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v2, :cond_0

    .line 684
    if-eqz p1, :cond_1

    .line 685
    sget v2, Leuj$l;->conf_txt_voip_headset_out_ear_mode:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, "toast":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "200"

    .line 14764
    invoke-static {v2, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .end local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .end local v1    # "toast":Ljava/lang/String;
    :cond_0
    return-void

    .line 687
    .restart local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    :cond_1
    sget v2, Leuj$l;->conf_txt_voip_headset_out_speaker_mode:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "toast":Ljava/lang/String;
    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5
    .param p1, "confId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 422
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Conf started "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7927
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 424
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->e()V

    .line 428
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->k()V

    .line 429
    return-void
.end method

.method public final c(Z)V
    .locals 7
    .param p1, "connected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 697
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Bluetooth headset state "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 698
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 697
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v2, :cond_0

    .line 700
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->k()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 701
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v0, v2, :cond_0

    .line 702
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->i()V

    .line 703
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v2, :cond_0

    .line 705
    if-nez p1, :cond_1

    .line 706
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->dt_conference_bluetooth_headset_out:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, "warnToast":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->e(Ljava/lang/String;)V

    .line 714
    .end local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .end local v1    # "warnToast":Ljava/lang/String;
    :cond_0
    return-void

    .line 708
    .restart local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->dt_conference_bluetooth_headset_in:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "warnToast":Ljava/lang/String;
    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .param p1, "duration"    # Ljava/lang/String;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 769
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 536
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Record per denied"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9769
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 9367
    if-eqz v0, :cond_1

    .line 9370
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9371
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->and_conf_voip_record_permission_warn_tip:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 9372
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Leuj$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$7;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 9373
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Leuj$l;->dt_conference_nav_to_settings:I

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$6;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$6;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    .line 9382
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 9394
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 9395
    if-eqz v0, :cond_0

    .line 9396
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 9397
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 9398
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 9401
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->A:Z

    .line 539
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 594
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Media start"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$15;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 608
    return-void
.end method

.method public final g()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 661
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v4, "Headset plugged in"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v2, :cond_0

    .line 663
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->k()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 664
    .local v0, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v0, v2, :cond_0

    .line 665
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->i()V

    .line 666
    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v0, v2, :cond_0

    .line 667
    sget v2, Leuj$l;->conf_txt_voip_headset_in:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "toast":Ljava/lang/String;
    const-string/jumbo v2, "200"

    .line 13764
    invoke-static {v2, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    .end local v0    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .end local v1    # "toast":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 295
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 296
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "Create for panel"

    invoke-static {v0, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Leuj$f;->conf_call_and_video_bg_color:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 299
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x680080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 304
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->setVolumeControlStream(I)V

    .line 307
    const/4 v0, 0x0

    invoke-static {v0}, Lewp;->a(Landroid/content/Context;)V

    .line 309
    sget v0, Leuj$j;->activity_teleconf_voip_conf_running:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->setContentView(I)V

    .line 1792
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1793
    if-eqz v1, :cond_0

    .line 1794
    const-string/jumbo v0, "conversation_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->B:Ljava/lang/String;

    .line 1795
    const-string/jumbo v0, "choose_user_identities"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    .line 1796
    const-string/jumbo v0, "user"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1797
    const-string/jumbo v0, "conf_user_number"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->F:I

    .line 1799
    const-string/jumbo v0, "message"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1800
    const-string/jumbo v3, "conf_caller"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->x:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1815
    :cond_0
    :goto_0
    sget v0, Leuj$i;->conf_main_panel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->b:Landroid/view/View;

    .line 1817
    sget v0, Leuj$i;->conf_minimize:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->c:Landroid/view/View;

    .line 1818
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1819
    sget v0, Leuj$i;->conf_add_mem:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->d:Landroid/view/View;

    .line 1820
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1821
    sget v0, Leuj$i;->shortcut_adding_red_dot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->e:Landroid/widget/ImageView;

    .line 1823
    sget v0, Leuj$i;->conf_main_nick_show:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->f:Landroid/widget/TextView;

    .line 1824
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->f:Landroid/widget/TextView;

    invoke-static {}, Lewp;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1825
    sget v0, Leuj$i;->conf_time_show:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->g:Landroid/widget/TextView;

    .line 1826
    sget v0, Leuj$i;->conf_user_grid:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h:Landroid/widget/GridView;

    .line 1827
    sget v0, Leuj$i;->conf_control_mute:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->q:Landroid/view/View;

    .line 1828
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1829
    sget v0, Leuj$i;->conf_control_mute_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1830
    sget v0, Leuj$i;->conf_control_mute_txt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->s:Landroid/widget/TextView;

    .line 1832
    sget v0, Leuj$i;->conf_control_btns:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->u:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    .line 1833
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->u:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->K:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setLeftOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1834
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->u:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setMiddleClickListener(Landroid/view/View$OnClickListener;)V

    .line 1835
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->u:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setRightClickListener(Landroid/view/View$OnClickListener;)V

    .line 1836
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->u:Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;

    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->x:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfCallControlLayout;->setCaller(Z)V

    .line 1838
    sget v0, Leuj$i;->conf_called_panel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->i:Landroid/view/View;

    .line 1839
    sget v0, Leuj$i;->conf_callee_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->j:Landroid/widget/TextView;

    .line 1840
    invoke-static {}, Lewx;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    sget v0, Leuj$l;->dt_conference_voip_conf_invite_incoming_ext:I

    .line 1842
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1844
    sget v0, Leuj$i;->conf_accept_members:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->k:Landroid/widget/TextView;

    .line 1846
    sget v0, Leuj$i;->conf_caller_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->l:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1847
    sget v0, Leuj$i;->conf_caller_nickname:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->m:Landroid/widget/TextView;

    .line 1848
    sget v0, Leuj$i;->conf_caller_company:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->n:Landroid/widget/TextView;

    .line 1849
    sget v0, Leuj$i;->conf_caller_position:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->o:Landroid/widget/TextView;

    .line 1850
    sget v0, Leuj$i;->conf_callee_mems:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->p:Lcom/alibaba/android/teleconf/widget/TeleConfOneLineAvatarView;

    .line 1852
    new-instance v0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    .line 1853
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    sget-object v1, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;->CONF_VOIP:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;

    .line 2052
    if-nez v1, :cond_b

    .line 1854
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1855
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->h:Landroid/widget/GridView;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$16;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$16;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1866
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->hideToolbar()V

    .line 3006
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-nez v0, :cond_1

    .line 3007
    new-instance v0, Lexl;

    invoke-direct {v0, p0}, Lexl;-><init>(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;)V

    .line 3009
    :cond_1
    new-instance v0, Lewm;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-direct {v0, p0, v1}, Lewm;-><init>(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->v:Lewm;

    .line 3010
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->v:Lewm;

    if-eqz v0, :cond_5

    .line 3011
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->v:Lewm;

    .line 3062
    iget-object v1, v0, Lewm;->a:Lcjo$a;

    if-nez v1, :cond_2

    .line 3063
    new-instance v1, Lewm$1;

    invoke-direct {v1, v0}, Lewm$1;-><init>(Lewm;)V

    iput-object v1, v0, Lewm;->a:Lcjo$a;

    .line 3185
    :cond_2
    iget-object v1, v0, Lewm;->b:Lcjo$a;

    if-nez v1, :cond_3

    .line 3186
    new-instance v1, Lewm$2;

    invoke-direct {v1, v0}, Lewm$2;-><init>(Lewm;)V

    iput-object v1, v0, Lewm;->b:Lcjo$a;

    .line 3308
    :cond_3
    iget-object v1, v0, Lewm;->c:Lcjo$a;

    if-nez v1, :cond_4

    .line 3309
    new-instance v1, Lewm$3;

    invoke-direct {v1, v0}, Lewm$3;-><init>(Lewm;)V

    iput-object v1, v0, Lewm;->c:Lcjo$a;

    .line 3336
    :cond_4
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v1

    iget-object v3, v0, Lewm;->a:Lcjo$a;

    invoke-virtual {v1, v3}, Leyn;->a(Lcjo$a;)V

    .line 3337
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v1

    iget-object v3, v0, Lewm;->b:Lcjo$a;

    invoke-virtual {v1, v3}, Leyn;->a(Lcjo$a;)V

    .line 3338
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v1

    iget-object v0, v0, Lewm;->c:Lcjo$a;

    invoke-virtual {v1, v0}, Leyn;->a(Lcjo$a;)V

    .line 3013
    :cond_5
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    invoke-virtual {v0}, Lewh;->d()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->E:I

    .line 3014
    new-instance v0, Lewj;

    invoke-direct {v0, p0}, Lewj;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->t:Lewj;

    .line 4018
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v0, :cond_7

    .line 4019
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->k()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v0

    .line 4020
    if-eqz v0, :cond_d

    .line 4021
    invoke-static {}, Levn;->p()Levn;

    move-result-object v1

    invoke-virtual {v1}, Levn;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->G:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    .line 4022
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->G:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-interface {v1, v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->a(Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;)V

    .line 4023
    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v1, v0, :cond_6

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v1, v0, :cond_c

    .line 4025
    :cond_6
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    invoke-virtual {v0}, Levn;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4026
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->e()V

    .line 4104
    :cond_7
    :goto_3
    return-void

    .line 1802
    :cond_8
    :try_start_1
    const-string/jumbo v3, "conf_callee"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->x:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1809
    :catch_0
    move-exception v0

    .line 1810
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1806
    :cond_9
    :try_start_2
    const-string/jumbo v0, "from"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->x:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1840
    :cond_a
    sget v0, Leuj$l;->dt_conference_voip_conf_invite_incoming:I

    goto/16 :goto_1

    .line 2055
    :cond_b
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->d:Ljava/lang/String;

    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v6, "Set conference type: "

    aput-object v6, v5, v2

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    iput-object v1, v0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->e:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter$ConferenceType;

    goto/16 :goto_2

    .line 4030
    :cond_c
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    sget v1, Levh;->b:I

    invoke-virtual {v0, v1}, Levn;->a(I)V

    .line 4031
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;->RING_INCOMING:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->a(Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$RingType;)V

    .line 4114
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_7

    .line 4117
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 4118
    const-string/jumbo v3, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v6, "load user "

    aput-object v6, v5, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v10

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4119
    invoke-static {}, Leyb;->a()Leyb;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    .line 4120
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$17;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity$17;-><init>(Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;)V

    const-class v4, Leyo$d;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leyo$d;

    .line 4119
    invoke-virtual {v2, v1, v0}, Leyb;->a(Ljava/lang/Long;Leyo$d;)V

    goto/16 :goto_3

    .line 4034
    :cond_d
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->x:Z

    if-eqz v0, :cond_16

    .line 4036
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4037
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4039
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 4040
    const v3, 0x7fffffff

    move v1, v2

    .line 4041
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 4042
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 4043
    if-nez v0, :cond_f

    .line 4041
    :cond_e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 4046
    :cond_f
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_e

    .line 4051
    :goto_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_10

    .line 4052
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4054
    :cond_10
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "createConference, cid "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->B:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", users number "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4057
    :cond_11
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 4058
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4067
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    invoke-virtual {v0}, Levn;->q()Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    move-result-object v3

    .line 4068
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    .line 4069
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerId:Ljava/lang/Long;

    .line 4070
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callHost:Ljava/lang/Long;

    .line 4071
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerNick:Ljava/lang/String;

    .line 4072
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->B:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conversationId:Ljava/lang/String;

    .line 4074
    iget-object v0, v3, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v1, v2

    .line 4075
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_14

    .line 4076
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 4077
    if-nez v0, :cond_13

    .line 4075
    :goto_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 4060
    :cond_12
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Invalid members goto finish"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4062
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    sget v1, Levh;->c:I

    invoke-virtual {v0, v1}, Levn;->a(I)V

    .line 4063
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->finish()V

    goto/16 :goto_3

    .line 4080
    :cond_13
    iget-object v5, v3, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 4083
    :cond_14
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-object v1, v3, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conferenceId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Levn;->b(J)V

    .line 4084
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-object v1, v3, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->calleeIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Levn;->a(Ljava/util/List;)V

    .line 4085
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-object v1, v3, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Levn;->c(J)V

    .line 4086
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-object v1, v3, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callHost:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Levn;->d(J)V

    .line 4087
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-object v1, v3, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Levn;->d(Ljava/lang/String;)V

    .line 4088
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-object v1, v3, Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;->callerNick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Levn;->b(Ljava/lang/String;)V

    .line 4089
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    invoke-virtual {v0, v11}, Levn;->b(I)V

    .line 4090
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_15

    .line 4091
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 5069
    iput-wide v6, v0, Levn;->r:J

    .line 4092
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 5077
    iput-object v1, v0, Levn;->s:Ljava/lang/String;

    .line 4094
    :cond_15
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->x:Z

    .line 5085
    iput-boolean v1, v0, Levn;->t:Z

    .line 4096
    iput-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->G:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    .line 4098
    sget-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 4100
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->w:Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0, v4, v10, v2, v10}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/util/List;ZZI)V

    .line 4102
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->G:Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->a(Lcom/alibaba/android/teleconf/sdk/objects/ConferenceObject;)V

    .line 4103
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->a()V

    goto/16 :goto_3

    .line 4105
    :cond_16
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Invalid station for creating/loading conf"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4107
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    sget v1, Levh;->c:I

    invoke-virtual {v0, v1}, Levn;->a(I)V

    .line 4108
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->finish()V

    goto/16 :goto_3

    :cond_17
    move v1, v3

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 380
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "Destroy for panel"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->isLogin()Z

    move-result v0

    .line 383
    .local v0, "isLogin":Z
    if-nez v0, :cond_0

    .line 385
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->d(Z)V

    .line 387
    :cond_0
    invoke-static {}, Lewu;->a()Lewv;

    move-result-object v1

    invoke-virtual {v1, v4}, Lewv;->a(Liei$a;)V

    .line 389
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->i()V

    .line 392
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->v:Lewm;

    if-eqz v1, :cond_2

    .line 393
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->v:Lewm;

    .line 7342
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v2

    iget-object v3, v1, Lewm;->a:Lcjo$a;

    invoke-virtual {v2, v3}, Leyn;->b(Lcjo$a;)V

    .line 7343
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v2

    iget-object v3, v1, Lewm;->b:Lcjo$a;

    invoke-virtual {v2, v3}, Leyn;->b(Lcjo$a;)V

    .line 7344
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v2

    iget-object v1, v1, Lewm;->c:Lcjo$a;

    invoke-virtual {v2, v1}, Leyn;->b(Lcjo$a;)V

    .line 395
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->t:Lewj;

    if-eqz v1, :cond_3

    .line 396
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->t:Lewj;

    invoke-virtual {v1}, Lewj;->a()V

    .line 397
    iput-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->t:Lewj;

    .line 399
    :cond_3
    invoke-static {}, Leyy;->a()Leyy;

    move-result-object v1

    invoke-virtual {v1}, Leyy;->b()V

    .line 400
    invoke-static {}, Lewp;->a()V

    .line 401
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 402
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 774
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-nez v2, :cond_0

    .line 787
    :goto_0
    return v0

    .line 777
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 779
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v0, v1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->c(Z)V

    move v0, v1

    .line 780
    goto :goto_0

    .line 782
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v2, v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->c(Z)V

    move v0, v1

    .line 783
    goto :goto_0

    .line 777
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 333
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 5482
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->H:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 5483
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->H:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 5484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->H:Ljava/util/TimerTask;

    .line 335
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 5927
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a(Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;)V

    .line 343
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->k()V

    .line 344
    return-void
.end method

.method protected onStart()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 318
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 319
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Start for panel"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->r()V

    .line 323
    invoke-static {}, Lewu;->a()Lewv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    invoke-interface {v1}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->s()Liei$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lewv;->a(Liei$a;)V

    .line 326
    :cond_0
    invoke-direct {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->d(Z)V

    .line 327
    invoke-static {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfGlobalDialogActivity;->a(Landroid/content/Context;)V

    .line 328
    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->z:Z

    .line 329
    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 348
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 349
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Stop for panel"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->z:Z

    if-nez v0, :cond_0

    .line 6290
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    invoke-virtual {v0}, Levn;->c()Z

    move-result v0

    .line 350
    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->d(Z)V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->d(Z)V

    goto :goto_0
.end method

.method public synthetic setPresenter(Lcjd;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 83
    check-cast p1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    .line 16723
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    .line 16724
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    if-eqz v0, :cond_2

    .line 16725
    const/4 v0, 0x0

    .line 16726
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v1, :cond_5

    .line 16727
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 16729
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16730
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 16731
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 16732
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 16735
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 16736
    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->D:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 16741
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 16742
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->I:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->x:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v2, v1, v0}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$a;->b(Ljava/lang/String;Z)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 16744
    :cond_4
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Invalid user when presenter init"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16746
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    sget v1, Levh;->c:I

    invoke-virtual {v0, v1}, Levn;->a(I)V

    .line 16747
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleVoipConfRunningActivity;->finish()V

    goto :goto_2

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method
