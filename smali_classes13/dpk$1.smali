.class final Ldpk$1;
.super Ljava/lang/Object;
.source "MenuSetThemeHandler.java"

# interfaces
.implements Lgqr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpk;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;JLeav;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ldpk;


# direct methods
.method constructor <init>(Ldpk;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Ldpk;

    .prologue
    .line 39
    iput-object p1, p0, Ldpk$1;->b:Ldpk;

    iput-object p2, p0, Ldpk$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Ldpk$1;->b:Ldpk;

    iget-object v0, p0, Ldpk$1;->a:Landroid/content/Context;

    .line 2028
    invoke-static {v0, v3}, Ldpk;->a(Landroid/content/Context;Z)V

    .line 57
    iget-object v0, p0, Ldpk$1;->a:Landroid/content/Context;

    iget-object v1, p0, Ldpk$1;->a:Landroid/content/Context;

    sget v2, Lctk$i;->dt_im_download_theme_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v0, "dingtalkbase"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "download theme fail, errorCode:"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", errorMsg:"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public final onProgress(IJJ)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "totalSize"    # J
    .param p4, "completedSize"    # J

    .prologue
    .line 42
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-object v1, p0, Ldpk$1;->b:Ldpk;

    iget-object v1, p0, Ldpk$1;->a:Landroid/content/Context;

    .line 1028
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ldpk;->a(Landroid/content/Context;Z)V

    .line 47
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(JLjava/lang/String;)V

    .line 48
    iget-object v1, p0, Ldpk$1;->a:Landroid/content/Context;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    if-eqz v1, :cond_0

    .line 49
    iget-object v0, p0, Ldpk$1;->a:Landroid/content/Context;

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .line 50
    .local v0, "activity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->finish()V

    .line 52
    .end local v0    # "activity":Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
    :cond_0
    return-void
.end method
