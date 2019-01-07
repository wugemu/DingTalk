.class public Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleConfWaitingActivity.java"

# interfaces
.implements Levs;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

.field private t:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->b:J

    .line 76
    const-string/jumbo v0, "conf_unknown"

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->r:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 257
    sget v2, Leuj$i;->teleconf_fragment_container:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    .line 259
    .local v0, "fragmentManager":Lcn;
    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 260
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const/16 v2, 0x2002

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(I)Landroid/support/v4/app/FragmentTransaction;

    .line 261
    sget v2, Leuj$i;->teleconf_fragment_container:I

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 262
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(I)Landroid/support/v4/app/FragmentTransaction;

    .line 263
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->c()I

    .line 265
    .end local v0    # "fragmentManager":Lcn;
    .end local v1    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 6
    .param p1, "addFragment"    # Z
    .param p2, "roleState"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 298
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    :goto_0
    return-void

    .line 301
    :cond_0
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Goto voip frag, add "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", role "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;-><init>()V

    .line 303
    .local v0, "fragment":Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v1, "fragmentArgs":Landroid/os/Bundle;
    const-string/jumbo v2, "user_id"

    iget-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->b:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 305
    const-string/jumbo v2, "user_name"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string/jumbo v2, "user_mobile"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string/jumbo v2, "media_id"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v2, "conf_talker"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    const-string/jumbo v2, "from"

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->k:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 311
    const-string/jumbo v2, "conf_voip_to_pstn"

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->l:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    :cond_1
    :goto_1
    const-string/jumbo v2, "conf_voip_effective_caller_id"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string/jumbo v2, "conf_voip_user_to_user"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 323
    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 324
    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->s:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    goto/16 :goto_0

    .line 312
    :cond_2
    const-string/jumbo v2, "conf_caller"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    const-string/jumbo v2, "conf_voip_to_pstn"

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->l:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    const-string/jumbo v2, "conf_voip_call_to_pstn"

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->m:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    const-string/jumbo v2, "conf_voip_extra"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string/jumbo v2, "conf_voip_other_net"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string/jumbo v2, "conversation_id"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(ZZ)V
    .locals 6
    .param p1, "addFragment"    # Z
    .param p2, "isCalling"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 268
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Goto conf frag , add "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", calling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v0, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;-><init>()V

    .line 270
    .local v0, "fragment":Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 271
    .local v1, "fragmentArgs":Landroid/os/Bundle;
    const-string/jumbo v2, "user_id"

    iget-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->b:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 272
    const-string/jumbo v2, "user_mobile"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo v2, "user_name"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string/jumbo v2, "media_id"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v2, "conf_call_be_biz_call"

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->n:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    const-string/jumbo v2, "conf_voip_can_support"

    iget-boolean v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->o:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    const-string/jumbo v2, "conf_agentId"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->n:Z

    if-eqz v2, :cond_1

    .line 283
    const-string/jumbo v2, "conf_call_biz_call_info"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->p:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 285
    :cond_1
    if-eqz p2, :cond_2

    .line 286
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "conf_calling"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_0
    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfWaitingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 293
    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 294
    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->s:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    .line 295
    return-void

    .line 288
    :cond_2
    const-string/jumbo v2, "message"

    const-string/jumbo v3, "conf_preparing"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string/jumbo v2, "conversation_id"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->t:Landroid/view/View;

    sget v1, Leuj$f;->conf_transparent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 197
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 7
    .param p1, "confState"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 170
    if-nez p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    .line 174
    check-cast v3, Landroid/os/Bundle;

    .line 175
    .local v3, "state":Landroid/os/Bundle;
    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "role":Ljava/lang/String;
    const-string/jumbo v4, "conf_voip_to_pstn"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 178
    .local v1, "isSupportToPstn":Z
    const-string/jumbo v4, "conf_voip_call_to_pstn"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 179
    .local v0, "isCallingToPstn":Z
    const-string/jumbo v4, "conf_caller"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->m:Z

    .line 181
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->l:Z

    .line 182
    const-string/jumbo v4, "conf_voip_extra"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->q:Ljava/lang/String;

    .line 184
    invoke-direct {p0, v5, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_2
    const-string/jumbo v4, "conf_caller:conf_calling"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    invoke-direct {p0, v5, v6}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->a(ZZ)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->t:Landroid/view/View;

    sget v1, Leuj$f;->conf_call_and_video_bg_color:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 204
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
    .line 83
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-static {}, Leve;->a()Leve;

    move-result-object v8

    .line 2140
    iget-boolean v6, v8, Leve;->g:Z

    .line 86
    .local v6, "isFromUser":Z
    if-nez v6, :cond_1

    .line 87
    const-string/jumbo v8, "tele_conf"

    sget-object v9, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->a:Ljava/lang/String;

    const-string/jumbo v10, "The call is not from user."

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->finish()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    sget v9, Leuj$f;->conf_call_and_video_bg_color:I

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const v9, 0x680080

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->setVolumeControlStream(I)V

    .line 102
    const/4 v8, 0x0

    invoke-static {v8}, Lewp;->a(Landroid/content/Context;)V

    .line 104
    sget v8, Leuj$j;->teleconf_waiting_for_call_parent:I

    invoke-virtual {p0, v8}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->setContentView(I)V

    .line 2220
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 2221
    if-nez v9, :cond_7

    .line 2250
    :cond_2
    :goto_1
    sget v8, Leuj$i;->teleconf_fragment_container:I

    invoke-virtual {p0, v8}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->t:Landroid/view/View;

    .line 108
    :try_start_0
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 109
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v8, "onCreate: "

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 110
    iget-wide v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->b:J

    invoke-virtual {v0, v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 111
    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 112
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 113
    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 114
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 115
    const-string/jumbo v8, "tele_conf"

    sget-object v9, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :goto_2
    const-string/jumbo v8, "conf_caller:conf_preparing"

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->r:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 122
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->a(ZZ)V

    .line 129
    :cond_3
    :goto_3
    invoke-static {}, Leve;->a()Leve;

    move-result-object v4

    .line 130
    .local v4, "dataCenter":Leve;
    if-eqz v4, :cond_d

    iget-wide v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->b:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_4

    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->c:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 131
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->b()Lchy;

    move-result-object v8

    invoke-virtual {v8}, Lchy;->getCurrentUid()J

    move-result-wide v2

    .line 3132
    .local v2, "callerId":J
    iput-object p0, v4, Leve;->f:Landroid/app/Activity;

    .line 133
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 4103
    if-nez v8, :cond_b

    .line 134
    :goto_4
    iget-wide v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->b:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    .line 135
    iget-wide v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 5084
    if-nez v8, :cond_c

    .line 137
    :cond_5
    :goto_5
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->c:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 138
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->c:Ljava/lang/String;

    .line 5095
    iput-object v8, v4, Leve;->b:Ljava/lang/String;

    .line 140
    :cond_6
    sget v8, Levh;->b:I

    .line 6072
    iget v9, v4, Leve;->e:I

    if-eq v9, v8, :cond_0

    .line 6075
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "status : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6076
    iput v8, v4, Leve;->e:I

    goto/16 :goto_0

    .line 2224
    .end local v2    # "callerId":J
    .end local v4    # "dataCenter":Leve;
    :cond_7
    const-string/jumbo v8, "user_id"

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->b:J

    .line 2225
    const-string/jumbo v8, "user_mobile"

    invoke-virtual {v9, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->c:Ljava/lang/String;

    .line 2226
    const-string/jumbo v8, "user_name"

    invoke-virtual {v9, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->d:Ljava/lang/String;

    .line 2227
    const-string/jumbo v8, "media_id"

    invoke-virtual {v9, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->e:Ljava/lang/String;

    .line 2228
    const-string/jumbo v8, "message"

    invoke-virtual {v9, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->r:Ljava/lang/String;

    .line 2229
    const-string/jumbo v8, "conversation_id"

    invoke-virtual {v9, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->f:Ljava/lang/String;

    .line 2230
    const-string/jumbo v8, "conf_call_be_biz_call"

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->n:Z

    .line 2231
    const-string/jumbo v8, "conf_call_biz_call_info"

    invoke-virtual {v9, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->p:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 2232
    const-string/jumbo v8, "conf_voip_can_support"

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->o:Z

    .line 2233
    const-string/jumbo v8, "conf_agentId"

    invoke-virtual {v9, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->j:Ljava/lang/String;

    .line 2235
    const-string/jumbo v8, "conf_voip_effective_caller_id"

    invoke-virtual {v9, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->h:Ljava/lang/String;

    .line 2236
    const-string/jumbo v8, "conf_voip_user_to_user"

    invoke-virtual {v9, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->i:Ljava/lang/String;

    .line 2238
    const-string/jumbo v8, "conf_talker"

    iget-object v10, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->r:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2239
    const-string/jumbo v8, "from"

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->k:Z

    .line 2240
    const-string/jumbo v8, "conf_voip_to_pstn"

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->l:Z

    goto/16 :goto_1

    .line 2241
    :cond_8
    const-string/jumbo v8, "conf_caller"

    iget-object v10, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->r:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2242
    const-string/jumbo v8, "conf_voip_to_pstn"

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->l:Z

    .line 2243
    const-string/jumbo v8, "conf_voip_extra"

    invoke-virtual {v9, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->q:Ljava/lang/String;

    .line 2244
    const-string/jumbo v8, "conf_voip_call_to_pstn"

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->m:Z

    .line 2245
    const-string/jumbo v8, "conf_voip_other_net"

    invoke-virtual {v9, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->g:Ljava/lang/String;

    goto/16 :goto_1

    .line 116
    :catch_0
    move-exception v5

    .line 117
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 123
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_9
    const-string/jumbo v8, "conf_caller:conf_calling"

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->r:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 124
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->a(ZZ)V

    goto/16 :goto_3

    .line 125
    :cond_a
    const-string/jumbo v8, "conf_unknown"

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->r:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 126
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->r:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->a(ZLjava/lang/String;)V

    goto/16 :goto_3

    .line 4106
    .restart local v2    # "callerId":J
    .restart local v4    # "dataCenter":Leve;
    :cond_b
    iput-object v8, v4, Leve;->c:Ljava/lang/Long;

    goto/16 :goto_4

    .line 5087
    :cond_c
    iput-object v8, v4, Leve;->a:Ljava/lang/Long;

    goto/16 :goto_5

    .line 141
    .end local v2    # "callerId":J
    :cond_d
    iget-wide v8, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->b:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_e

    const-string/jumbo v8, "conf_unknown"

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->r:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 142
    :cond_e
    const-string/jumbo v8, "tele_conf"

    sget-object v9, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->a:Ljava/lang/String;

    const-string/jumbo v10, "Invalid uid/role finish"

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Levz;->a()V

    .line 145
    const-string/jumbo v8, "STATISTICS"

    invoke-static {v8}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 146
    .local v7, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-eqz v7, :cond_0

    .line 147
    invoke-static {}, Levz;->b()I

    move-result v1

    .line 148
    .local v1, "count":I
    const-string/jumbo v8, "tele_conf"

    const-string/jumbo v9, "conf_waiting_page_restart_count"

    int-to-double v10, v1

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 155
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Waiting page destroy START"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->b:J

    .line 157
    const-string/jumbo v0, "conf_unknown"

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->r:Ljava/lang/String;

    .line 158
    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->setIntent(Landroid/content/Intent;)V

    .line 160
    invoke-static {}, Lewp;->a()V

    .line 162
    invoke-static {}, Leve;->a()Leve;

    move-result-object v0

    .line 6132
    iput-object v3, v0, Leve;->f:Landroid/app/Activity;

    .line 163
    invoke-static {}, Leve;->a()Leve;

    move-result-object v0

    invoke-virtual {v0}, Leve;->b()V

    .line 164
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 165
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Waiting page destroy"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 209
    if-ne p1, v11, :cond_0

    move v1, v2

    .line 6570
    :goto_0
    return v1

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->s:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->s:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    instance-of v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    if-eqz v1, :cond_8

    .line 213
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfWaitingActivity;->s:Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;

    check-cast v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .line 6533
    .local v0, "fragment":Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    iget-object v1, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    if-nez v1, :cond_2

    :cond_1
    move v1, v3

    .line 6534
    goto :goto_0

    .line 6536
    :cond_2
    iget-object v1, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d:Lcom/alibaba/wukong/openav/external/IAVSession;

    invoke-interface {v1}, Lcom/alibaba/wukong/openav/external/IAVSession;->j()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v1

    .line 6537
    sget-object v4, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v4, v1, :cond_a

    move v5, v2

    .line 6540
    :goto_1
    if-nez v5, :cond_9

    .line 6541
    sget-object v4, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v4, v1, :cond_9

    move v4, v2

    .line 6545
    :goto_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6546
    :goto_3
    const-string/jumbo v6, "tele_conf"

    sget-object v7, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a:Ljava/lang/String;

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "Adjust ring "

    aput-object v9, v8, v3

    .line 6547
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v9, 0x2

    const-string/jumbo v10, ","

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const-string/jumbo v9, ", "

    aput-object v9, v8, v11

    const/4 v9, 0x5

    aput-object v1, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6546
    invoke-static {v6, v7, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6548
    packed-switch p1, :pswitch_data_0

    move v1, v3

    .line 214
    goto :goto_0

    .line 6545
    :cond_3
    const-string/jumbo v1, ""

    goto :goto_3

    .line 6550
    :pswitch_0
    if-eqz v5, :cond_4

    .line 6551
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d()V

    :goto_4
    move v1, v2

    .line 6559
    goto :goto_0

    .line 6553
    :cond_4
    if-eqz v4, :cond_5

    .line 6554
    iget-object v1, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->a(Landroid/content/Context;)V

    goto :goto_4

    .line 6556
    :cond_5
    iget-object v1, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v1}, Liee;->o()V

    goto :goto_4

    .line 6561
    :pswitch_1
    if-eqz v5, :cond_6

    .line 6562
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->d()V

    :goto_5
    move v1, v2

    .line 6570
    goto/16 :goto_0

    .line 6564
    :cond_6
    if-eqz v4, :cond_7

    .line 6565
    iget-object v1, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/wukong/openav/external/utils/VoipRinger;->b(Landroid/content/Context;)V

    goto :goto_5

    .line 6567
    :cond_7
    iget-object v1, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->c:Liee;

    invoke-interface {v1}, Liee;->p()V

    goto :goto_5

    .line 216
    .end local v0    # "fragment":Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .restart local v0    # "fragment":Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;
    :cond_9
    move v4, v3

    goto :goto_2

    :cond_a
    move v5, v3

    goto/16 :goto_1

    .line 6548
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
