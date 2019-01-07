.class final Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$2;
.super Ljava/lang/Object;
.source "DoorGuardImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/lifecycle/APPStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->registerAppState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$2;->a:Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnterBackground()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$2;->a:Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.alibaba.android.dingtalk.ACTION_APP_STATE_BACKGROUND"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->startBeaconService(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public final onEnterForeground()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$2;->a:Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.alibaba.android.dingtalk.ACTION_APP_STATE_FOREGROUND"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->startBeaconService(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    return-void
.end method
