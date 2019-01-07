.class final Lcom/alibaba/android/rimet/RimetDDContext$38;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->registerXpn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 3304
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$38;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 3308
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_cspace_xpn_fcm"

    .line 4083
    invoke-virtual {v1, v2, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 3309
    .local v0, "isFeatureOpen":Z
    if-eqz v0, :cond_1

    .line 3310
    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$38;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportFCM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->isFromChina()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3311
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "wk_xpn"

    const-string/jumbo v3, "fcm_zh_open"

    invoke-virtual {v1, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3312
    :cond_0
    invoke-static {}, Lcom/alibaba/laiwang/alive/AliveManager;->getInstance()Lcom/alibaba/laiwang/alive/AliveManager;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    aput-object v6, v2, v7

    aput-object v6, v2, v4

    invoke-virtual {v1, v8, v6, v2}, Lcom/alibaba/laiwang/alive/AliveManager;->registerXpn(ILcom/alibaba/laiwang/xpn/XpnMessageReceiver;[Ljava/lang/String;)V

    .line 3317
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$38;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportMIUIPush(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3318
    invoke-static {}, Lcom/alibaba/laiwang/alive/AliveManager;->getInstance()Lcom/alibaba/laiwang/alive/AliveManager;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    .line 3319
    invoke-static {v4}, Leki;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v4}, Leki;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 3318
    invoke-virtual {v1, v4, v6, v2}, Lcom/alibaba/laiwang/alive/AliveManager;->registerXpn(ILcom/alibaba/laiwang/xpn/XpnMessageReceiver;[Ljava/lang/String;)V

    .line 3323
    :cond_2
    :goto_1
    return-void

    .line 3314
    :cond_3
    invoke-static {}, Lcom/alibaba/laiwang/alive/AliveManager;->getInstance()Lcom/alibaba/laiwang/alive/AliveManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/alibaba/laiwang/alive/AliveManager;->disableXpn(I)V

    goto :goto_0

    .line 3320
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/rimet/RimetDDContext$38;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v1}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportHuaweiPush(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3321
    invoke-static {}, Lcom/alibaba/laiwang/alive/AliveManager;->getInstance()Lcom/alibaba/laiwang/alive/AliveManager;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {v5}, Leki;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v5}, Leki;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v5, v6, v2}, Lcom/alibaba/laiwang/alive/AliveManager;->registerXpn(ILcom/alibaba/laiwang/xpn/XpnMessageReceiver;[Ljava/lang/String;)V

    goto :goto_1
.end method
