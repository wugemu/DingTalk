.class final Lcom/alibaba/android/rimet/RimetDDContext$39;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->unregisterXpn()V
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
    .line 3343
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$39;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3346
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$39;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportMIUIPush(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3347
    invoke-static {}, Lcom/alibaba/laiwang/alive/AliveManager;->getInstance()Lcom/alibaba/laiwang/alive/AliveManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/alive/AliveManager;->unregisterXpn(I)V

    .line 3349
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$39;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportHuaweiPush(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3350
    invoke-static {}, Lcom/alibaba/laiwang/alive/AliveManager;->getInstance()Lcom/alibaba/laiwang/alive/AliveManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/alive/AliveManager;->unregisterXpn(I)V

    .line 3352
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$39;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportFCM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3353
    invoke-static {}, Lcom/alibaba/laiwang/alive/AliveManager;->getInstance()Lcom/alibaba/laiwang/alive/AliveManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/alive/AliveManager;->unregisterXpn(I)V

    .line 3356
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$39;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isSupportMIUIPush(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3357
    invoke-static {}, Lcom/alibaba/laiwang/alive/AliveManager;->getInstance()Lcom/alibaba/laiwang/alive/AliveManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/alive/AliveManager;->unregisterXpn(I)V

    .line 3358
    :cond_3
    return-void
.end method
