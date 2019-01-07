.class final Lcom/alipay/mobile/nebulacore/Nebula$5;
.super Ljava/lang/Object;
.source "Nebula.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/Nebula;->initTaskInfo(Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/Nebula$5;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/Nebula$5;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 711
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/Nebula$5;->val$activity:Landroid/app/Activity;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/Nebula$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    const-class v5, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 715
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 716
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-eqz v2, :cond_0

    .line 717
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/Nebula$5;->val$appId:Ljava/lang/String;

    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, "appName":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/Nebula$5;->val$appId:Ljava/lang/String;

    invoke-interface {v2, v5}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletIconUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, "logUrl":Ljava/lang/String;
    const-string/jumbo v5, "H5Nebula"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "appName "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " logUrl "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 724
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    .line 725
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v0, v5, v6}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 728
    .local v4, "td":Landroid/app/ActivityManager$TaskDescription;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/Nebula$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    goto :goto_0

    .line 732
    .end local v4    # "td":Landroid/app/ActivityManager$TaskDescription;
    :cond_2
    move-object v1, v3

    .line 733
    .local v1, "finalLogUrl":Ljava/lang/String;
    new-instance v5, Lcom/alipay/mobile/nebulacore/Nebula$5$1;

    invoke-direct {v5, p0, v1, v0}, Lcom/alipay/mobile/nebulacore/Nebula$5$1;-><init>(Lcom/alipay/mobile/nebulacore/Nebula$5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebulacore/Nebula;->loadImage(Ljava/lang/String;Lioi;)V

    goto :goto_0
.end method
