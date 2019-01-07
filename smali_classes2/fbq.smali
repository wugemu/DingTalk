.class public final Lfbq;
.super Ljava/lang/Object;
.source "CertifyTaskImpl.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/concurrent/CountDownLatch;

.field private e:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lorg/json/JSONObject;

.field private g:Lorg/json/JSONObject;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private j:J

.field private k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfbq;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfbq;->j:J

    .line 91
    new-instance v0, Lfbq$1;

    invoke-direct {v0, p0}, Lfbq$1;-><init>(Lfbq;)V

    iput-object v0, p0, Lfbq;->k:Landroid/os/Handler;

    .line 184
    iput-object p1, p0, Lfbq;->b:Landroid/app/Activity;

    .line 185
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lfbq;->f:Lorg/json/JSONObject;

    .line 1609
    new-instance v0, Lfbq$2;

    invoke-direct {v0, p0}, Lfbq$2;-><init>(Lfbq;)V

    iput-object v0, p0, Lfbq;->h:Landroid/content/BroadcastReceiver;

    .line 1642
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "intent_action_rp_take_photo"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1643
    iget-object v1, p0, Lfbq;->b:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lfbq;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 187
    return-void
.end method

.method static synthetic a(Lfbq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lfbq;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lfbq;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lfbq;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lfbq;

    .prologue
    .line 75
    iget-object v0, p0, Lfbq;->g:Lorg/json/JSONObject;

    return-object v0
.end method

.method private a(ILcom/alibaba/android/user/certify/ImageData;)V
    .locals 3
    .param p1, "msg"    # I
    .param p2, "image"    # Lcom/alibaba/android/user/certify/ImageData;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 723
    invoke-static {}, Lify;->a()Lify;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfbq$3;

    invoke-direct {v2, p0, p2, p1}, Lfbq$3;-><init>(Lfbq;Lcom/alibaba/android/user/certify/ImageData;I)V

    invoke-virtual {v0, v1, v2}, Lify;->a(Ljava/lang/String;Lifw;)V

    .line 776
    return-void
.end method

.method private a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;I)V
    .locals 2
    .param p1, "callback"    # Lcom/alibaba/wukong/Callback;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "res"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 798
    iget-object v1, p0, Lfbq;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfbq;->b:Landroid/app/Activity;

    invoke-virtual {v1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lfbq;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    return-void

    .line 798
    .end local v0    # "reason":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callback"    # Lcom/alibaba/wukong/Callback;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 787
    if-eqz p1, :cond_0

    .line 788
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfbq$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lfbq$4;-><init>(Lfbq;Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 795
    :cond_0
    return-void
.end method

.method static synthetic a(Lfbq;IIILjava/lang/Object;)V
    .locals 2
    .param p0, "x0"    # Lfbq;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Object;

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 3803
    iget-object v1, p0, Lfbq;->k:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 3804
    iget-object v1, p0, Lfbq;->k:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, v0, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3805
    iget-object v1, p0, Lfbq;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    :cond_0
    return-void
.end method

.method static synthetic a(Lfbq;ILcom/alibaba/android/user/certify/ImageData;)V
    .locals 0
    .param p0, "x0"    # Lfbq;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/alibaba/android/user/certify/ImageData;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lfbq;->a(ILcom/alibaba/android/user/certify/ImageData;)V

    return-void
.end method

.method static synthetic a(Lfbq;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "x0"    # Lfbq;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 75
    .line 4779
    invoke-direct {p0}, Lfbq;->d()V

    .line 4780
    iget-object v0, p0, Lfbq;->e:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 4781
    iget-object v0, p0, Lfbq;->e:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 4782
    const/4 v0, 0x0

    iput-object v0, p0, Lfbq;->e:Lcom/alibaba/wukong/Callback;

    .line 75
    :cond_0
    return-void
.end method

.method static synthetic a(Lfbq;Lcom/alibaba/android/user/certify/ImageData;)V
    .locals 4
    .param p0, "x0"    # Lfbq;
    .param p1, "x1"    # Lcom/alibaba/android/user/certify/ImageData;

    .prologue
    .line 75
    .line 5484
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5485
    :cond_0
    iget-object v0, p0, Lfbq;->e:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "-1"

    sget v2, Lezg$l;->dt_certify_take_photo_id_card_recognize_fail:I

    invoke-direct {p0, v0, v1, v2}, Lfbq;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;I)V

    .line 5486
    :goto_0
    return-void

    .line 5489
    :cond_1
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lfbq$11;

    invoke-direct {v1, p0, p1}, Lfbq$11;-><init>(Lfbq;Lcom/alibaba/android/user/certify/ImageData;)V

    const-class v2, Lcma;

    iget-object v3, p0, Lfbq;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5529
    invoke-static {}, Lfah;->a()Lezo;

    move-result-object v1

    iget-object v2, p0, Lfbq;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lezo;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lfbq;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .param p0, "x0"    # Lfbq;
    .param p1, "x1"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 75
    .line 2442
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lfbq$10;

    invoke-direct {v1, p0, p1}, Lfbq$10;-><init>(Lfbq;Lcom/alibaba/wukong/Callback;)V

    const-class v2, Lcma;

    iget-object v3, p0, Lfbq;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2479
    invoke-static {}, Lfah;->a()Lezo;

    move-result-object v1

    iget-object v2, p0, Lfbq;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lezo;->a(Ljava/lang/String;Lcma;)V

    .line 75
    return-void
.end method

.method static synthetic a(Lfbq;Lcom/alibaba/wukong/Callback;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lfbq;
    .param p1, "x1"    # Lcom/alibaba/wukong/Callback;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lfbq;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lfbq;Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lfbq;
    .param p1, "x1"    # Lcom/alibaba/wukong/Callback;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lfbq;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;)Z
    .locals 19
    .param p1, "livenessResult"    # Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    .prologue
    .line 647
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v14

    if-nez v14, :cond_0

    .line 648
    const/4 v14, 0x0

    .line 719
    :goto_0
    return v14

    .line 652
    :cond_0
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 654
    .local v13, "value":Lorg/json/JSONObject;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getK()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getP()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lfbp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, "big":Ljava/lang/String;
    const-string/jumbo v14, "bigImage"

    invoke-virtual {v13, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_1

    .line 658
    sget-object v14, Lfbq;->a:Ljava/lang/String;

    const-string/jumbo v15, "LivenessResult err:%d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    const/4 v14, 0x0

    goto :goto_0

    .line 663
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    .line 664
    .local v1, "actionResult":Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_4

    .line 665
    :cond_2
    sget-object v15, Lfbq;->a:Ljava/lang/String;

    const-string/jumbo v16, "actionResult1 err:%d"

    const/4 v14, 0x1

    new-array v0, v14, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    :goto_1
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v17, v18

    invoke-static/range {v15 .. v17}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 665
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 668
    :cond_4
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 669
    .local v10, "movement1":Lorg/json/JSONObject;
    const-string/jumbo v14, "movement_1"

    invoke-virtual {v13, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getAt()I

    move-result v14

    invoke-static {v14}, Lfbp;->a(I)Ljava/lang/String;

    move-result-object v12

    .line 672
    .local v12, "type":Ljava/lang/String;
    const-string/jumbo v14, "type"

    invoke-virtual {v10, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 674
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    .line 675
    .local v4, "image1":Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    .line 676
    .local v5, "image2":Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getK()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getP()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lfbp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 677
    .local v6, "img1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getK()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getP()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lfbp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 678
    .local v7, "img2":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 679
    :cond_5
    sget-object v14, Lfbq;->a:Ljava/lang/String;

    const-string/jumbo v15, "img1 err:%s %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v4}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getP()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v5}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getP()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 684
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "actionResult":Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;
    check-cast v1, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    .line 685
    .restart local v1    # "actionResult":Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_9

    .line 686
    :cond_7
    sget-object v15, Lfbq;->a:Ljava/lang/String;

    const-string/jumbo v16, "actionResult2 err:%d"

    const/4 v14, 0x1

    new-array v0, v14, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    :goto_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v17, v18

    invoke-static/range {v15 .. v17}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 686
    :cond_8
    const/4 v14, 0x0

    goto :goto_2

    .line 689
    :cond_9
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 690
    .local v11, "movement2":Lorg/json/JSONObject;
    const-string/jumbo v14, "movement_2"

    invoke-virtual {v13, v14, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 693
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getAt()I

    move-result v14

    invoke-static {v14}, Lfbp;->a(I)Ljava/lang/String;

    move-result-object v12

    .line 694
    const-string/jumbo v14, "type"

    invoke-virtual {v11, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 696
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "image1":Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;
    check-cast v4, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    .line 697
    .restart local v4    # "image1":Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;
    invoke-virtual {v1}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "image2":Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;
    check-cast v5, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    .line 698
    .restart local v5    # "image2":Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getK()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getP()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lfbp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 699
    .local v8, "img3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getK()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getP()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lfbp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 700
    .local v9, "img4":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 701
    :cond_a
    sget-object v14, Lfbq;->a:Ljava/lang/String;

    const-string/jumbo v15, "img2 err:%s %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v4}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getP()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v5}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getP()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 706
    :cond_b
    move-object/from16 v0, p0

    iput-object v13, v0, Lfbq;->g:Lorg/json/JSONObject;

    .line 707
    new-instance v14, Ljava/util/concurrent/CountDownLatch;

    const/4 v15, 0x5

    invoke-direct {v14, v15}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lfbq;->d:Ljava/util/concurrent/CountDownLatch;

    .line 708
    const/4 v14, 0x1

    new-instance v15, Lcom/alibaba/android/user/certify/ImageData;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v15, v2, v0}, Lcom/alibaba/android/user/certify/ImageData;-><init>(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lfbq;->a(ILcom/alibaba/android/user/certify/ImageData;)V

    .line 709
    const/4 v14, 0x2

    new-instance v15, Lcom/alibaba/android/user/certify/ImageData;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v15, v6, v0}, Lcom/alibaba/android/user/certify/ImageData;-><init>(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lfbq;->a(ILcom/alibaba/android/user/certify/ImageData;)V

    .line 710
    const/4 v14, 0x3

    new-instance v15, Lcom/alibaba/android/user/certify/ImageData;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v15, v7, v0}, Lcom/alibaba/android/user/certify/ImageData;-><init>(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lfbq;->a(ILcom/alibaba/android/user/certify/ImageData;)V

    .line 711
    const/4 v14, 0x4

    new-instance v15, Lcom/alibaba/android/user/certify/ImageData;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v15, v8, v0}, Lcom/alibaba/android/user/certify/ImageData;-><init>(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lfbq;->a(ILcom/alibaba/android/user/certify/ImageData;)V

    .line 712
    const/4 v14, 0x5

    new-instance v15, Lcom/alibaba/android/user/certify/ImageData;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v15, v9, v0}, Lcom/alibaba/android/user/certify/ImageData;-><init>(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lfbq;->a(ILcom/alibaba/android/user/certify/ImageData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 714
    .end local v1    # "actionResult":Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;
    .end local v2    # "big":Ljava/lang/String;
    .end local v4    # "image1":Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;
    .end local v5    # "image2":Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;
    .end local v6    # "img1":Ljava/lang/String;
    .end local v7    # "img2":Ljava/lang/String;
    .end local v8    # "img3":Ljava/lang/String;
    .end local v9    # "img4":Ljava/lang/String;
    .end local v10    # "movement1":Lorg/json/JSONObject;
    .end local v11    # "movement2":Lorg/json/JSONObject;
    .end local v12    # "type":Ljava/lang/String;
    .end local v13    # "value":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 715
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 716
    sget-object v14, Lfbq;->a:Ljava/lang/String;

    const-string/jumbo v15, "LivenessResult fail:%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 719
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method static synthetic a(Lfbq;Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;)Z
    .locals 1
    .param p0, "x0"    # Lfbq;
    .param p1, "x1"    # Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lfbq;->a(Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lfbq;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lfbq;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lfbq;

    .prologue
    .line 75
    iget-object v0, p0, Lfbq;->d:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic b(Lfbq;Lcom/alibaba/android/user/certify/ImageData;)V
    .locals 4
    .param p0, "x0"    # Lfbq;
    .param p1, "x1"    # Lcom/alibaba/android/user/certify/ImageData;

    .prologue
    .line 75
    .line 5534
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5535
    :cond_0
    iget-object v0, p0, Lfbq;->e:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "-1"

    sget v2, Lezg$l;->dt_certify_biometric_fail:I

    invoke-direct {p0, v0, v1, v2}, Lfbq;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;I)V

    .line 5536
    :goto_0
    return-void

    .line 5539
    :cond_1
    new-instance v0, Lfbq$12;

    invoke-direct {v0, p0, p1}, Lfbq$12;-><init>(Lfbq;Lcom/alibaba/android/user/certify/ImageData;)V

    const-class v1, Lcma;

    iget-object v2, p0, Lfbq;->b:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5571
    invoke-static {}, Lfah;->a()Lezo;

    move-result-object v1

    iget-object v2, p0, Lfbq;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/android/user/certify/ImageData;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lezo;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method static synthetic b(Lfbq;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .param p0, "x0"    # Lfbq;
    .param p1, "x1"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 75
    .line 2576
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lfbq$13;

    invoke-direct {v1, p0, p1}, Lfbq$13;-><init>(Lfbq;Lcom/alibaba/wukong/Callback;)V

    const-class v2, Lcma;

    iget-object v3, p0, Lfbq;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2604
    invoke-static {}, Lfah;->a()Lezo;

    move-result-object v1

    invoke-interface {v1, v0}, Lezo;->a(Lcma;)V

    .line 75
    return-void
.end method

.method static synthetic c(Lfbq;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lfbq;

    .prologue
    .line 75
    iget-object v0, p0, Lfbq;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lfbq;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lfbq;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfbq;

    .prologue
    .line 75
    iget-object v0, p0, Lfbq;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lfbq;->i:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfbq;->i:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lfbq;->i:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 825
    :cond_0
    return-void
.end method

.method static synthetic e(Lfbq;)J
    .locals 2
    .param p0, "x0"    # Lfbq;

    .prologue
    .line 75
    iget-wide v0, p0, Lfbq;->j:J

    return-wide v0
.end method

.method static synthetic f(Lfbq;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lfbq;

    .prologue
    .line 75
    iget-object v0, p0, Lfbq;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lfbq;)V
    .locals 2
    .param p0, "x0"    # Lfbq;

    .prologue
    .line 75
    .line 2828
    iget-object v0, p0, Lfbq;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2829
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "intent_key_certify_submitted"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2830
    iget-object v1, p0, Lfbq;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 75
    :cond_0
    return-void
.end method

.method static synthetic h(Lfbq;)V
    .locals 0
    .param p0, "x0"    # Lfbq;

    .prologue
    .line 75
    invoke-direct {p0}, Lfbq;->d()V

    return-void
.end method

.method static synthetic i(Lfbq;)V
    .locals 5
    .param p0, "x0"    # Lfbq;

    .prologue
    .line 75
    .line 4810
    iget-object v0, p0, Lfbq;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4814
    iget-object v0, p0, Lfbq;->i:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfbq;->i:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4815
    iget-object v0, p0, Lfbq;->i:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    :cond_0
    :goto_0
    return-void

    .line 4817
    :cond_1
    iget-object v0, p0, Lfbq;->b:Landroid/app/Activity;

    const/4 v1, 0x0

    iget-object v2, p0, Lfbq;->b:Landroid/app/Activity;

    sget v3, Lezg$l;->loading:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lfbq;->i:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    goto :goto_0
.end method

.method static synthetic j(Lfbq;)Lcom/alibaba/wukong/Callback;
    .locals 1
    .param p0, "x0"    # Lfbq;

    .prologue
    .line 75
    iget-object v0, p0, Lfbq;->e:Lcom/alibaba/wukong/Callback;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 394
    iget-object v0, p0, Lfbq;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lfbq;->b:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lfbq;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 396
    iput-object v2, p0, Lfbq;->h:Landroid/content/BroadcastReceiver;

    .line 399
    :cond_0
    iput-object v2, p0, Lfbq;->d:Ljava/util/concurrent/CountDownLatch;

    .line 400
    iput-object v2, p0, Lfbq;->e:Lcom/alibaba/wukong/Callback;

    .line 401
    iput-object v2, p0, Lfbq;->f:Lorg/json/JSONObject;

    .line 402
    iput-object v2, p0, Lfbq;->g:Lorg/json/JSONObject;

    .line 403
    iput-object v2, p0, Lfbq;->c:Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lfbq;->k:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lfbq;->k:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 406
    iput-object v2, p0, Lfbq;->k:Landroid/os/Handler;

    .line 408
    :cond_1
    iget-object v0, p0, Lfbq;->i:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lfbq;->i:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 410
    iput-object v2, p0, Lfbq;->i:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 412
    :cond_2
    iput-object v2, p0, Lfbq;->b:Landroid/app/Activity;

    .line 413
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p1, "mode"    # Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 330
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Landroid/os/Bundle;>;"
    invoke-direct {p0}, Lfbq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    const-string/jumbo v0, "-1"

    sget v1, Lezg$l;->dt_not_init:I

    invoke-direct {p0, p2, v0, v1}, Lfbq;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;I)V

    .line 346
    :goto_0
    return-void

    .line 335
    :cond_0
    iput-object p2, p0, Lfbq;->e:Lcom/alibaba/wukong/Callback;

    .line 336
    iget-object v0, p0, Lfbq;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/rp_take_photo.html"

    new-instance v2, Lfbq$8;

    invoke-direct {v2, p0, p1}, Lfbq$8;-><init>(Lfbq;Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 205
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v3, Lfbq$6;

    invoke-direct {v3, p0, p1}, Lfbq$6;-><init>(Lfbq;Lcom/alibaba/wukong/Callback;)V

    const-class v4, Lcma;

    iget-object v5, p0, Lfbq;->b:Landroid/app/Activity;

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 260
    .local v1, "listener":Lcma;
    iget-object v2, p0, Lfbq;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lfbo;->a(Landroid/content/Context;)Lfok;

    move-result-object v0

    .line 261
    .local v0, "clientInfo":Lfok;
    invoke-static {}, Lfah;->a()Lezo;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lezo;->a(Lfok;Lcma;)V

    .line 262
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 353
    invoke-direct {p0}, Lfbq;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfbq;->f:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 354
    :cond_0
    const-string/jumbo v2, "-1"

    sget v3, Lezg$l;->dt_not_init:I

    invoke-direct {p0, p3, v2, v3}, Lfbq;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;I)V

    .line 387
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v2, p0, Lfbq;->d:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lfbq;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 360
    :try_start_0
    iget-object v2, p0, Lfbq;->d:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 362
    .local v1, "ret":Z
    if-nez v1, :cond_2

    .line 363
    sget-object v2, Lfbq;->a:Ljava/lang/String;

    const-string/jumbo v3, "Image upload timeout."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    const-string/jumbo v2, "-1"

    sget v3, Lezg$l;->dt_oa_attend_assist_networkexception:I

    invoke-direct {p0, p3, v2, v3}, Lfbq;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    .end local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 370
    sget-object v2, Lfbq;->a:Ljava/lang/String;

    const-string/jumbo v3, "Image upload was interrupted."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    const-string/jumbo v2, "-1"

    sget v3, Lezg$l;->dt_oa_attend_assist_networkexception:I

    invoke-direct {p0, p3, v2, v3}, Lfbq;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;I)V

    goto :goto_0

    .line 377
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lfbq;->f:Lorg/json/JSONObject;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 378
    iget-object v2, p0, Lfbq;->f:Lorg/json/JSONObject;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    iget-object v2, p0, Lfbq;->g:Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    .line 380
    iget-object v2, p0, Lfbq;->f:Lorg/json/JSONObject;

    const-string/jumbo v3, "64"

    iget-object v4, p0, Lfbq;->g:Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2417
    :cond_3
    :goto_1
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    new-instance v3, Lfbq$9;

    invoke-direct {v3, p0, p3}, Lfbq$9;-><init>(Lfbq;Lcom/alibaba/wukong/Callback;)V

    const-class v4, Lcma;

    iget-object v5, p0, Lfbq;->b:Landroid/app/Activity;

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 2437
    invoke-static {}, Lfah;->a()Lezo;

    move-result-object v3

    iget-object v4, p0, Lfbq;->c:Ljava/lang/String;

    iget-object v5, p0, Lfbq;->f:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Lezo;->c(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 382
    :catch_1
    move-exception v0

    .line 383
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public final b(Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 269
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-direct {p0}, Lfbq;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    const-string/jumbo v1, "-1"

    sget v2, Lezg$l;->dt_not_init:I

    invoke-direct {p0, p1, v1, v2}, Lfbq;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;I)V

    .line 323
    :goto_0
    return-void

    .line 274
    :cond_0
    new-instance v0, Lcom/alibaba/security/biometrics/AuthContext;

    iget-object v1, p0, Lfbq;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/security/biometrics/AuthContext;-><init>(Landroid/content/Context;)V

    .line 275
    .local v0, "authContext":Lcom/alibaba/security/biometrics/AuthContext;
    sget-object v1, Lcom/alibaba/security/biometrics/AuthContext$AuthType;->BIO_FACE:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    invoke-static {}, Lfbp;->a()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lfbq$7;

    invoke-direct {v3, p0, p1}, Lfbq$7;-><init>(Lfbq;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/security/biometrics/AuthContext;->a(Lcom/alibaba/security/biometrics/AuthContext$AuthType;Landroid/os/Bundle;Lcom/alibaba/security/biometrics/AuthContext$b;)Z

    goto :goto_0
.end method
