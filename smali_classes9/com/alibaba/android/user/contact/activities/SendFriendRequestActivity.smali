.class public Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SendFriendRequestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:J

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/ToggleButton;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 67
    const-string/jumbo v0, "SendFriendRequestActivity"

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private static a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 351
    if-eqz p0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 352
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 378
    .end local v3    # "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 356
    .restart local v3    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 357
    .local v2, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "matchName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 361
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 362
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 363
    move-object v0, v1

    .line 368
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 369
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v4

    .line 371
    goto :goto_0

    .end local v0    # "matchName":Ljava/lang/String;
    :cond_4
    move-object v3, v4

    .line 374
    goto :goto_0

    .end local v2    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "result":Ljava/lang/String;
    :cond_5
    move-object v3, v4

    .line 378
    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 115
    const-string/jumbo v4, "user_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    const-string/jumbo v4, "user_id"

    invoke-virtual {p1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->b:J

    .line 125
    :cond_0
    :goto_0
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->b:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 126
    const-string/jumbo v4, "uid 0 ,error friend request"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lfxo;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    sget v4, Lezg$l;->wrong_arguments:I

    invoke-static {v4}, Lcms;->a(I)V

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->finish()V

    .line 151
    :goto_1
    return v3

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 119
    .local v2, "uri":Landroid/net/Uri;
    const-string/jumbo v4, "profile"

    invoke-static {v2, v4}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "profile":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 121
    invoke-static {v0}, Lcoh;->b(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->b:J

    goto :goto_0

    .line 133
    .end local v0    # "profile":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    const-string/jumbo v4, "fr_source"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 134
    const-string/jumbo v3, "fr_source"

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->LOCAL_CONTACT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->getValue()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->c:I

    .line 151
    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    .line 136
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 137
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string/jumbo v4, "source"

    invoke-static {v2, v4}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "source":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 140
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->c:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 142
    :catch_0
    move-exception v4

    const-string/jumbo v4, "source error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lfxo;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :cond_4
    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->LOCAL_CONTACT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->getValue()I

    move-result v3

    iput v3, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->c:I

    goto :goto_2
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->i:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    .prologue
    const/4 v1, 0x0

    .line 66
    .line 1287
    sget v0, Lezg$h;->request_message:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1288
    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 1289
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1291
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1292
    :cond_0
    sget v0, Lezg$l;->friend_request_remark_space:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1293
    const-string/jumbo v0, "bh_friend_add_error_remark"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 1294
    :goto_0
    return-void

    .line 1297
    :cond_1
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;-><init>()V

    .line 1298
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->b:J

    iput-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->uid:J

    .line 1299
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->c:I

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->fromValue(I)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->source:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    .line 1300
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->showMobile:Z

    .line 1302
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->k:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    .line 1303
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    iput-boolean v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->isHide:Z

    .line 1306
    :cond_2
    iput-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->remark:Ljava/lang/String;

    .line 1307
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->e:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->keyword:Ljava/lang/String;

    .line 1309
    sget v0, Lezg$l;->processing:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->showLoadingDialog(I)V

    .line 1310
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;

    invoke-direct {v4, p0, v3}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;-><init>(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v2, v3, v1, v0}, Lezv;->a(Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;ZLcma;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1300
    goto :goto_1
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    .prologue
    .line 66
    .line 2275
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2276
    :cond_0
    :goto_0
    return-void

    .line 2280
    :cond_1
    const-class v0, Lcom/alibaba/wukong/im/UserService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/UserService;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->b:J

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/wukong/im/UserService;->updateAlias(Lcom/alibaba/wukong/Callback;JLjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->b:J

    return-wide v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 384
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 385
    .local v0, "id":I
    sget v1, Lezg$h;->phone_hide_btn:I

    if-ne v0, v1, :cond_1

    .line 386
    const-string/jumbo v1, "pre_key_see_phone_status"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    sget v1, Lezg$h;->btn_connection_hide:I

    if-ne v0, v1, :cond_0

    .line 388
    const-string/jumbo v1, "pre_key_see_connection_status"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget v0, Lezg$j;->activity_send_friend_request:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->hideToolbarDivide()V

    .line 1097
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1098
    if-nez v0, :cond_1

    .line 1099
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->finish()V

    move v0, v1

    .line 91
    :goto_0
    if-eqz v0, :cond_0

    .line 1155
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 1156
    if-nez v2, :cond_2

    .line 1157
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->finish()V

    .line 1158
    :cond_0
    :goto_1
    return-void

    .line 1104
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1105
    const-string/jumbo v3, "source"

    iget v4, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->c:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "add_friend"

    invoke-interface {v3, v4, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1108
    const-string/jumbo v2, "fr_source_title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->d:Ljava/lang/String;

    .line 1109
    const-string/jumbo v2, "keyword"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->e:Ljava/lang/String;

    .line 1110
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    .line 1162
    :cond_2
    sget v0, Lezg$h;->phone_hide_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->h:Landroid/widget/ToggleButton;

    .line 1163
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1164
    sget v0, Lezg$h;->request_message:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->f:Landroid/widget/EditText;

    .line 1166
    sget v0, Lezg$h;->et_request_alias:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->g:Landroid/widget/EditText;

    .line 1168
    sget v0, Lezg$h;->btn_next:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->i:Landroid/widget/Button;

    .line 1170
    sget v0, Lezg$h;->rl_cannot_see_connection:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->j:Landroid/widget/RelativeLayout;

    .line 1172
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 1177
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->j:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-static {v0, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 1266
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->h:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3

    .line 1267
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->h:Landroid/widget/ToggleButton;

    const-string/jumbo v3, "pre_key_see_phone_status"

    invoke-static {v3, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1269
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->k:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    .line 1270
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->k:Landroid/widget/ToggleButton;

    const-string/jumbo v3, "pre_key_see_connection_status"

    invoke-static {v3, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1182
    :cond_4
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->c()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 1183
    if-eqz v0, :cond_6

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1184
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1185
    sget v3, Lezg$l;->dt_contact_add_request_at2:I

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    aput-object v0, v4, v1

    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1197
    :goto_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1199
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1224
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->i:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1239
    new-instance v0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;)V

    .line 1261
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1262
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->b:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto/16 :goto_1

    .line 1187
    :cond_5
    sget v3, Lezg$l;->dt_contact_add_request_from_group_at3:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    aput-object v0, v4, v1

    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    aput-object v0, v4, v5

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->d:Ljava/lang/String;

    aput-object v0, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1190
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1191
    sget v0, Lezg$l;->friend_request_default_tips:I

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1193
    :cond_7
    sget v0, Lezg$l;->friend_request_default_tips_with_source:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->d:Ljava/lang/String;

    aput-object v4, v3, v1

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    aput-object v2, v3, v5

    invoke-virtual {p0, v0, v3}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    const-string/jumbo v2, "SendFriendRequestActivity"

    const-string/jumbo v3, "setSelection error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 394
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onPause()V

    .line 396
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 397
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 398
    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 400
    :cond_0
    return-void
.end method
