.class public Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;
.super Lcom/alibaba/android/teleconf/widget/BaseFloatView;
.source "ConferenceFloatView.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Z

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private f:Landroid/content/Context;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x2

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/widget/BaseFloatView;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->a:Z

    .line 35
    iput v2, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->g:I

    .line 39
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->f:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->getWindowManagerParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 41
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 42
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 43
    invoke-static {p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 44
    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->setWindowManagerParam(Landroid/view/WindowManager$LayoutParams;)V

    .line 46
    sget v1, Leuj$i;->conf_running_anim:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    .line 47
    sget v1, Leuj$i;->conf_running_txt:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->d:Landroid/widget/TextView;

    .line 48
    sget v1, Leuj$i;->conf_running_icon:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 49
    return-void
.end method

.method private c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 142
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->f:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 157
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-static {}, Levn;->p()Levn;

    move-result-object v4

    invoke-virtual {v4}, Levn;->l()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "cid":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 148
    .local v3, "mainUser":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-static {}, Levn;->p()Levn;

    move-result-object v4

    .line 2065
    iget-wide v4, v4, Levn;->r:J

    .line 148
    iput-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 149
    invoke-static {}, Levn;->p()Levn;

    move-result-object v4

    .line 2073
    iget-object v4, v4, Levn;->s:Ljava/lang/String;

    .line 149
    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 151
    invoke-static {}, Levn;->p()Levn;

    move-result-object v4

    .line 2081
    iget-boolean v2, v4, Levn;->t:Z

    .line 152
    .local v2, "isCaller":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "conversation_id"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v4, "user"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 155
    const-string/jumbo v4, "from"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->f:Landroid/content/Context;

    invoke-static {v4, v0}, Lewb;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 66
    if-eqz p1, :cond_1

    .line 67
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 68
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 69
    .local v0, "startAnim":Z
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    if-eqz v1, :cond_0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->a()V

    .line 72
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->setVisibility(I)V

    .line 78
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->a:Z

    .line 85
    .end local v0    # "startAnim":Z
    :cond_1
    :goto_1
    return-void

    .line 74
    .restart local v0    # "startAnim":Z
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->b()V

    .line 75
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/wave/WaveView;->setVisibility(I)V

    goto :goto_0

    .line 79
    .end local v0    # "startAnim":Z
    .restart local p1    # "data":Ljava/lang/Object;
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->d:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 61
    sget v0, Leuj$j;->layout_conf_floating_inner_v2:I

    return v0
.end method

.method public onClick()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 89
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->b:Ljava/lang/String;

    const-string/jumbo v4, "ConferenceFloatView, onClick"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_conf_floating_enter_opt_enable"

    .line 1083
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 91
    .local v0, "isOptEnabled":Z
    iget v2, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->g:I

    if-nez v2, :cond_3

    .line 92
    invoke-static {}, Levi;->p()Levi;

    move-result-object v2

    invoke-virtual {v2}, Levi;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "meeting_back_to_meeting"

    invoke-interface {v2, v5, v3, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 95
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->b:Ljava/lang/String;

    const-string/jumbo v4, "onClick, go back conference activity"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz v0, :cond_2

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->f:Landroid/content/Context;

    invoke-static {v2}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v2

    invoke-virtual {v2}, Levu;->e()Landroid/app/PendingIntent;

    move-result-object v1

    .line 99
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->b()V

    .line 135
    return-void

    .line 102
    .restart local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->f:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 105
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->b:Ljava/lang/String;

    const-string/jumbo v4, "PendingIntent send exp"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->f:Landroid/content/Context;

    invoke-static {v2, v5, v5}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->f:Landroid/content/Context;

    invoke-static {v2, v5, v5}, Lewb;->a(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 112
    :cond_3
    iget v2, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->g:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 113
    invoke-static {}, Levn;->p()Levn;

    move-result-object v2

    invoke-virtual {v2}, Levn;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "phone_voip_conference_enter_click"

    invoke-interface {v2, v5, v3, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->b:Ljava/lang/String;

    const-string/jumbo v4, "onClick, go back voip-conf"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    if-eqz v0, :cond_4

    .line 119
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->f:Landroid/content/Context;

    invoke-static {v2}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v2

    invoke-virtual {v2}, Levu;->h()Landroid/app/PendingIntent;

    move-result-object v1

    .line 120
    .restart local v1    # "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v1, :cond_5

    .line 121
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 126
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_1
    move-exception v2

    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->b:Ljava/lang/String;

    const-string/jumbo v4, "PendingIntent send exp"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->c()V

    goto :goto_0

    .line 123
    .restart local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_5
    :try_start_3
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->c()V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public setConfType(I)V
    .locals 2
    .param p1, "confType"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 52
    iput p1, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->g:I

    .line 53
    iget v0, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConferenceFloatView;->e:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Leuj$l;->icon_voicephone_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 57
    :cond_0
    return-void
.end method
