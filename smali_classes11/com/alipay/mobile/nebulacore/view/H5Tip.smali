.class public Lcom/alipay/mobile/nebulacore/view/H5Tip;
.super Ljava/lang/Object;
.source "H5Tip.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5Tip"

.field static handler:Landroid/os/Handler;

.field private static volatile popWindow:Landroid/widget/PopupWindow;

.field static task:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->handler:Landroid/os/Handler;

    .line 27
    sput-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->task:Ljava/lang/Runnable;

    .line 28
    sput-object v0, Lcom/alipay/mobile/nebulacore/view/H5Tip;->popWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissTip()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->popWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 85
    sget-object v1, Lcom/alipay/mobile/nebulacore/view/H5Tip;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/alipay/mobile/nebulacore/view/H5Tip;->task:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    sput-object v3, Lcom/alipay/mobile/nebulacore/view/H5Tip;->popWindow:Landroid/widget/PopupWindow;

    .line 91
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void

    .line 87
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_0
    move-exception v0

    .line 88
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string/jumbo v1, "H5Tip"

    const-string/jumbo v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    sput-object v3, Lcom/alipay/mobile/nebulacore/view/H5Tip;->popWindow:Landroid/widget/PopupWindow;

    goto :goto_0

    :catchall_0
    move-exception v1

    sput-object v3, Lcom/alipay/mobile/nebulacore/view/H5Tip;->popWindow:Landroid/widget/PopupWindow;

    throw v1
.end method

.method public static showTip(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "anchorView"    # Landroid/view/ViewGroup;
    .param p2, "tip"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    move v0, v5

    .line 33
    .local v0, "anchorViewGone":Z
    :goto_0
    const-class v7, Lcom/alipay/mobile/nebulacore/view/H5Tip;

    monitor-enter v7

    .line 34
    :try_start_0
    sget-object v8, Lcom/alipay/mobile/nebulacore/view/H5Tip;->popWindow:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_1

    sget-object v8, Lcom/alipay/mobile/nebulacore/view/H5Tip;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 35
    monitor-exit v7

    .line 79
    :goto_1
    return-void

    .end local v0    # "anchorViewGone":Z
    :cond_0
    move v0, v6

    .line 32
    goto :goto_0

    .line 37
    .restart local v0    # "anchorViewGone":Z
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/alipay/mobile/nebula/R$layout;->h5_tip:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 39
    .local v4, "view":Landroid/view/View;
    new-instance v8, Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/4 v11, 0x0

    invoke-direct {v8, v4, v9, v10, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    sput-object v8, Lcom/alipay/mobile/nebulacore/view/H5Tip;->popWindow:Landroid/widget/PopupWindow;

    .line 41
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_false_image:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 45
    .local v1, "btnClose":Landroid/widget/Button;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 46
    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_description:I

    .line 47
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 48
    .local v3, "h5_description":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .end local v3    # "h5_description":Landroid/widget/TextView;
    :cond_2
    sget-object v7, Lcom/alipay/mobile/nebulacore/view/H5Tip;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 52
    sget-object v6, Lcom/alipay/mobile/nebulacore/view/H5Tip;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 53
    sget-object v6, Lcom/alipay/mobile/nebulacore/view/H5Tip;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 55
    if-nez v0, :cond_3

    .line 56
    :try_start_1
    sget-object v5, Lcom/alipay/mobile/nebulacore/view/H5Tip;->popWindow:Landroid/widget/PopupWindow;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v6, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    :goto_2
    new-instance v5, Lcom/alipay/mobile/nebulacore/view/H5Tip$1;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/view/H5Tip$1;-><init>()V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v5, Lcom/alipay/mobile/nebulacore/view/H5Tip$2;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/view/H5Tip$2;-><init>()V

    sput-object v5, Lcom/alipay/mobile/nebulacore/view/H5Tip;->task:Ljava/lang/Runnable;

    .line 77
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    sput-object v5, Lcom/alipay/mobile/nebulacore/view/H5Tip;->handler:Landroid/os/Handler;

    sget-object v6, Lcom/alipay/mobile/nebulacore/view/H5Tip;->task:Ljava/lang/Runnable;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 41
    .end local v1    # "btnClose":Landroid/widget/Button;
    .end local v4    # "view":Landroid/view/View;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 58
    .restart local v1    # "btnClose":Landroid/widget/Button;
    .restart local v4    # "view":Landroid/view/View;
    :cond_3
    :try_start_3
    sget-object v5, Lcom/alipay/mobile/nebulacore/view/H5Tip;->popWindow:Landroid/widget/PopupWindow;

    const/16 v6, 0x30

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, p1, v6, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 60
    :catch_0
    move-exception v2

    .line 61
    .local v2, "globalException":Ljava/lang/Exception;
    const-string/jumbo v5, "H5Tip"

    const-string/jumbo v6, "exception detail."

    invoke-static {v5, v6, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
