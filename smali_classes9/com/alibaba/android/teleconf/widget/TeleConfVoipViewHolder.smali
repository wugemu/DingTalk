.class public Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;
.super Leza;
.source "TeleConfVoipViewHolder.java"


# static fields
.field private static i:Ljava/lang/String;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

.field c:Landroid/view/View;

.field d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Z

.field private j:Lezd;

.field private k:Landroid/content/Context;

.field private l:Lezd$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Leza;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    .line 33
    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->k:Landroid/content/Context;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->h:Z

    .line 213
    new-instance v0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder$1;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->l:Lezd$a;

    .line 38
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->k:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;)Lezd;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .param p1, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 259
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 265
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_calling:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_deviceoff:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 271
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_hanguped:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 274
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_confrunning:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 277
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_noanswer:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 280
    :pswitch_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_no_connect:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 283
    :pswitch_6
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_poweroff:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 286
    :pswitch_7
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_rejected:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 289
    :pswitch_8
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->dt_conf_callselect_user_noactive_state:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 292
    :pswitch_9
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->dt_conference_voip_call_prevented:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2
    .param p1, "raw"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    sget v0, Leuj$i;->fl_txt_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 45
    sget v0, Leuj$i;->fl_txt_avatar_anim:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    .line 46
    sget v0, Leuj$i;->fl_img_calling:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    .line 47
    sget v0, Leuj$i;->fl_img_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    .line 48
    sget v0, Leuj$i;->fl_img_mute:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->c:Landroid/view/View;

    .line 49
    sget v0, Leuj$i;->text_user_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->f:Landroid/widget/TextView;

    .line 50
    sget v0, Leuj$i;->text_user_name_append:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->g:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_status_calling:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    :cond_0
    return-void
.end method

.method public final a(Lezd;I)V
    .locals 12
    .param p1, "data"    # Lezd;
    .param p2, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    .line 1115
    iput-object v4, v0, Lezd;->b:Lezd$a;

    .line 64
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    iget-object v0, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 2078
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b()V

    .line 2079
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->setVisibility(I)V

    .line 2081
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->clearAnimation()V

    .line 2082
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-virtual {v0, v4, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    sget v1, Leuj$h;->conf_icon_offline:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->setImageResource(I)V

    .line 2084
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->setVisibility(I)V

    .line 2086
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2088
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v1, Leuj$h;->conf_icon_offline:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 2090
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 2091
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->bringToFront()V

    .line 2093
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 2094
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 2096
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2097
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_3
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    if-eqz v0, :cond_4

    .line 71
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->l:Lezd$a;

    .line 2115
    iput-object v1, v0, Lezd;->b:Lezd$a;

    .line 74
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    .line 3101
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    iget-object v0, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_a

    .line 3102
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    iget-object v0, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 3104
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    iget-object v0, v0, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    .line 3105
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v3, Leuj$l;->me_flag:I

    invoke-virtual {v0, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3106
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->f:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 3112
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3113
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3114
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    invoke-virtual {v0}, Lezd;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3115
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3116
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 3121
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    invoke-virtual {v0}, Lezd;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3122
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    invoke-virtual {v0}, Lezd;->c()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3123
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->setVisibility(I)V

    .line 3124
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->a()V

    .line 3137
    :goto_2
    invoke-virtual {v1}, Lezd;->a()I

    move-result v0

    .line 3138
    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 3139
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b()V

    .line 3140
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->setVisibility(I)V

    .line 3141
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3142
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v1, Leuj$h;->conf_icon_offline:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 3143
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Leuj$l;->conf_txt_status_calling:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x1

    .line 3144
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Leuj$l;->dt_accessibility_avatar:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3143
    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3146
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3147
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3148
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3149
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3150
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3151
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a(I)V

    .line 3152
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 3200
    :cond_5
    :goto_3
    return-void

    .line 3108
    :cond_6
    const-string/jumbo v0, ""

    .line 3109
    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->f:Landroid/widget/TextView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_0

    .line 3118
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3119
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->bringToFront()V

    goto/16 :goto_1

    .line 3126
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->setVisibility(I)V

    .line 3127
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b()V

    goto/16 :goto_2

    .line 3130
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b()V

    .line 3131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->setVisibility(I)V

    goto/16 :goto_2

    .line 3134
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->f:Landroid/widget/TextView;

    sget v2, Leuj$l;->conf_guide_add_member:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 3153
    :cond_b
    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    .line 3158
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->setVisibility(I)V

    .line 3159
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    iget-object v1, v1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3160
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    aput-object v2, v1, v9

    const/4 v2, 0x1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Leuj$l;->dt_accessibility_avatar:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3162
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3163
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3164
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3165
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3166
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 3167
    :cond_c
    if-nez v0, :cond_e

    .line 3168
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b()V

    .line 3169
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->setVisibility(I)V

    .line 3170
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3171
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 3172
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v2, Leuj$h;->conf_icon_offline:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 3173
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Leuj$f;->text_color_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3174
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Leuj$f;->text_color_white:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3175
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3176
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3178
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->h:Z

    if-nez v0, :cond_d

    .line 3179
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3181
    :cond_d
    invoke-virtual {v1}, Lezd;->b()I

    move-result v0

    .line 3182
    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a(I)V

    goto/16 :goto_3

    .line 3183
    :cond_e
    const/16 v2, 0x10

    if-ne v0, v2, :cond_10

    .line 3184
    invoke-virtual {v1}, Lezd;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 3185
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Lezd;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3189
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->g:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3190
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3191
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b()V

    .line 3192
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->setVisibility(I)V

    .line 3193
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v1, Leuj$h;->conf_add_member_bg:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 3194
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 3195
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->bringToFront()V

    .line 3196
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Leuj$l;->conf_guide_add_member:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3198
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3199
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3200
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 3187
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->f:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_guide_add_member:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 3201
    :cond_10
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 3202
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    iget-object v1, v1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3203
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->j:Lezd;

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    aput-object v2, v1, v9

    const/4 v2, 0x1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Leuj$l;->dt_accessibility_avatar:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3205
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3206
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3207
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3208
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3209
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfVoipViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method
