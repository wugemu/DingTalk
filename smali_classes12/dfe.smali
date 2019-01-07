.class public Ldfe;
.super Ldfa;
.source "ShoppingChatPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldfe$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field public d:Ldfe$a;

.field private f:J

.field private g:Z

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Landroid/view/View$OnClickListener;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/view/View$OnClickListener;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-class v0, Ldfe;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldfe;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "onVideoClickLister"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "OnGisAddAppClickListener"    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Ldfa;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;)V

    .line 260
    new-instance v0, Ldfe$1;

    invoke-direct {v0, p0}, Ldfe$1;-><init>(Ldfe;)V

    iput-object v0, p0, Ldfe;->j:Landroid/view/View$OnClickListener;

    .line 275
    new-instance v0, Ldfe$2;

    invoke-direct {v0, p0}, Ldfe$2;-><init>(Ldfe;)V

    iput-object v0, p0, Ldfe;->k:Landroid/view/View$OnClickListener;

    .line 295
    new-instance v0, Ldfe$3;

    invoke-direct {v0, p0}, Ldfe$3;-><init>(Ldfe;)V

    iput-object v0, p0, Ldfe;->l:Landroid/view/View$OnClickListener;

    .line 306
    new-instance v0, Ldfe$4;

    invoke-direct {v0, p0}, Ldfe$4;-><init>(Ldfe;)V

    iput-object v0, p0, Ldfe;->m:Landroid/view/View$OnClickListener;

    .line 317
    new-instance v0, Ldfe$5;

    invoke-direct {v0, p0}, Ldfe$5;-><init>(Ldfe;)V

    iput-object v0, p0, Ldfe;->n:Landroid/view/View$OnClickListener;

    .line 325
    new-instance v0, Ldfe$6;

    invoke-direct {v0, p0}, Ldfe$6;-><init>(Ldfe;)V

    iput-object v0, p0, Ldfe;->o:Landroid/view/View$OnClickListener;

    .line 142
    iput-object p3, p0, Ldfe;->h:Landroid/view/View$OnClickListener;

    .line 143
    iput-object p4, p0, Ldfe;->i:Landroid/view/View$OnClickListener;

    .line 144
    return-void
.end method

.method static synthetic a(Ldfe;J)J
    .locals 1
    .param p0, "x0"    # Ldfe;
    .param p1, "x1"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Ldfe;->f:J

    return-wide p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "src"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 485
    iget-wide v4, p0, Ldfe;->f:J

    .line 4075
    invoke-static {v4, v5}, Ldjl;->c(J)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "corpId":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 488
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v4, p0, Ldfe;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 489
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v4, p0, Ldfe;->a:Landroid/content/Context;

    sget v5, Lctk$i;->dt_im_newretail_dissolve_relationship_error:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 490
    invoke-virtual {v4, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Ldfe;->a:Landroid/content/Context;

    sget v6, Lctk$i;->dt_common_i_know:I

    .line 491
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Ldfe$9;

    invoke-direct {v6, p0}, Ldfe$9;-><init>(Ldfe;)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 497
    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 499
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    const/4 v4, 0x0

    .line 513
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :goto_1
    return-object v4

    .line 500
    .restart local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :catch_0
    move-exception v2

    .line 501
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 505
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 506
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "taobaoId"

    iget-object v6, p0, Ldfe;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 507
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ldje;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "cId"

    iget-object v6, p0, Ldfe;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 508
    invoke-static {v6}, Ldje;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "currentStaffId"

    iget-wide v6, p0, Ldfe;->f:J

    .line 509
    invoke-static {v6, v7}, Ldje;->b(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "corpId"

    .line 510
    invoke-virtual {v4, v5, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "dd_func_wk"

    const-string/jumbo v6, "true"

    .line 511
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 512
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 513
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private a(ILcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 18
    .param p1, "type"    # I
    .param p2, "profileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 371
    move-object/from16 v0, p0

    iget-boolean v12, v0, Ldfe;->g:Z

    if-eqz v12, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfoStr:Ljava/lang/String;

    .line 375
    .local v10, "orgInfoJson":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v12

    iget-object v9, v12, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgIdList:Ljava/util/List;

    .line 376
    .local v9, "orgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 378
    .local v6, "idArray":Lcom/alibaba/fastjson/JSONArray;
    :try_start_0
    invoke-static {v10}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    const-string/jumbo v13, "memberOrgIdList"

    invoke-virtual {v12, v13}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 382
    :goto_1
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v12

    if-lez v12, :cond_0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 383
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v11, "resultIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v8, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v12

    if-ge v4, v12, :cond_5

    .line 386
    invoke-virtual {v6, v4}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 387
    .local v7, "idSrc":Ljava/lang/Object;
    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 388
    .local v5, "id":Ljava/lang/Long;
    if-eqz v7, :cond_2

    .line 389
    instance-of v12, v7, Ljava/lang/Integer;

    if-eqz v12, :cond_4

    .line 390
    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "idSrc":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 395
    :cond_2
    :goto_3
    invoke-interface {v9, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 396
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v12, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    const/4 v13, 0x0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lccr;->e(J)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 379
    .end local v4    # "i":I
    .end local v5    # "id":Ljava/lang/Long;
    .end local v8    # "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;>;"
    .end local v11    # "resultIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_0
    move-exception v3

    .line 380
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 391
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v4    # "i":I
    .restart local v5    # "id":Ljava/lang/Long;
    .restart local v7    # "idSrc":Ljava/lang/Object;
    .restart local v8    # "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;>;"
    .restart local v11    # "resultIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    instance-of v12, v7, Ljava/lang/Long;

    if-eqz v12, :cond_2

    move-object v5, v7

    .line 392
    check-cast v5, Ljava/lang/Long;

    goto :goto_3

    .line 400
    .end local v5    # "id":Ljava/lang/Long;
    .end local v7    # "idSrc":Ljava/lang/Object;
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 401
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Ldfe;->f:J

    .line 402
    invoke-direct/range {p0 .. p1}, Ldfe;->c(I)V

    goto/16 :goto_0

    .line 403
    :cond_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_0

    .line 405
    new-instance v2, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    move-object/from16 v0, p0

    iget-object v12, v0, Ldfe;->a:Landroid/content/Context;

    new-instance v13, Ldfe$8;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v13, v0, v11, v1}, Ldfe$8;-><init>(Ldfe;Ljava/util/List;I)V

    invoke-direct {v2, v12, v13}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$b;)V

    .line 412
    .local v2, "dialog":Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;
    invoke-virtual {v2, v8}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a(Ljava/util/List;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .line 413
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->show()V

    goto/16 :goto_0
.end method

.method static synthetic a(Ldfe;I)V
    .locals 0
    .param p0, "x0"    # Ldfe;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Ldfe;->b(I)V

    return-void
.end method

.method static synthetic a(Ldfe;ILcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 0
    .param p0, "x0"    # Ldfe;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ldfe;->a(ILcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    return-void
.end method

.method private b(I)V
    .locals 6
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 334
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v3, p0, Ldfe;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    .line 335
    .local v1, "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-nez v1, :cond_1

    .line 337
    new-instance v0, Ldfe$7;

    invoke-direct {v0, p0, p1}, Ldfe$7;-><init>(Ldfe;I)V

    .line 359
    .local v0, "listener":Lcma;
    iget-object v2, p0, Ldfe;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldfe;->a:Landroid/content/Context;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/IMBaseActivity;

    if-eqz v2, :cond_0

    .line 360
    const-class v3, Lcma;

    iget-object v2, p0, Ldfe;->a:Landroid/content/Context;

    check-cast v2, Lcom/alibaba/android/dingtalkim/IMBaseActivity;

    invoke-static {v0, v3, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;
    check-cast v0, Lcma;

    .line 363
    .restart local v0    # "listener":Lcma;
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v3, p0, Ldfe;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 368
    .end local v0    # "listener":Lcma;
    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-direct {p0, p1, v1}, Ldfe;->a(ILcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_0
.end method

.method static synthetic b(Ldfe;I)V
    .locals 0
    .param p0, "x0"    # Ldfe;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Ldfe;->c(I)V

    return-void
.end method

.method private c(I)V
    .locals 14
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v12, 0x10000000

    .line 419
    packed-switch p1, :pswitch_data_0

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 421
    :pswitch_0
    iget-object v10, p0, Ldfe;->a:Landroid/content/Context;

    instance-of v10, v10, Landroid/app/Activity;

    if-eqz v10, :cond_0

    .line 422
    iget-object v0, p0, Ldfe;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 423
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v10

    iget-object v11, p0, Ldfe;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-wide v12, p0, Ldfe;->f:J

    .line 3075
    invoke-static {v12, v13}, Ldjl;->c(J)Ljava/lang/String;

    move-result-object v12

    .line 423
    invoke-virtual {v10, v0, v11, v12}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    .end local v0    # "activity":Landroid/app/Activity;
    :pswitch_1
    const-string/jumbo v9, "https://ulifem.taobao.com/messageGoods"

    .line 428
    .local v9, "goodsUrl":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v10

    sget v11, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v10, v11, :cond_2

    .line 429
    const-string/jumbo v9, "https://pre-ulifem.taobao.com/messageGoods"

    .line 433
    :cond_1
    :goto_1
    invoke-direct {p0, v9}, Ldfe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 434
    .local v8, "goodsNavUrl":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 437
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 438
    .local v7, "goodsBundle":Landroid/os/Bundle;
    const-string/jumbo v10, "url"

    invoke-virtual {v7, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v10

    iget-object v11, p0, Ldfe;->a:Landroid/content/Context;

    invoke-virtual {v10, v11, v7, v12}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 430
    .end local v7    # "goodsBundle":Landroid/os/Bundle;
    .end local v8    # "goodsNavUrl":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v10

    if-nez v10, :cond_1

    .line 431
    const-string/jumbo v9, "http://ulifem.daily.taobao.net/messageGoods"

    goto :goto_1

    .line 442
    .end local v9    # "goodsUrl":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v6, "https://ulifem.taobao.com/messageCoupon"

    .line 443
    .local v6, "couponUrl":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v10

    sget v11, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v10, v11, :cond_4

    .line 444
    const-string/jumbo v6, "https://pre-ulifem.taobao.com/messageCoupon"

    .line 448
    :cond_3
    :goto_2
    invoke-direct {p0, v6}, Ldfe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 449
    .local v5, "couponNavUrl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 452
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 453
    .local v4, "couponBundle":Landroid/os/Bundle;
    const-string/jumbo v10, "url"

    invoke-virtual {v4, v10, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v10

    iget-object v11, p0, Ldfe;->a:Landroid/content/Context;

    invoke-virtual {v10, v11, v4, v12}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 445
    .end local v4    # "couponBundle":Landroid/os/Bundle;
    .end local v5    # "couponNavUrl":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v10

    if-nez v10, :cond_3

    .line 446
    const-string/jumbo v6, "http://ulifem.daily.taobao.net/messageCoupon"

    goto :goto_2

    .line 458
    .end local v6    # "couponUrl":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v3, "https://ulifem.taobao.com/daogouContentSend"

    .line 459
    .local v3, "contentUrl":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v10

    sget v11, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v10, v11, :cond_6

    .line 460
    const-string/jumbo v3, "https://pre-ulifem.taobao.com/daogouContentSend"

    .line 464
    :cond_5
    :goto_3
    invoke-direct {p0, v3}, Ldfe;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "contentNavUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 468
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 469
    .local v1, "contentBundle":Landroid/os/Bundle;
    const-string/jumbo v10, "url"

    invoke-virtual {v1, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v10

    iget-object v11, p0, Ldfe;->a:Landroid/content/Context;

    invoke-virtual {v10, v11, v1, v12}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 461
    .end local v1    # "contentBundle":Landroid/os/Bundle;
    .end local v2    # "contentNavUrl":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v10

    if-nez v10, :cond_5

    .line 462
    const-string/jumbo v3, "https://pre-ulifem.taobao.com/daogouContentSend"

    goto :goto_3

    .line 473
    .end local v3    # "contentUrl":Ljava/lang/String;
    :pswitch_4
    iget-object v10, p0, Ldfe;->d:Ldfe$a;

    if-eqz v10, :cond_0

    .line 474
    iget-object v10, p0, Ldfe;->d:Ldfe$a;

    invoke-interface {v10}, Ldfe$a;->onClick()V

    goto/16 :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Ldfe;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "rlListContainer"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Ldfe;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 153
    .local v0, "tvHeaderText":Landroid/widget/TextView;
    iget-object v1, p0, Ldfe;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 154
    iget-object v1, p0, Ldfe;->a:Landroid/content/Context;

    sget v2, Lctk$i;->dt_im_chat_talk_with_custom:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 156
    iget-object v1, p0, Ldfe;->a:Landroid/content/Context;

    sget v2, Lctk$c;->ui_common_level1_text_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 159
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Ldfe;->a:Landroid/content/Context;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "ivWaterMark"    # Landroid/widget/ImageView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;

    iget-object v1, p0, Ldfe;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, "wd":Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->f()Ljava/lang/String;

    move-result-object v1

    .line 1217
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->c:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Ldfe;->a:Landroid/content/Context;

    sget v2, Lctk$c;->chat_bg_color:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    .line 2146
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/WaterDrawable;->b:I

    .line 172
    if-eqz p1, :cond_0

    .line 173
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 174
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    :cond_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;)V
    .locals 1
    .param p1, "inputPanelView"    # Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;

    .prologue
    .line 164
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/InputPanelView;->setVoiceRecord(Z)V

    .line 165
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;)Z
    .locals 7
    .param p1, "addAppContainer"    # Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 184
    if-nez p1, :cond_11

    .line 185
    new-instance p1, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;

    .end local p1    # "addAppContainer":Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;
    iget-object v0, p0, Ldfe;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;-><init>(Landroid/content/Context;)V

    .line 193
    .restart local p1    # "addAppContainer":Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;
    :cond_0
    :goto_0
    iget-object v0, p0, Ldfe;->c:Ldsd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldfe;->c:Ldsd;

    invoke-virtual {v0, v6}, Ldsd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    :cond_1
    iget-object v0, p0, Ldfe;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3, v0, v5}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 199
    :cond_2
    iget-object v0, p0, Ldfe;->c:Ldsd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldfe;->c:Ldsd;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ldsd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    :cond_3
    sget v1, Lctk$i;->icon_phone_fill:I

    sget v2, Lctk$i;->dt_conference_bizcall_name:I

    iget-object v4, p0, Ldfe;->k:Landroid/view/View$OnClickListener;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 206
    :cond_4
    iget-object v0, p0, Ldfe;->c:Ldsd;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldfe;->c:Ldsd;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ldsd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    :cond_5
    iget-object v0, p0, Ldfe;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3, v0, v5}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 211
    :cond_6
    iget-object v0, p0, Ldfe;->c:Ldsd;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ldfe;->c:Ldsd;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Ldsd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 212
    :cond_7
    sget v1, Lctk$i;->icon_quickreply_fill:I

    sget v2, Lctk$i;->dt_im_quick_reply_item_text:I

    iget-object v4, p0, Ldfe;->o:Landroid/view/View$OnClickListener;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 217
    :cond_8
    iget-object v0, p0, Ldfe;->c:Ldsd;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ldfe;->c:Ldsd;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ldsd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 218
    :cond_9
    sget v1, Lctk$i;->icon_shop_fill:I

    sget v2, Lctk$i;->dt_im_cspace_shop_item:I

    iget-object v4, p0, Ldfe;->l:Landroid/view/View$OnClickListener;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 223
    :cond_a
    iget-object v0, p0, Ldfe;->c:Ldsd;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ldfe;->c:Ldsd;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Ldsd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 224
    :cond_b
    sget v1, Lctk$i;->icon_coupon_fill:I

    sget v2, Lctk$i;->dt_im_cspace_coupon:I

    iget-object v4, p0, Ldfe;->m:Landroid/view/View$OnClickListener;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 229
    :cond_c
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "im_switch_tao_panel_add_content"

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 230
    iget-object v0, p0, Ldfe;->c:Ldsd;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ldfe;->c:Ldsd;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Ldsd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 231
    :cond_d
    sget v1, Lctk$i;->icon_content_fill:I

    sget v2, Lctk$i;->dt_im_cspace_content_item:I

    iget-object v4, p0, Ldfe;->n:Landroid/view/View$OnClickListener;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a(IIZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 237
    :cond_e
    iget-object v0, p0, Ldfe;->c:Ldsd;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ldfe;->c:Ldsd;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ldsd;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 238
    :cond_f
    iget-object v0, p0, Ldfe;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3, v0, v5}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->g(ZLandroid/view/View$OnClickListener;Lckj$a;)V

    .line 240
    :cond_10
    return v6

    .line 187
    :cond_11
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/models/AddAppContainer;->a()V

    goto/16 :goto_0
.end method

.method public final d()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 245
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "retail_im_msglist_detail_call"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 246
    invoke-direct {p0, v2}, Ldfe;->b(I)V

    .line 247
    return v2
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldfe;->g:Z

    .line 258
    return-void
.end method
