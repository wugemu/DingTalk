.class public Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
.super Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;
.source "BeaconFragment.java"


# instance fields
.field private A:Z

.field private B:J

.field private C:Z

.field private D:Z

.field private E:Landroid/os/Handler;

.field private F:Ljava/lang/Runnable;

.field private M:Landroid/content/BroadcastReceiver;

.field a:Lbsy$b;

.field b:Lbsy$b;

.field c:Lbsy$b;

.field private d:I

.field private e:Z

.field private f:I

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/filter/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private w:Z

.field private x:Z

.field private y:Landroid/app/Dialog;

.field private z:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;-><init>()V

    .line 99
    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d:I

    .line 108
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->e:Z

    .line 110
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f:I

    .line 150
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->E:Landroid/os/Handler;

    .line 292
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$10;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->F:Ljava/lang/Runnable;

    .line 390
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$11;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->M:Landroid/content/BroadcastReceiver;

    .line 602
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$13;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a:Lbsy$b;

    .line 666
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$14;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$14;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->b:Lbsy$b;

    .line 686
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->c:Lbsy$b;

    return-void
.end method

.method private E()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 481
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->k:Landroid/view/View;

    if-nez v0, :cond_0

    .line 542
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->p:Landroid/widget/TextView;

    sget v2, Lbrx$g;->icon_bluetooth_succe:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 486
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d:I

    if-ne v0, v3, :cond_1

    .line 487
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->a()V

    .line 492
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->setVisibility(I)V

    goto :goto_0

    .line 494
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 495
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->a()V

    .line 500
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->setVisibility(I)V

    goto :goto_0

    .line 503
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f:I

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->e:Z

    if-eq v0, v8, :cond_3

    .line 507
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->a()V

    .line 508
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->p:Landroid/widget/TextView;

    sget v2, Lbrx$g;->icon_connect_bluetoo:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 512
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 515
    :cond_3
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f:I

    if-ne v0, v8, :cond_5

    .line 516
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->p:Landroid/widget/TextView;

    sget v2, Lbrx$g;->icon_connect_bluetoo:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 521
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->s:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_device_ble_not_support:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 523
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->t:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_device_ble_support_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 525
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    .line 4237
    iget-boolean v0, v2, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->a:Z

    .line 4220
    if-nez v0, :cond_8

    .line 5209
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->getChildCount()I

    move-result v3

    move v0, v1

    .line 5210
    :goto_1
    if-ge v0, v3, :cond_7

    .line 5211
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5212
    instance-of v5, v4, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$a;

    if-eqz v5, :cond_6

    .line 5213
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5210
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4222
    :cond_7
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 4223
    iput-boolean v8, v2, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->a:Z

    .line 526
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f:I

    if-ne v0, v7, :cond_9

    .line 533
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->q:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_door_guard_config_bluetooth_connecting:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 540
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->r:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_device_config_connect_bluetooth_tips:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 534
    :cond_9
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 535
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->q:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_smart_device_not_exist_and_reset2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 537
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->q:Landroid/widget/TextView;

    sget v1, Lbrx$g;->dt_device_config_search_bluetooth:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private K()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 546
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d:I

    if-ne v0, v2, :cond_0

    .line 569
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbte;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f:I

    .line 568
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->E()V

    goto :goto_0

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->u:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    if-nez v0, :cond_2

    .line 553
    iput v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f:I

    goto :goto_1

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->u:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 555
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->D:Z

    if-eqz v0, :cond_3

    .line 556
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f:I

    goto :goto_1

    .line 558
    :cond_3
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d:I

    if-ne v0, v1, :cond_4

    .line 559
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f:I

    goto :goto_1

    .line 561
    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f:I

    goto :goto_1

    .line 565
    :cond_5
    iput v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f:I

    goto :goto_1
.end method

.method private L()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 954
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 955
    .local v8, "ssids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d()Ljava/lang/String;

    move-result-object v5

    .line 956
    .local v5, "list":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 958
    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 959
    .local v1, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 960
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 961
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 962
    .local v6, "object":Lorg/json/JSONObject;
    const-string/jumbo v9, "ssid"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 963
    .local v7, "ssid":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 964
    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;-><init>()V

    .line 965
    .local v2, "data":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    iput-object v7, v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->wifiName:Ljava/lang/String;

    .line 966
    invoke-interface {v8, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 960
    .end local v2    # "data":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 970
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "ssid":Ljava/lang/String;
    :cond_1
    const-string/jumbo v9, "BleBind"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "getAroundSsidsFromDevice ssids = "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v4    # "i":I
    :cond_2
    :goto_1
    return-object v8

    .line 971
    :catch_0
    move-exception v3

    .line 972
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->y:Landroid/app/Dialog;

    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/filter/ScanFilter;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/guard/ui/filter/ScanFilter;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "params_scan_filters"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 84
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;-><init>()V

    .line 85
    .local v1, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->setArguments(Landroid/os/Bundle;)V

    .line 86
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Ljava/util/List;Ljava/lang/String;J)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J

    .prologue
    .line 72
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(Ljava/util/List;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;J)Ljava/util/List;
    .locals 6
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "deviceId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "validGroupData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;>;"
    const/4 v1, 0x0

    .line 883
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 901
    :cond_0
    :goto_0
    return-object v1

    .line 886
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 887
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 888
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    .line 889
    .local v0, "gd":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    if-eqz v0, :cond_2

    .line 892
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 893
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 898
    .end local v0    # "gd":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    .end local v1    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;>;"
    :cond_3
    const-string/jumbo v2, "BleBind"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "not found device bind corpId, device="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 899
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 898
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbsi;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 905
    .local p1, "deviceWifiModels":Ljava/util/List;, "Ljava/util/List<Lbsi;>;"
    .local p2, "aroundGroupData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 906
    :cond_0
    const/4 v5, 0x0

    .line 928
    :goto_0
    return-object v5

    .line 5932
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5933
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v6

    .line 5934
    if-eqz v6, :cond_3

    iget-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v7, :cond_3

    .line 5935
    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 5936
    if-eqz v6, :cond_2

    .line 5940
    invoke-static {v6}, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->parseGroupData(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v6

    .line 5941
    if-eqz v6, :cond_2

    .line 5942
    iget-object v8, v6, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 909
    .local v0, "allGroupData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;>;"
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .local v5, "validGroupData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;>;"
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 911
    .local v1, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbsi;

    .line 912
    .local v3, "model":Lbsi;
    if-eqz v3, :cond_4

    .line 913
    iget-object v7, v3, Lbsi;->b:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 914
    iget-object v7, v3, Lbsi;->b:Ljava/lang/String;

    invoke-interface {p2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 915
    iget-object v7, v3, Lbsi;->b:Ljava/lang/String;

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    .line 916
    .local v2, "data":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 917
    iget-object v7, v3, Lbsi;->c:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    .line 918
    .local v4, "parsedData":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    if-eqz v4, :cond_4

    .line 919
    iget-object v7, v3, Lbsi;->b:Ljava/lang/String;

    iput-object v7, v4, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->wifiName:Ljava/lang/String;

    .line 920
    iget-object v7, v3, Lbsi;->a:Ljava/lang/String;

    iput-object v7, v4, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->wifiPwd:Ljava/lang/String;

    .line 921
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 927
    .end local v2    # "data":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    .end local v3    # "model":Lbsi;
    .end local v4    # "parsedData":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    :cond_5
    const-string/jumbo v6, "BleBind"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "deviceWifiModels = "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    .line 6726
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 6727
    if-eqz v0, :cond_0

    .line 6728
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    :goto_0
    return v0

    .line 6730
    :cond_0
    const/4 v0, 0x1

    .line 72
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->e:Z

    return p1
.end method

.method private b(I)V
    .locals 4
    .param p1, "time"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 288
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->E:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->E:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->F:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    const/4 v3, 0x0

    .line 72
    .line 6735
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->x:Z

    if-nez v0, :cond_0

    .line 6739
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->y:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 6742
    invoke-static {}, Lcms;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6743
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "BleBind"

    const-string/jumbo v2, "oa_bravo_attendance_bluetoothset_openlocation_click"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 6745
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6746
    sget v1, Lbrx$g;->dt_gps_not_enabled:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6747
    sget v1, Lbrx$g;->dt_open_location_settings:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6756
    sget v1, Lbrx$g;->cancel:I

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6757
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->y:Landroid/app/Dialog;

    .line 6758
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->y:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 72
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->w:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->x:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->y:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->D:Z

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    .line 6764
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->z:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 6765
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6766
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6767
    const-string/jumbo v1, "device_type"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6768
    const-string/jumbo v1, "device_server"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6770
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "BleBind"

    const-string/jumbo v3, "oa_bravo_attendance_bluetoothset_openbluetooth_click"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 6772
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6773
    sget v1, Lbrx$g;->dt_device_bluetooth_settings_msg:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6774
    sget v1, Lbrx$g;->dt_device_bluetooth_settings_confirm:I

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$4;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6783
    sget v1, Lbrx$g;->cancel:I

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$5;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6792
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6793
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->z:Landroid/app/Dialog;

    .line 6795
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->z:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6796
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->z:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 72
    :cond_2
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->u:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->K()V

    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->w:Z

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->z:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    const/4 v2, 0x1

    .line 72
    .line 7437
    invoke-static {}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getAllFoundDevices()Ljava/util/List;

    move-result-object v0

    .line 7438
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7439
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->C:Z

    if-eqz v0, :cond_1

    .line 7440
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lbtl;->a(ILjava/lang/String;)V

    .line 7578
    :cond_1
    :goto_0
    return-void

    .line 7446
    :cond_2
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->x:Z

    .line 7448
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 7450
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$12;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7458
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    .line 7461
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->v:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 7462
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/guard/ui/filter/ScanFilter;

    .line 7463
    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/filter/ScanFilter;->match(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 7464
    const/4 v1, 0x0

    .line 7470
    :goto_1
    if-eqz v1, :cond_4

    .line 7573
    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d:I

    if-nez v1, :cond_1

    .line 7577
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->mac:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7581
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->u:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    if-eqz v1, :cond_1

    .line 7585
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->u:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;->a(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 7587
    if-eqz v1, :cond_1

    .line 7590
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(Landroid/bluetooth/BluetoothDevice;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->E:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->x:Z

    return v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->A:Z

    return v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->e:Z

    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->E()V

    return-void
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    .line 7801
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v0

    .line 7802
    if-eqz v0, :cond_1

    .line 7803
    invoke-interface {v0}, Lbsw$b;->K()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lbsw$b;->K()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7804
    const-string/jumbo v0, "BleBind"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "group found from cache"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7805
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->s()V

    .line 7876
    :goto_0
    return-void

    .line 7807
    :cond_0
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$6;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;Lbsw$b;)V

    .line 7869
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->C()V

    .line 7870
    invoke-static {}, Lbso;->a()Lbso;

    move-result-object v2

    .line 7871
    invoke-interface {v0}, Lbsw$b;->e()I

    move-result v3

    .line 7872
    invoke-interface {v0}, Lbsw$b;->b()Ljava/lang/String;

    move-result-object v4

    .line 7873
    invoke-interface {v0}, Lbsw$b;->d()Ljava/lang/String;

    move-result-object v5

    const-class v0, Lcma;

    .line 7875
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v1, v0, v6}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 8192
    new-instance v1, Lbso$2;

    const/16 v6, 0x1f40

    invoke-direct {v1, v2, v0, v6}, Lbso$2;-><init>(Lbso;Lcma;I)V

    .line 8210
    const-class v0, Lcom/alibaba/android/dingtalk/guard/idl/services/OpenDeviceIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/idl/services/OpenDeviceIService;

    invoke-interface {v0, v3, v4, v5, v1}, Lcom/alibaba/android/dingtalk/guard/idl/services/OpenDeviceIService;->queryDingWifi(ILjava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0

    .line 7878
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->q()V

    goto :goto_0
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->C:Z

    return v0
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->B:J

    return-wide v0
.end method

.method static synthetic t(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    .line 8698
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v0

    .line 8699
    if-eqz v0, :cond_3

    .line 8700
    invoke-interface {v0}, Lbsw$b;->c()I

    move-result v1

    .line 8701
    invoke-interface {v0}, Lbsw$b;->e()I

    move-result v2

    .line 9219
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->l()Lbsw$c;

    move-result-object v3

    .line 9220
    if-eqz v3, :cond_0

    .line 9221
    invoke-interface {v3}, Lbsw$c;->j()V

    .line 8707
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 8708
    if-lez v1, :cond_1

    .line 8709
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->v:Ljava/util/List;

    new-instance v4, Lcom/alibaba/android/dingtalk/guard/ui/filter/DeviceTypeCodeScanFilter;

    invoke-direct {v4, v1}, Lcom/alibaba/android/dingtalk/guard/ui/filter/DeviceTypeCodeScanFilter;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8711
    :cond_1
    if-lez v2, :cond_2

    .line 8712
    invoke-interface {v0, v2}, Lbsw$b;->b(I)V

    .line 8713
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->v:Ljava/util/List;

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/filter/ServiceIdScanFilter;

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/filter/ServiceIdScanFilter;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8716
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f:I

    .line 8717
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d:I

    .line 8718
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->K()V

    .line 8719
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->b(I)V

    .line 8720
    :goto_0
    return-void

    .line 8721
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->x()V

    goto :goto_0
.end method

.method static synthetic u(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->L()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 170
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->x()V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->A()V

    goto :goto_0
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "modelBean"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    .prologue
    .line 596
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d:I

    .line 597
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->K()V

    .line 599
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->a(Landroid/bluetooth/BluetoothDevice;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V

    .line 600
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 212
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 214
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 215
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 216
    const-string/jumbo v1, "params_scan_filters"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->v:Ljava/util/List;

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v1

    invoke-interface {v1}, Lbsw$b;->c()I

    move-result v1

    if-ne v1, v5, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->C:Z

    .line 220
    sget v1, Lbrx$d;->top_layout:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->g:Landroid/view/View;

    .line 221
    sget v1, Lbrx$d;->bottom_layout:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->h:Landroid/view/View;

    .line 222
    sget v1, Lbrx$d;->search_layout:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->i:Landroid/view/View;

    .line 223
    sget v1, Lbrx$d;->device_not_support_layout:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->j:Landroid/view/View;

    .line 224
    sget v1, Lbrx$d;->connected_layout:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->k:Landroid/view/View;

    .line 225
    sget v1, Lbrx$d;->connected_fail_layout:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->l:Landroid/view/View;

    .line 227
    sget v1, Lbrx$d;->bluetooth_disable_layout:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->n:Landroid/view/View;

    .line 228
    sget v1, Lbrx$d;->bluetooth_enable_layout:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->o:Landroid/view/View;

    .line 230
    sget v1, Lbrx$d;->bluetooth_icon:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->p:Landroid/widget/TextView;

    .line 232
    sget v1, Lbrx$d;->text1:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->q:Landroid/widget/TextView;

    .line 233
    sget v1, Lbrx$d;->text2:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->r:Landroid/widget/TextView;

    .line 235
    sget v1, Lbrx$d;->error_text1:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->s:Landroid/widget/TextView;

    .line 236
    sget v1, Lbrx$d;->error_text2:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->t:Landroid/widget/TextView;

    .line 238
    sget v1, Lbrx$d;->ripple_layout:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    .line 240
    sget v1, Lbrx$d;->enable_bluetooth_btn:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$7;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$7;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    sget v1, Lbrx$d;->reconnect_btn:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$8;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$8;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iput v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->d:I

    .line 261
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->u:Lcom/alibaba/android/dingtalk/guard/core/BeaconScanHelper;

    .line 263
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->K()V

    .line 265
    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f:I

    if-eq v1, v5, :cond_1

    iget v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->f:I

    if-ne v1, v2, :cond_4

    .line 266
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "BleBind"

    const-string/jumbo v3, "oa_bravo_attendance_bluetoothset_nonsupport_click"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 283
    :goto_1
    return-void

    :cond_2
    move v1, v3

    .line 218
    goto/16 :goto_0

    :cond_3
    move v1, v3

    goto/16 :goto_0

    .line 270
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->B:J

    .line 1364
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a:Lbsy$b;

    .line 2143
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v4

    .line 2144
    if-eqz v4, :cond_5

    .line 2145
    invoke-interface {v4, v1}, Lbsw$a;->b(Lbsy$b;)V

    .line 1365
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->b:Lbsy$b;

    .line 2171
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v4

    .line 2172
    if-eqz v4, :cond_6

    .line 2173
    invoke-interface {v4, v1}, Lbsw$a;->d(Lbsy$b;)V

    .line 1366
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->c:Lbsy$b;

    .line 2185
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v4

    .line 2186
    if-eqz v4, :cond_7

    .line 2187
    invoke-interface {v4, v1}, Lbsw$a;->f(Lbsy$b;)V

    .line 1368
    :cond_7
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1369
    const-string/jumbo v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1370
    const-string/jumbo v4, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1373
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1374
    const-string/jumbo v4, "com.alibaba.dingtalk.ACTION_SMART_DEVICE_UPDATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 274
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v4, v1, v3

    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "android.permission.BLUETOOTH_ADMIN"

    aput-object v3, v1, v2

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$9;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment$9;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;)V

    .line 3029
    const/16 v3, 0x101

    new-instance v4, Lbtc$1;

    invoke-direct {v4, p0, v2}, Lbtc$1;-><init>(Landroid/support/v4/app/Fragment;Lbtc$a;)V

    invoke-static {p0, v3, v1, v4}, Lbyy;->a(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;Lbzc;)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 342
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->onDestroy()V

    .line 343
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->a()V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->E:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 348
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->E:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->E:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3381
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->a:Lbsy$b;

    .line 4150
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v1

    .line 4151
    if-eqz v1, :cond_1

    .line 4152
    invoke-interface {v1, v0}, Lbsw$a;->c(Lbsy$b;)V

    .line 3382
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->b:Lbsy$b;

    .line 4178
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v1

    .line 4179
    if-eqz v1, :cond_2

    .line 4180
    invoke-interface {v1, v0}, Lbsw$a;->e(Lbsy$b;)V

    .line 3383
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->c:Lbsy$b;

    .line 4192
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v1

    .line 4193
    if-eqz v1, :cond_3

    .line 4194
    invoke-interface {v1, v0}, Lbsw$a;->g(Lbsy$b;)V

    .line 3385
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3387
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 353
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->z:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 354
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->z:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 357
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->y:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    .line 358
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->y:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 360
    :cond_5
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->A:Z

    .line 185
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->onPause()V

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2q0r.11900336"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    const-string/jumbo v1, "device_type"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string/jumbo v1, "device_server"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Smart_Device_Set_Bluetooth"

    invoke-interface {v1, p0, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->leavePage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 194
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 198
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->onResume()V

    .line 199
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->A:Z

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "spm"

    const-string/jumbo v2, "a2q0r.11900336"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    const-string/jumbo v1, "device_type"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v1, "device_server"

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BeaconFragment;->m()Lbsw$b;

    move-result-object v2

    invoke-interface {v2}, Lbsw$b;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Smart_Device_Set_Bluetooth"

    invoke-interface {v1, p0, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->enterPage(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    .line 208
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 179
    sget v0, Lbrx$e;->activity_device_config_beacon:I

    return v0
.end method
