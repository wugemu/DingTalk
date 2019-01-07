.class public final Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;
.super Ljava/lang/Object;
.source "TeleConfRunningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    .prologue
    .line 3044
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 12
    .param p1, "tag"    # I
    .param p2, "subTag"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3046
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "IConfOperResult, onSuccess, "

    aput-object v9, v7, v8

    .line 3047
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    const/4 v8, 0x2

    const-string/jumbo v9, ", "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3046
    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3048
    packed-switch p1, :pswitch_data_0

    .line 3100
    :cond_0
    :goto_0
    return-void

    .line 3051
    :pswitch_0
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    const v6, 0x3e99999a    # 0.3f

    invoke-static {v10, v6}, Lewp;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v5, v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;I)I

    .line 3053
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    sget v6, Leuj$k;->yoyo:I

    invoke-static {v5, v6}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 3054
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;)V

    invoke-virtual {v1, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3060
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3061
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v0

    .line 3062
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3066
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    const/16 v5, 0x1f

    if-ne v5, p2, :cond_0

    .line 3067
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->l(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->k(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3068
    :cond_1
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Conference is exiting or died"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3072
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {}, Levi;->p()Levi;

    move-result-object v6

    invoke-virtual {v6}, Levi;->d()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;J)J

    .line 3073
    invoke-static {}, Levi;->p()Levi;

    move-result-object v5

    sget v6, Levh;->b:I

    invoke-virtual {v5, v6}, Levi;->a(I)V

    .line 3074
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ad(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 3075
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ab(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3076
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 3077
    .local v2, "myId":J
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;->a(Ljava/lang/Long;)I

    move-result v4

    .line 3078
    .local v4, "status":I
    if-ne v4, v11, :cond_3

    .line 3079
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->C(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    goto/16 :goto_0

    .line 3081
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    goto/16 :goto_0

    .line 3086
    .end local v2    # "myId":J
    .end local v4    # "status":I
    :pswitch_2
    const/16 v5, 0x18

    if-eq v5, p2, :cond_4

    const/16 v5, 0x19

    if-ne v5, p2, :cond_5

    .line 3088
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->E(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3089
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5, v10}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    goto/16 :goto_0

    .line 3091
    :cond_5
    const/16 v5, 0x17

    if-ne v5, p2, :cond_0

    .line 3092
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Q(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3093
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5, v10}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    goto/16 :goto_0

    .line 3048
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "tag"    # I
    .param p2, "subTag"    # I
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3103
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "IConfOperResult, onFailed, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3104
    const/4 v1, 0x0

    .line 3106
    .local v1, "errCode":I
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3107
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3112
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 3206
    :cond_1
    :goto_1
    return-void

    .line 3109
    :catch_0
    move-exception v0

    .line 3110
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 3114
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_0
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3115
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3117
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 3118
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5, p3}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3119
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ae(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    goto :goto_1

    .line 3120
    :cond_3
    const v5, 0x61ab5

    if-ne v1, v5, :cond_4

    .line 3121
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6, p4}, Leyw;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;ZLjava/lang/String;)V

    goto :goto_1

    .line 3122
    :cond_4
    const v5, 0x61ada

    if-ne v1, v5, :cond_5

    .line 3123
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3124
    invoke-static {}, Lewx;->a()Z

    move-result v2

    .line 3125
    .local v2, "isOpen":Z
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5, p4, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;Z)V

    goto :goto_1

    .line 3126
    .end local v2    # "isOpen":Z
    :cond_5
    const v5, 0x61adb

    if-ne v1, v5, :cond_7

    .line 3127
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 3128
    invoke-static {}, Lewx;->a()Z

    move-result v2

    .line 3129
    .restart local v2    # "isOpen":Z
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->af(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/String;

    move-result-object v3

    .line 3130
    .local v3, "orgId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3131
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5, p4, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;Z)V

    goto :goto_1

    .line 3133
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5, p4, v3, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 3136
    .end local v2    # "isOpen":Z
    .end local v3    # "orgId":Ljava/lang/String;
    :cond_7
    const v5, 0x61ad0

    if-ne v1, v5, :cond_8

    .line 3137
    invoke-static {}, Lewx;->a()Z

    move-result v2

    .line 3138
    .restart local v2    # "isOpen":Z
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5, p4, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 3139
    .end local v2    # "isOpen":Z
    :cond_8
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    const/16 v5, 0x198

    if-eq v1, v5, :cond_9

    .line 3140
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5, p4}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->e(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Ljava/lang/String;)V

    .line 3142
    new-instance v4, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    invoke-direct {v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;-><init>()V

    .line 3143
    .local v4, "timeoutAction":Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    sget-object v5, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;->TYPE_CONF_CALL_FAIL:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    iput-object v5, v4, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->b:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$AlarmType;

    .line 3144
    invoke-static {}, Levi;->p()Levi;

    move-result-object v5

    invoke-virtual {v5}, Levi;->e()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->a:Ljava/lang/String;

    .line 3145
    const-string/jumbo v5, "permission"

    iput-object v5, v4, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->e:Ljava/lang/String;

    .line 3146
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->d:J

    .line 3147
    iput-object p4, v4, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->f:Ljava/lang/String;

    .line 3148
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)V

    goto/16 :goto_1

    .line 3151
    .end local v4    # "timeoutAction":Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;
    :cond_9
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->f(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 3152
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ag(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 3153
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ah(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 3154
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ai(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3155
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->aj(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V

    .line 3156
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Leuv;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    sget v7, Leuj$l;->conf_txt_create_failed_tip:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 4034
    const/4 v7, 0x0

    invoke-virtual {v5, v8, v9, v6, v7}, Leuv;->a(JLjava/lang/String;I)V

    goto/16 :goto_1

    .line 3160
    :pswitch_1
    const/16 v5, 0x1f

    if-ne v5, p2, :cond_1

    .line 3161
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ab(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 3166
    :pswitch_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x198

    if-eq v1, v5, :cond_1

    .line 3167
    const/16 v5, 0x15

    if-ne v5, p2, :cond_b

    .line 3168
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 3169
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v5

    iput-object p4, v5, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->f:Ljava/lang/String;

    .line 3170
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)V

    .line 3171
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    .line 3173
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 3174
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->ak(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3177
    :cond_a
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3178
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v5

    iput-object p4, v5, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->f:Ljava/lang/String;

    .line 3179
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)V

    .line 3180
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    .line 3182
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3183
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->P(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 3186
    :cond_b
    const/16 v5, 0x18

    if-eq v5, p2, :cond_c

    const/16 v5, 0x19

    if-ne v5, p2, :cond_d

    .line 3188
    :cond_c
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->E(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3189
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->E(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v5

    iput-object p4, v5, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->f:Ljava/lang/String;

    .line 3190
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->E(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)V

    .line 3191
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    goto/16 :goto_1

    .line 3193
    :cond_d
    const/16 v5, 0x17

    if-ne v5, p2, :cond_1

    .line 3194
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Q(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3195
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Q(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v5

    iput-object p4, v5, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;->f:Ljava/lang/String;

    .line 3196
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->Q(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a(Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)V

    .line 3197
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$a;

    goto/16 :goto_1

    .line 3112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized a(Z)V
    .locals 4
    .param p1, "needSuddenly"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 3210
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->al(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3211
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v0

    .line 4553
    iget-boolean v0, v0, Lewh;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3211
    if-eqz v0, :cond_0

    .line 3221
    :goto_0
    monitor-exit p0

    return-void

    .line 3215
    :cond_0
    :try_start_1
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onFinishActivity, needSuddenly "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3216
    if-eqz p1, :cond_1

    .line 3217
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->p(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3219
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity$a;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;->K(Lcom/alibaba/android/teleconf/activities/TeleConfRunningActivity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
