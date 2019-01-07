.class Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$4;
.super Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;
.source "BluetoothMagicianImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->createBleClient(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/doraemon/bluetooth/BluetoothStateListener;Landroid/app/Activity;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;

.field final synthetic val$activityLifecycle:Landroid/app/Activity;

.field final synthetic val$lifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

.field final synthetic val$ret:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;Landroid/app/Activity;Ljava/lang/Object;Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$4;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$4;->val$activityLifecycle:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$4;->val$ret:Ljava/lang/Object;

    iput-object p4, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$4;->val$lifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-direct {p0}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 243
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$4;->val$activityLifecycle:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$4;->this$0:Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$4;->val$ret:Ljava/lang/Object;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl;->releaseClient(Ljava/lang/Object;J)V

    .line 273
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/bluetooth/BluetoothMagicianImpl$4;->val$lifecycleMonitor:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->unregisterActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 275
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 257
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 252
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 267
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 248
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 262
    return-void
.end method
