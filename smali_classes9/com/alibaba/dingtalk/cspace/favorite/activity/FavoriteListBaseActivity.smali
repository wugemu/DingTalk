.class public Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;
.super Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;
.source "FavoriteListBaseActivity.java"

# interfaces
.implements Lgbz;


# instance fields
.field protected a:I

.field protected b:Lcom/alibaba/wukong/im/Conversation;

.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 238
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcok;->a(Ljava/lang/String;)Z

    move-result v0

    .line 239
    .local v0, "isAllEmotion":Z
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v3

    if-eqz v0, :cond_0

    const/high16 v2, 0x41f00000    # 30.0f

    .line 15050
    :goto_0
    invoke-virtual {v3, p0, p1, v2}, Lcok;->a(Landroid/content/Context;Ljava/lang/CharSequence;F)Landroid/text/SpannableString;

    move-result-object v1

    .line 241
    .local v1, "spannableString":Landroid/text/SpannableString;
    return-object v1

    .line 239
    .end local v1    # "spannableString":Landroid/text/SpannableString;
    :cond_0
    const/high16 v2, 0x41c00000    # 24.0f

    goto :goto_0
.end method

.method private a(ILcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)Ljava/lang/String;
    .locals 1
    .param p1, "viewType"    # I
    .param p2, "favViewModel"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .prologue
    .line 245
    invoke-static {p2}, Lgar;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget v0, Lfzs$h;->favorite_unspport_ding:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 248
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 260
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 250
    :pswitch_1
    sget v0, Lfzs$h;->favorite_unsupport_audio:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    :pswitch_2
    sget v0, Lfzs$h;->favorite_unsupport_file:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 254
    :pswitch_3
    sget v0, Lfzs$h;->favorite_unsupport_namecard:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 256
    :pswitch_4
    sget v0, Lfzs$h;->favorite_unsupport_mail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 258
    :pswitch_5
    sget v0, Lfzs$h;->favorite_unsupport_unknown:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Ljava/util/List;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 44
    .line 15325
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$5;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 15349
    new-instance v1, Lgli;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v1, p0, v2, p1, v0}, Lgli;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    .line 15350
    invoke-virtual {v1}, Lgli;->a()V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .prologue
    .line 44
    .line 15268
    if-eqz p1, :cond_1

    .line 15269
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 15270
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 15271
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->a(ILcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 15274
    :cond_2
    invoke-static {p1}, Lgcs;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)Ljava/util/List;

    move-result-object v2

    .line 15275
    if-eqz v2, :cond_1

    .line 15278
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15279
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    .line 15280
    iget v1, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    const/16 v5, 0x1f4

    if-ne v1, v5, :cond_3

    .line 15281
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->showLoadingDialog()V

    .line 15282
    invoke-static {p1}, Lgcs;->c(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v5

    .line 15283
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$4;

    invoke-direct {v6, p0, v5, v0, v3}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$4;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Ljava/util/List;)V

    const-class v0, Lcma;

    invoke-interface {v1, v6, v0, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 15308
    new-instance v1, Lgat;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v5, v0, v6}, Lgat;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;Z)V

    .line 15310
    invoke-virtual {v1}, Lgat;->a()V

    goto :goto_1

    .line 15312
    :cond_3
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15316
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 15317
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->a(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 232
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->d:I

    .line 233
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->c:Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->supportInvalidateOptionsMenu()V

    .line 235
    return-void
.end method

.method protected a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 0
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 358
    return-void
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V
    .locals 12
    .param p1, "favViewModel"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x1

    .line 70
    if-eqz p1, :cond_5

    .line 71
    new-instance v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;

    invoke-direct {v6, p0}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;-><init>(Landroid/content/Context;)V

    .line 72
    .local v6, "sendDialog":Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;
    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->e:Landroid/app/Activity;

    if-nez v10, :cond_0

    .line 73
    iput-object p0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->e:Landroid/app/Activity;

    .line 75
    :cond_0
    iget-object v10, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->e:Landroid/app/Activity;

    .line 1236
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->l:Landroid/app/Activity;

    .line 76
    invoke-virtual {v6, v11}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->setCancelable(Z)V

    .line 77
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v10

    invoke-direct {p0, v10, p1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->a(ILcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, "unsupportTip":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2232
    iput-boolean v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->j:Z

    .line 79
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 80
    sget v10, Lfzs$h;->favorite_send_to_im:I

    invoke-virtual {p0, v10}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3188
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->c:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 82
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3192
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->d:Ljava/lang/String;

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getSummary()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 85
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getSummary()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4192
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->d:Ljava/lang/String;

    .line 88
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getDingExt()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 89
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getDingExt()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 90
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getDingExt()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavDingExtend;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 4196
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->k:Ljava/lang/String;

    .line 93
    :cond_3
    sget v10, Lfzs$h;->send_action:I

    invoke-virtual {p0, v10}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4216
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->e:Ljava/lang/String;

    .line 94
    new-instance v10, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$1;

    invoke-direct {v10, p0, p1, v6}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;)V

    .line 4228
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->a:Landroid/view/View$OnClickListener;

    .line 105
    sget v10, Lfzs$h;->cancel:I

    invoke-virtual {p0, v10}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 5220
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->f:Ljava/lang/String;

    .line 106
    new-instance v10, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$2;

    invoke-direct {v10, p0, v6}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;)V

    .line 5224
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->b:Landroid/view/View$OnClickListener;

    .line 129
    :goto_0
    invoke-static {p1}, Lgar;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 130
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getViewType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 226
    :cond_4
    :goto_1
    :pswitch_0
    invoke-virtual {v6}, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->show()V

    .line 228
    .end local v6    # "sendDialog":Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;
    .end local v8    # "unsupportTip":Ljava/lang/String;
    :cond_5
    return-void

    .line 6188
    .restart local v6    # "sendDialog":Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;
    .restart local v8    # "unsupportTip":Ljava/lang/String;
    :cond_6
    iput-object v8, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->c:Ljava/lang/String;

    .line 117
    sget v10, Lfzs$h;->mail_guide_text_i_know_that:I

    invoke-virtual {p0, v10}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 6216
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->e:Ljava/lang/String;

    .line 118
    new-instance v10, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$3;

    invoke-direct {v10, p0, v6}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;)V

    .line 6228
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->a:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 6232
    :pswitch_1
    iput-boolean v11, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->j:Z

    .line 133
    sget v10, Lfzs$e;->fav_pic_default:I

    .line 7200
    iput v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->g:I

    .line 134
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 135
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v1

    .line 136
    .local v1, "extend":Ljava/lang/Object;
    if-eqz v1, :cond_4

    instance-of v10, v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;

    if-eqz v10, :cond_4

    move-object v5, v1

    .line 137
    check-cast v5, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;

    .line 138
    .local v5, "picModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;
    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->getAuthMediaId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lgao;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "authUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 7204
    iput-object v0, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->h:Ljava/lang/String;

    .line 141
    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;->getAuthCode()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lgao;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 7208
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->i:Ljava/util/Map;

    goto :goto_1

    .line 7232
    .end local v0    # "authUrl":Ljava/lang/String;
    .end local v1    # "extend":Ljava/lang/Object;
    .end local v5    # "picModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavPicModel;
    :pswitch_2
    iput-boolean v11, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->j:Z

    .line 148
    sget v10, Lfzs$e;->default_link_icon:I

    .line 8200
    iput v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->g:I

    .line 149
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 150
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v1

    .line 151
    .restart local v1    # "extend":Ljava/lang/Object;
    if-eqz v1, :cond_4

    instance-of v10, v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;

    if-eqz v10, :cond_4

    move-object v2, v1

    .line 152
    check-cast v2, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;

    .line 153
    .local v2, "linkModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->getPicUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 154
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;->getPicUrl()Ljava/lang/String;

    move-result-object v10

    .line 8204
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 8232
    .end local v1    # "extend":Ljava/lang/Object;
    .end local v2    # "linkModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavLinkModel;
    :pswitch_3
    iput-boolean v11, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->j:Z

    .line 161
    sget v10, Lfzs$e;->default_link_icon:I

    .line 9200
    iput v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->g:I

    .line 162
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 163
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v1

    .line 164
    .restart local v1    # "extend":Ljava/lang/Object;
    if-eqz v1, :cond_4

    instance-of v10, v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;

    if-eqz v10, :cond_4

    move-object v3, v1

    .line 165
    check-cast v3, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;

    .line 166
    .local v3, "oaModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->getMediaId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 167
    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;->getMediaId()Ljava/lang/String;

    move-result-object v10

    .line 9204
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->h:Ljava/lang/String;

    goto/16 :goto_1

    .line 9232
    .end local v1    # "extend":Ljava/lang/Object;
    .end local v3    # "oaModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavOAModel;
    :pswitch_4
    iput-boolean v11, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->j:Z

    .line 174
    sget v10, Lfzs$e;->msg_select_location_mark:I

    .line 10200
    iput v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->g:I

    .line 175
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 11192
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->d:Ljava/lang/String;

    .line 176
    sget v10, Lfzs$h;->favorite_location:I

    invoke-virtual {p0, v10}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 11196
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->k:Ljava/lang/String;

    goto/16 :goto_1

    .line 11232
    :pswitch_5
    iput-boolean v11, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->j:Z

    .line 180
    sget v10, Lfzs$h;->favorite_short_video:I

    invoke-virtual {p0, v10}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 12192
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->d:Ljava/lang/String;

    .line 181
    sget v10, Lfzs$e;->fav_pic_default:I

    .line 12200
    iput v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->g:I

    .line 182
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 183
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v1

    .line 184
    .restart local v1    # "extend":Ljava/lang/Object;
    if-eqz v1, :cond_4

    instance-of v10, v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;

    if-eqz v10, :cond_4

    move-object v9, v1

    .line 185
    check-cast v9, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;

    .line 186
    .local v9, "videoModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;
    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->getPicUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->getPicAuthMediaId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lgao;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "picAuthUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 12204
    iput-object v4, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->h:Ljava/lang/String;

    .line 189
    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;->getPicAuthCode()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lgao;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 12208
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->i:Ljava/util/Map;

    goto/16 :goto_1

    .line 12232
    .end local v1    # "extend":Ljava/lang/Object;
    .end local v4    # "picAuthUrl":Ljava/lang/String;
    .end local v9    # "videoModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavVideoModel;
    :pswitch_6
    iput-boolean v11, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->j:Z

    .line 196
    sget v10, Lfzs$h;->search_type_video:I

    invoke-virtual {p0, v10}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 13192
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->d:Ljava/lang/String;

    .line 197
    sget v10, Lfzs$e;->fav_pic_default:I

    .line 13200
    iput v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->g:I

    .line 198
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 199
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v1

    .line 200
    .restart local v1    # "extend":Ljava/lang/Object;
    if-eqz v1, :cond_4

    instance-of v10, v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;

    if-eqz v10, :cond_4

    move-object v9, v1

    .line 201
    check-cast v9, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;

    .line 202
    .local v9, "videoModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;
    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->getPicUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->getPicAuthMediaId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lgao;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 203
    .restart local v4    # "picAuthUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 13204
    iput-object v4, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->h:Ljava/lang/String;

    .line 205
    invoke-virtual {v9}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;->getPicAuthCode()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Lgao;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 13208
    iput-object v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->i:Ljava/util/Map;

    goto/16 :goto_1

    .line 13232
    .end local v1    # "extend":Ljava/lang/Object;
    .end local v4    # "picAuthUrl":Ljava/lang/String;
    .end local v9    # "videoModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavCommonVideoModel;
    :pswitch_7
    iput-boolean v11, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->j:Z

    .line 212
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 213
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 214
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;

    if-eqz v10, :cond_4

    .line 215
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v10

    .line 216
    invoke-virtual {v10}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;

    .line 217
    .local v7, "spaceModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;
    if-eqz v7, :cond_4

    .line 219
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 220
    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->getFileType()Ljava/lang/String;

    move-result-object v11

    .line 219
    invoke-static {v10, v11}, Lgpx;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 14200
    iput v10, v6, Lcom/alibaba/dingtalk/cspace/favorite/view/TextPicDialog;->g:I

    goto/16 :goto_1

    .line 130
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method protected a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "sendMessageObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;>;"
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteVoiceBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "favorite_selection"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->a:I

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation_model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation_model"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "space_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListBaseActivity;->c:Ljava/lang/String;

    .line 66
    :cond_1
    return-void
.end method
