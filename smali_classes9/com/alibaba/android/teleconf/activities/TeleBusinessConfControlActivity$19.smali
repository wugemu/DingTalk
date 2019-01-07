.class final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$19;
.super Ljava/lang/Object;
.source "TeleBusinessConfControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$19;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 456
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$19;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->e()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Video conf can not be modified"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->e()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Click confirm button"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$19;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 462
    .local v0, "editText":Landroid/text/Editable;
    if-eqz v0, :cond_2

    .line 463
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 464
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 465
    :cond_2
    sget v1, Leuj$l;->conf_txt_conference_theme_empty_error:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0

    .line 469
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$19;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$19;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_5

    .line 470
    :cond_4
    sget v1, Leuj$l;->conf_txt_conference_members_empty_error:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0

    .line 474
    :cond_5
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$19;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->i(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 475
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$19;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->j(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)V

    goto :goto_0

    .line 477
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$19;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->k(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v1, v2, :cond_9

    .line 478
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "meeting_appointment_ok_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 483
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$19;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    .line 2332
    iget-object v1, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v1, :cond_0

    iget-object v1, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2336
    const/4 v1, 0x0

    .line 2337
    iget-object v2, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->j:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v3, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v2, v3, :cond_11

    .line 2338
    new-instance v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;

    invoke-direct {v5}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;-><init>()V

    .line 2340
    iget-object v1, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->callerId:Ljava/lang/Long;

    .line 2341
    iget-object v1, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->callerNick:Ljava/lang/String;

    .line 2342
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->calltype:Ljava/lang/Integer;

    .line 2343
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->confType:Ljava/lang/Integer;

    .line 2345
    iget-object v1, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->e:Ljava/util/List;

    if-eqz v1, :cond_a

    .line 2346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->calleeIds:Ljava/util/List;

    .line 2347
    iget-object v1, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 2348
    if-eqz v1, :cond_8

    .line 2351
    iget-object v1, v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2352
    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v3, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v3, v6, v8

    if-eqz v3, :cond_8

    .line 2355
    iget-object v3, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->calleeIds:Ljava/util/List;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 479
    :cond_9
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity$19;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->k(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;)Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v1, v2, :cond_7

    .line 480
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "videocall_appointment_ok_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2358
    :cond_a
    iget-wide v2, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->h:J

    .line 2359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-gtz v1, :cond_b

    .line 2360
    const-wide/16 v2, 0x0

    .line 2362
    :cond_b
    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->startime:Ljava/lang/Long;

    .line 2363
    iget-object v1, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->hostess:Ljava/lang/Long;

    .line 2364
    iget-wide v2, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->duration:Ljava/lang/Long;

    .line 2366
    const-string/jumbo v1, ""

    .line 2367
    iget-object v2, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 2368
    if-eqz v2, :cond_c

    .line 2369
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2371
    :cond_c
    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->title:Ljava/lang/String;

    .line 2373
    iget-boolean v1, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->enableDing:Ljava/lang/Boolean;

    .line 3084
    const/4 v1, 0x0

    .line 3085
    if-eqz v5, :cond_e

    .line 3086
    new-instance v1, Leva;

    invoke-direct {v1}, Leva;-><init>()V

    .line 3087
    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_VIDEO_EXTRA:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iput-object v2, v1, Leva;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    .line 3089
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->callerId:Ljava/lang/Long;

    .line 4044
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 3089
    iput-wide v2, v1, Leva;->b:J

    .line 3090
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->callerNick:Ljava/lang/String;

    iput-object v2, v1, Leva;->d:Ljava/lang/String;

    .line 3091
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->calleeIds:Ljava/util/List;

    if-eqz v2, :cond_d

    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->calleeIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 3092
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Leva;->c:Ljava/util/List;

    .line 3093
    iget-object v2, v1, Leva;->c:Ljava/util/List;

    iget-object v3, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->calleeIds:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3095
    :cond_d
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->confType:Ljava/lang/Integer;

    .line 5033
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 3095
    iput v2, v1, Leva;->e:I

    .line 3096
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->title:Ljava/lang/String;

    iput-object v2, v1, Leva;->f:Ljava/lang/String;

    .line 3097
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->hostess:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Leva;->g:J

    .line 3098
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->startime:Ljava/lang/Long;

    .line 5044
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 3098
    iput-wide v2, v1, Leva;->h:J

    .line 3099
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->duration:Ljava/lang/Long;

    .line 6044
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 3099
    iput-wide v2, v1, Leva;->i:J

    .line 3100
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->enableDing:Ljava/lang/Boolean;

    .line 7022
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 3100
    iput-boolean v2, v1, Leva;->j:Z

    .line 3101
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateModel;->calltype:Ljava/lang/Integer;

    .line 7033
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 3101
    iput v2, v1, Leva;->k:I

    .line 2413
    :cond_e
    :goto_3
    const-string/jumbo v2, "tele_conf"

    sget-object v3, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->a:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Create conf reservation "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->j:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    .line 2414
    invoke-virtual {v7}, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2413
    invoke-static {v2, v3, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    iget-object v2, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->c:Landroid/widget/Button;

    if-eqz v2, :cond_f

    .line 2417
    iget-object v2, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->c:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 2419
    :cond_f
    iget-object v2, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->d:Landroid/view/View;

    if-eqz v2, :cond_10

    .line 2420
    iget-object v2, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->d:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2422
    :cond_10
    iget-object v2, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->m:Lexf$a;

    if-eqz v2, :cond_0

    .line 2423
    iget-object v2, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->m:Lexf$a;

    invoke-interface {v2, v1}, Lexf$a;->a(Leva;)V

    goto/16 :goto_0

    .line 2376
    :cond_11
    iget-object v2, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->j:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    sget-object v3, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    if-ne v2, v3, :cond_e

    .line 2377
    new-instance v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;

    invoke-direct {v5}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;-><init>()V

    .line 2378
    iget-object v1, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->callerId:Ljava/lang/Long;

    .line 2379
    iget-object v1, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->callerNick:Ljava/lang/String;

    .line 2380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->calleeIds:Ljava/util/List;

    .line 2381
    iget-object v1, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 2382
    if-eqz v1, :cond_12

    .line 2385
    iget-object v1, v1, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2386
    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_12

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v3, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->k:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v3, v6, v8

    if-eqz v3, :cond_12

    .line 2390
    iget-object v3, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->calleeIds:Ljava/util/List;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2392
    :cond_13
    iget-wide v2, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->h:J

    .line 2393
    iget v1, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->g:I

    if-nez v1, :cond_14

    .line 2394
    const-wide/16 v2, 0x0

    .line 2396
    :cond_14
    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->startTime:Ljava/lang/Long;

    .line 2397
    iget-wide v2, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->duration:Ljava/lang/Long;

    .line 2399
    const-string/jumbo v1, ""

    .line 2400
    iget-object v2, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 2401
    if-eqz v2, :cond_15

    .line 2402
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2404
    :cond_15
    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->title:Ljava/lang/String;

    .line 2405
    iget-wide v2, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->orgId:Ljava/lang/Long;

    .line 2408
    iget-boolean v1, v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfControlActivity;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->enableDing:Ljava/lang/Boolean;

    .line 7063
    const/4 v1, 0x0

    .line 7064
    if-eqz v5, :cond_e

    .line 7065
    new-instance v1, Leva;

    invoke-direct {v1}, Leva;-><init>()V

    .line 7066
    sget-object v2, Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;->APMT_CALL:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    iput-object v2, v1, Leva;->a:Lcom/alibaba/android/teleconf/data/ApmtBaseObject$ApmtConfType;

    .line 7067
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->callerId:Ljava/lang/Long;

    .line 8044
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 7067
    iput-wide v2, v1, Leva;->b:J

    .line 7068
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->callerNick:Ljava/lang/String;

    iput-object v2, v1, Leva;->d:Ljava/lang/String;

    .line 7069
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->calleeIds:Ljava/util/List;

    if-eqz v2, :cond_16

    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->calleeIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 7070
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Leva;->c:Ljava/util/List;

    .line 7071
    iget-object v2, v1, Leva;->c:Ljava/util/List;

    iget-object v3, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->calleeIds:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7073
    :cond_16
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->title:Ljava/lang/String;

    iput-object v2, v1, Leva;->f:Ljava/lang/String;

    .line 7074
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->startTime:Ljava/lang/Long;

    .line 9044
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 7074
    iput-wide v2, v1, Leva;->h:J

    .line 7075
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->duration:Ljava/lang/Long;

    .line 10044
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 7075
    iput-wide v2, v1, Leva;->i:J

    .line 7076
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->orgId:Ljava/lang/Long;

    .line 11044
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 7076
    iput-wide v2, v1, Leva;->l:J

    .line 7077
    iget-object v2, v5, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtConfCreateModel;->enableDing:Ljava/lang/Boolean;

    .line 12022
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    .line 7077
    iput-boolean v2, v1, Leva;->j:Z

    goto/16 :goto_3
.end method
