.class public final Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier$AppBackReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeScreenRecivier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppBackReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier$AppBackReceiver;->a:Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier$AppBackReceiver;->a:Lcom/alibaba/android/rimet/biz/im/task/HomeScreenRecivier;

    .line 1059
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1060
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1061
    const-string/jumbo v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_0

    .line 1063
    const-string/jumbo v1, "homekey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1065
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->g()V

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    const-string/jumbo v1, "recentapps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1070
    :cond_2
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1073
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1074
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->h()V

    goto :goto_0

    .line 1077
    :cond_3
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1081
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->g()V

    goto :goto_0
.end method
