.class public Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "BleTestFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;,
        Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$c;,
        Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/UUID;


# instance fields
.field a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

.field b:Landroid/app/Dialog;

.field private c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;

.field private f:Landroid/widget/TextView;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/os/Handler;

.field private l:Lbti;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "0000fe3c-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->g:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 77
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->h:Ljava/util/Map;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->i:Ljava/lang/String;

    .line 243
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->k:Landroid/os/Handler;

    .line 611
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$13;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$13;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->l:Lbti;

    .line 653
    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->I:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;IILjava/lang/String;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 64
    .line 7498
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    if-eqz v0, :cond_0

    .line 7501
    const-string/jumbo v0, "handshake"

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Ljava/lang/String;)V

    .line 7502
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 7503
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 7504
    const-string/jumbo v1, "xxxx"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 7505
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 7506
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 7507
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$10;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;IILjava/lang/String;J)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 64
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;IJII)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 64
    .line 5480
    invoke-static {}, Lbso;->a()Lbso;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$9;

    invoke-direct {v3, p0, p4, p5}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$9;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;II)V

    invoke-virtual {v0, v1, v2, v3}, Lbso;->a(Ljava/lang/Integer;Ljava/lang/Long;Lcma;)V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;

    .prologue
    .line 64
    .line 2267
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2268
    const-string/jumbo v1, "\u662f\u5426\u8fde\u63a5?"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2269
    const-string/jumbo v1, "\u8fde\u63a5"

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2275
    const-string/jumbo v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 2276
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 64
    .line 4209
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->c()I

    move-result v0

    .line 4210
    const-string/jumbo v1, "ble_test"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$20;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$20;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;ILjava/lang/Runnable;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    .line 7316
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    if-eqz v0, :cond_0

    .line 7319
    const-string/jumbo v0, "connectWifi"

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Ljava/lang/String;)V

    .line 7320
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 7321
    new-instance v1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;

    invoke-direct {v1}, Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;-><init>()V

    .line 7322
    iput-object p1, v1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;->a:Ljava/lang/String;

    .line 7323
    iput-object p2, v1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;->b:Ljava/lang/String;

    .line 7325
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 7326
    const-string/jumbo v4, "xxxx"

    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 7327
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 7328
    sget-object v4, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 7329
    new-instance v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$5;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$5;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Lcom/alibaba/android/dingbox/btinterface/BleInterface$i;J)V

    invoke-interface {v0, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 64
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->k:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->e:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    .line 6550
    const-string/jumbo v0, "connecting..."

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Ljava/lang/String;)V

    .line 6551
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 6552
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    invoke-interface {v2}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->generateBleCharacteristic()Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    move-result-object v2

    const-string/jumbo v3, "0000fe1c-0000-1000-8000-00805f9b34fb"

    .line 6553
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->buildWriteCharacteristicUUID(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    move-result-object v2

    const-string/jumbo v3, "0000fe1b-0000-1000-8000-00805f9b34fb"

    .line 6554
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->buildReadCharacteristicUUID(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    move-result-object v2

    const/4 v3, 0x1

    .line 6555
    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;->buildContinuedNotification(Z)Lcom/alibaba/doraemon/impl/bluetooth/BleCharacteristic;

    .line 6558
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    sget-object v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->g:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    new-instance v5, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$11;

    invoke-direct {v5, p0, v0, v1, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$11;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;JLjava/lang/String;)V

    invoke-interface {v2, p1, v3, v4, v5}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->createBleClientByAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    .line 64
    return-void
.end method

.method private c()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 232
    .local v1, "times":I
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 237
    :goto_0
    if-gtz v1, :cond_0

    .line 238
    const/4 v1, 0x1

    .line 240
    :cond_0
    return v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    const/4 v5, 0x0

    .line 64
    .line 2282
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->b:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 2283
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbrx$e;->device_ble_wifi_test:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2284
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2285
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2286
    sget v0, Lbrx$d;->ssid_edittext:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2287
    sget v3, Lbrx$d;->password_edittext:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2289
    new-instance v3, Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;-><init>(Landroid/content/Context;)V

    .line 3066
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;->b()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 3067
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/guard/utils/WifiAdminSimple;->a(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v3

    .line 2290
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2291
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2294
    :cond_0
    const-string/jumbo v3, "\u8fde\u63a5"

    new-instance v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$4;

    invoke-direct {v4, p0, v0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$4;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2308
    const-string/jumbo v0, "\u53d6\u6d88"

    invoke-virtual {v2, v0, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2309
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->b:Landroid/app/Dialog;

    .line 2311
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 64
    return-void
.end method

.method private d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 595
    const-string/jumbo v0, "user disconnect"

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    const-wide/16 v2, 0x7d0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;->releaseClient(Ljava/lang/Object;J)V

    .line 599
    :cond_0
    iput-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    .line 600
    iput-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->i:Ljava/lang/String;

    .line 601
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 64
    .line 3358
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    if-eqz v0, :cond_0

    .line 3361
    const-string/jumbo v0, "getDeviceInfo"

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Ljava/lang/String;)V

    .line 3362
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3363
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 3364
    const-string/jumbo v1, "xxxx"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 3365
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 3366
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 3367
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$6;

    invoke-direct {v1, p0, v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$6;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;J)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 64
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 64
    .line 4438
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    if-eqz v0, :cond_0

    .line 4441
    const-string/jumbo v0, "active"

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Ljava/lang/String;)V

    .line 4442
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4443
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 4444
    const-string/jumbo v1, "xxxx"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 4445
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 4446
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 4447
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$8;

    invoke-direct {v1, p0, v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$8;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;J)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 64
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 64
    .line 5399
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    if-eqz v0, :cond_0

    .line 5402
    const-string/jumbo v0, "getWifiInfo"

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(Ljava/lang/String;)V

    .line 5403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 5404
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 5405
    const-string/jumbo v1, "xxxx"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 5406
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 5407
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 5408
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$7;

    invoke-direct {v1, p0, v2, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$7;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;J)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 64
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->h:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->d()V

    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 64
    .line 6201
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 6202
    if-nez v0, :cond_0

    .line 6203
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 6205
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)Lcom/alibaba/android/dingbox/btinterface/BleInterface;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->c:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    sget v0, Lbrx$d;->text:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->f:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 106
    sget v0, Lbrx$d;->list_view:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->d:Landroid/widget/ListView;

    .line 108
    sget v0, Lbrx$d;->times:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->j:Landroid/widget/EditText;

    .line 110
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;B)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->e:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->e:Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    const-string/jumbo v0, "BLUETOOTH"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a:Lcom/alibaba/doraemon/bluetooth/BluetoothMagician;

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$12;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    sget v0, Lbrx$d;->connect_wifi:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$14;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$14;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    sget v0, Lbrx$d;->get_activeinfo:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$15;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    sget v0, Lbrx$d;->active:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$16;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$16;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    sget v0, Lbrx$d;->wifilist:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$17;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$17;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    sget v0, Lbrx$d;->handshake:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$18;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    sget v0, Lbrx$d;->disconnect:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->a(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$19;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment$19;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1054
    sget-object v0, Lbry$c;->a:Lbry;

    .line 195
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->l:Lbti;

    invoke-virtual {v0, v1}, Lbry;->a(Lbti;)V

    .line 197
    const/4 v0, 0x1

    invoke-static {v0}, Lbtk;->a(Z)V

    .line 198
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 605
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 606
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->d()V

    .line 2054
    sget-object v0, Lbry$c;->a:Lbry;

    .line 607
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BleTestFragment;->l:Lbti;

    invoke-virtual {v0, v1}, Lbry;->b(Lbti;)V

    .line 608
    const/4 v0, 0x0

    invoke-static {v0}, Lbtk;->a(Z)V

    .line 609
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onPause()V

    .line 248
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onResume()V

    .line 253
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lbrx$e;->device_ble_test_fragment:I

    return v0
.end method
