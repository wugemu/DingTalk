.class final Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "DDServiceManageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl$2;->a:Lcom/alibaba/android/dingtalkbase/bizframework/ipc/DDServiceManageImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 146
    invoke-static {}, Lcix;->c()Lcix$a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const-string/jumbo v0, "com.workapp.user.newlogin"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "com.workapp.user.logout"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :cond_2
    invoke-static {}, Lcix;->c()Lcix$a;

    move-result-object v0

    invoke-interface {v0}, Lcix$a;->a()V

    goto :goto_0
.end method
