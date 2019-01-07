.class public Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "BeaconDetectActivity.java"

# interfaces
.implements Lhgd$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
        "Lhgd$c",
        "<",
        "Lhgd$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field a:Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Lhgd$b;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Landroid/animation/ObjectAnimator;

.field private o:Landroid/animation/ObjectAnimator;

.field private p:Landroid/animation/ObjectAnimator;

.field private q:Z

.field private r:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Region;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "DDBC2016-DD88-6120-1F6C-D20E1F058836"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "0000FE1A-0000-1000-8000-00805F9B34FB"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 66
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->m:Z

    .line 72
    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->q:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->s:Ljava/util/List;

    .line 80
    new-instance v0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->t:Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->m:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->q:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Lhgd$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->k:Lhgd$b;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->g:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->h:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->a:Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->n:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->o:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->p:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->g:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$9;-><init>(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 246
    new-instance v0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$10;-><init>(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 253
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "beacons":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Beacon;>;"
    new-instance v0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$4;-><init>(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 364
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "clickAble"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 313
    new-instance v0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$3;-><init>(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 320
    return-void
.end method

.method public final a(ZI)V
    .locals 2
    .param p1, "bindSuccess"    # Z
    .param p2, "bindCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 381
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "beacon_detect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "bind_succ"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    const-string/jumbo v1, "bind_count"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 385
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->k:Lhgd$b;

    invoke-interface {v1}, Lhgd$b;->a()V

    .line 386
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->finish()V

    .line 387
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->q:Z

    .line 226
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->q:Z

    .line 231
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 368
    new-instance v0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$5;-><init>(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 377
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->n:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->o:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->p:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$6;-><init>(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 438
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->m:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 180
    :goto_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    .line 181
    return-void

    .line 178
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->a(ZI)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "corpId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->l:Ljava/lang/String;

    .line 98
    sget v3, Lhdn$i;->activity_beacon_detect_layout:I

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->setContentView(I)V

    .line 100
    const-string/jumbo v3, "BLUETOOTH"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->r:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    .line 1117
    sget v3, Lhdn$h;->beacon_icon_layout:I

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->c:Landroid/widget/RelativeLayout;

    .line 1118
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v4

    .line 1119
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1120
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1121
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1122
    sget v3, Lhdn$h;->beacon_icon:I

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->j:Landroid/widget/ImageView;

    .line 1123
    sget v3, Lhdn$h;->beacon_upload_complete_icon:I

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->i:Landroid/widget/ImageView;

    .line 1124
    sget v3, Lhdn$h;->beacon_spread:I

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->a:Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;

    .line 1125
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->a:Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;

    .line 2056
    iput v4, v3, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->d:I

    .line 2057
    iput v4, v3, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->e:I

    .line 1126
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->a:Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;

    .line 2062
    iget-object v3, v4, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->a:[Landroid/widget/ImageView;

    array-length v5, v3

    .line 2063
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    .line 2064
    iget-object v6, v4, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->a:[Landroid/widget/ImageView;

    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v7, v6, v3

    .line 2065
    iget-object v6, v4, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->a:[Landroid/widget/ImageView;

    aget-object v6, v6, v3

    sget v7, Lhdn$g;->beacon_detect_oval:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2066
    iget-object v6, v4, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->a:[Landroid/widget/ImageView;

    aget-object v6, v6, v3

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2067
    iget-object v6, v4, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->a:[Landroid/widget/ImageView;

    aget-object v6, v6, v3

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    iget v8, v4, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->d:I

    iget v9, v4, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->e:I

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2069
    const-string/jumbo v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 2071
    const-string/jumbo v7, "scaleX"

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 2073
    const-string/jumbo v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_2

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 2075
    iget-object v9, v4, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->b:[Landroid/animation/ObjectAnimator;

    iget-object v10, v4, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->a:[Landroid/widget/ImageView;

    aget-object v10, v10, v3

    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v6, 0x1

    aput-object v7, v11, v6

    const/4 v6, 0x2

    aput-object v8, v11, v6

    invoke-static {v10, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v10, 0x4b0

    .line 2076
    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v9, v3

    .line 2077
    iget-object v6, v4, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->b:[Landroid/animation/ObjectAnimator;

    aget-object v6, v6, v3

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 2079
    iget-object v6, v4, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->b:[Landroid/animation/ObjectAnimator;

    aget-object v6, v6, v3

    .line 2080
    iget-object v7, v4, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->a:[Landroid/widget/ImageView;

    aget-object v7, v7, v3

    .line 2081
    iget-object v8, v4, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->c:[Ljava/lang/Runnable;

    new-instance v9, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView$1;

    invoke-direct {v9, v4, v6, v7}, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView$1;-><init>(Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;Landroid/animation/ObjectAnimator;Landroid/widget/ImageView;)V

    aput-object v9, v8, v3

    .line 2063
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1127
    :cond_0
    sget v3, Lhdn$h;->beacon_note:I

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->d:Landroid/widget/TextView;

    .line 1128
    sget v3, Lhdn$h;->beacon_note_num:I

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->e:Landroid/widget/TextView;

    .line 1129
    sget v3, Lhdn$h;->beacon_note_tip:I

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->f:Landroid/widget/TextView;

    .line 1130
    sget v3, Lhdn$h;->beacon_button:I

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->g:Landroid/widget/Button;

    .line 1131
    sget v3, Lhdn$h;->back_layout:I

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->h:Landroid/widget/RelativeLayout;

    .line 1132
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->h:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$7;

    invoke-direct {v4, p0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity$7;-><init>(Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1139
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 1140
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1141
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v3

    .line 1142
    if-nez v3, :cond_1

    .line 1143
    sget v3, Lhdn$k;->dt_at_beacon_conn_open_bluetooth:I

    invoke-virtual {p0, v3}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2391
    :cond_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->n:Landroid/animation/ObjectAnimator;

    if-nez v3, :cond_2

    .line 2392
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->j:Landroid/widget/ImageView;

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->n:Landroid/animation/ObjectAnimator;

    .line 2393
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->n:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2394
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->n:Landroid/animation/ObjectAnimator;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 2396
    :cond_2
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->o:Landroid/animation/ObjectAnimator;

    if-nez v3, :cond_3

    .line 2397
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->d:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->o:Landroid/animation/ObjectAnimator;

    .line 2398
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->o:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2399
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->o:Landroid/animation/ObjectAnimator;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 2401
    :cond_3
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->p:Landroid/animation/ObjectAnimator;

    if-nez v3, :cond_4

    .line 2402
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->f:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->p:Landroid/animation/ObjectAnimator;

    .line 2403
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->p:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2404
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->p:Landroid/animation/ObjectAnimator;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 2406
    :cond_4
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->n:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2407
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->n:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 2409
    :cond_5
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->o:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2410
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->o:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 2412
    :cond_6
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2413
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 103
    :cond_7
    new-instance v3, Lhgi;

    invoke-static {}, Lhge;->d()Lhge;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lhgi;-><init>(Lhgd$c;Lhgd$a;)V

    .line 3188
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->k:Lhgd$b;

    .line 105
    sget-object v4, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    :goto_1
    const/4 v5, 0x2

    if-ge v3, v5, :cond_8

    aget-object v2, v4, v3

    .line 106
    .local v2, "uuid":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Lorg/altbeacon/beacon/Identifier;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    invoke-static {v7}, Lorg/altbeacon/beacon/Identifier;->fromUuid(Ljava/util/UUID;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 107
    .local v0, "identifiers":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Identifier;>;"
    new-instance v1, Lorg/altbeacon/beacon/Region;

    invoke-direct {v1, v2, v0}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 108
    .local v1, "region":Lorg/altbeacon/beacon/Region;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->s:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 111
    .end local v0    # "identifiers":Ljava/util/List;, "Ljava/util/List<Lorg/altbeacon/beacon/Identifier;>;"
    .end local v1    # "region":Lorg/altbeacon/beacon/Region;
    .end local v2    # "uuid":Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/altbeacon/beacon/Region;

    .line 112
    .restart local v1    # "region":Lorg/altbeacon/beacon/Region;
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->r:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->t:Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;

    invoke-interface {v4, v1, v5}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->startBeaconAdvertising(Lorg/altbeacon/beacon/Region;Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;)V

    goto :goto_2

    .line 114
    .end local v1    # "region":Lorg/altbeacon/beacon/Region;
    :cond_9
    return-void

    .line 2069
    .line 2071
    .line 2073
    .line 2392
    .line 2397
    .line 2402
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 152
    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->m:Z

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->a:Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;->a()V

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->e()V

    .line 157
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/altbeacon/beacon/Region;

    .line 158
    .local v0, "region":Lorg/altbeacon/beacon/Region;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->r:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/BeaconDetectActivity;->t:Lcom/alibaba/doraemon/bluetooth/BeaconScanListener;

    invoke-interface {v2, v0, v3}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->stopBeaconAdvertising(Lorg/altbeacon/beacon/Region;Lcom/alibaba/doraemon/bluetooth/BeaconMonitorListener;)V

    goto :goto_0

    .line 161
    .end local v0    # "region":Lorg/altbeacon/beacon/Region;
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 166
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 171
    return-void
.end method
