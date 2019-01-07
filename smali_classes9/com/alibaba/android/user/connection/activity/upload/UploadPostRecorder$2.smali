.class final Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder$2;
.super Landroid/content/BroadcastReceiver;
.source "UploadPostRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder$2;->a:Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder$2;->a:Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;->a(Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder$2;->a:Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;->b(Lcom/alibaba/android/user/connection/activity/upload/UploadPostRecorder;Z)V

    goto :goto_0
.end method
