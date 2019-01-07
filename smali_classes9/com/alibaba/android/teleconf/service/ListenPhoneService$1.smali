.class final Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;
.super Landroid/content/BroadcastReceiver;
.source "ListenPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/service/ListenPhoneService;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 155
    if-nez p2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string/jumbo v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 159
    const-string/jumbo v5, "incoming_number"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "incomingNumber":Ljava/lang/String;
    const/4 v1, 0x0

    .line 162
    .local v1, "formatNumber":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 163
    invoke-static {v2}, Leyv;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    :cond_2
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onCallStateChanged, number "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v5, "state"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "state":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 169
    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 170
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "CALL_STATE_IDLE, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v5, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 172
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 173
    invoke-static {}, Levi;->p()Levi;

    move-result-object v5

    invoke-virtual {v5}, Levi;->c()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 174
    iget-object v5, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a(Lcom/alibaba/android/teleconf/service/ListenPhoneService;Z)V

    .line 176
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->b(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a(Lcom/alibaba/android/teleconf/service/ListenPhoneService;ZLjava/lang/String;)V

    .line 178
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v5

    const/4 v6, 0x0

    .line 1931
    iput-object v6, v5, Lewl;->k:Ljava/lang/String;

    .line 179
    iget-object v5, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->c(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)V

    goto/16 :goto_0

    .line 180
    :cond_4
    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 181
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "CALL_STATE_RINGING, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v5, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-static {v5, v2}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a(Lcom/alibaba/android/teleconf/service/ListenPhoneService;Ljava/lang/String;)V

    .line 184
    iget-object v5, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->b(Lcom/alibaba/android/teleconf/service/ListenPhoneService;Z)Z

    .line 185
    iget-object v5, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-static {v5, v2}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->b(Lcom/alibaba/android/teleconf/service/ListenPhoneService;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    iget-object v5, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->d(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)V

    .line 188
    invoke-static {}, Levi;->p()Levi;

    move-result-object v5

    const/4 v6, 0x1

    .line 2075
    iput-boolean v6, v5, Levi;->v:Z

    .line 190
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "beConf":Z
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->b(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lewl;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 193
    invoke-static {}, Lewe;->a()Lewe;

    move-result-object v6

    .line 2098
    const-string/jumbo v5, "result:success"

    iput-object v5, v6, Lewe;->i:Ljava/lang/String;

    .line 2099
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "call_ring_time:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lewe;->c:Ljava/lang/String;

    .line 2100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v6, Lewe;->j:J

    sub-long/2addr v8, v10

    .line 2101
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->isLogin()Z

    .line 2102
    iget-object v5, v6, Lewe;->l:Landroid/os/Handler;

    iget-object v7, v6, Lewe;->m:Ljava/lang/Runnable;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2103
    iget-boolean v5, v6, Lewe;->k:Z

    if-eqz v5, :cond_7

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2104
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    const-string/jumbo v7, "pref_key_can_upload"

    invoke-static {v5, v7}, Lcpk;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 2105
    if-nez v5, :cond_5

    .line 2106
    const-wide/16 v10, 0x3a98

    cmp-long v7, v8, v10

    if-gez v7, :cond_5

    .line 2107
    const/4 v5, 0x1

    .line 2108
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const-string/jumbo v8, "pref_key_can_upload"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2111
    :cond_5
    if-eqz v5, :cond_6

    .line 2112
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2113
    const-string/jumbo v7, "mPhoneNumber"

    iget-object v8, v6, Lewe;->a:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2114
    const-string/jumbo v7, "mBeginTime"

    iget-object v8, v6, Lewe;->b:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2115
    const-string/jumbo v7, "mRingTime"

    iget-object v8, v6, Lewe;->c:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2116
    const-string/jumbo v7, "mBizType"

    iget-object v8, v6, Lewe;->e:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2117
    const-string/jumbo v7, "mUinqKey"

    iget-object v8, v6, Lewe;->d:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2118
    const-string/jumbo v7, "mDev"

    iget-object v8, v6, Lewe;->f:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2119
    const-string/jumbo v7, "mCallerUid"

    iget-object v8, v6, Lewe;->g:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2120
    const-string/jumbo v7, "mCallerMobile"

    iget-object v8, v6, Lewe;->h:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    const-string/jumbo v7, "mResult"

    iget-object v8, v6, Lewe;->i:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v9, "meeting_phone_ring"

    invoke-interface {v7, v8, v9, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2124
    :cond_6
    const/4 v5, 0x0

    iput-boolean v5, v6, Lewe;->k:Z

    .line 194
    :cond_7
    iget-object v5, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a(Lcom/alibaba/android/teleconf/service/ListenPhoneService;Z)V

    .line 195
    iget-object v5, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->e(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)V

    .line 197
    const/4 v0, 0x1

    .line 200
    :cond_8
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->b(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)Ljava/lang/String;

    move-result-object v6

    .line 2931
    iput-object v6, v5, Lewl;->k:Ljava/lang/String;

    .line 202
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v5

    .line 3927
    iget-object v3, v5, Lewl;->j:Leym;

    .line 203
    .local v3, "infoObject":Leym;
    if-eqz v3, :cond_9

    .line 204
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v5

    new-instance v6, Leym;

    invoke-direct {v6, v3}, Leym;-><init>(Leym;)V

    invoke-virtual {v5, v6}, Lewl;->a(Leym;)V

    .line 205
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lewl;->a(Leym;Z)V

    goto/16 :goto_0

    .line 206
    :cond_9
    if-nez v0, :cond_0

    .line 207
    iget-object v5, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    iget-object v6, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->b(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p2, v6}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a(Lcom/alibaba/android/teleconf/service/ListenPhoneService;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    .end local v0    # "beConf":Z
    .end local v3    # "infoObject":Leym;
    :cond_a
    sget-object v5, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "CALL_STATE_OFFHOOK, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->b(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lewl;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 213
    iget-object v5, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->b(Lcom/alibaba/android/teleconf/service/ListenPhoneService;Z)Z

    .line 215
    :cond_b
    iget-object v5, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->b(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->a(Lcom/alibaba/android/teleconf/service/ListenPhoneService;ZLjava/lang/String;)V

    .line 217
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v5

    const/4 v6, 0x0

    .line 3931
    iput-object v6, v5, Lewl;->k:Ljava/lang/String;

    .line 218
    iget-object v5, p0, Lcom/alibaba/android/teleconf/service/ListenPhoneService$1;->a:Lcom/alibaba/android/teleconf/service/ListenPhoneService;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/service/ListenPhoneService;->c(Lcom/alibaba/android/teleconf/service/ListenPhoneService;)V

    goto/16 :goto_0
.end method
