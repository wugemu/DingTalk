.class public final Lcom/alibaba/android/dingtalk/live/player/listener/VideoListeners$5;
.super Landroid/content/BroadcastReceiver;
.source "VideoListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxb;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbxb;


# direct methods
.method public constructor <init>(Lbxb;)V
    .locals 0
    .param p1, "this$0"    # Lbxb;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/player/listener/VideoListeners$5;->a:Lbxb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CONF_INCOMING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    const-string/jumbo v1, "conf incoming"

    .line 1013
    const-string/jumbo v2, "live"

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    invoke-virtual {v1}, Lbws;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/player/listener/VideoListeners$5;->a:Lbxb;

    const/4 v2, 0x1

    .line 1043
    iput-boolean v2, v1, Lbxb;->h:Z

    .line 215
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    invoke-virtual {v1}, Lbws;->d()V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CONF_ENDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    const-string/jumbo v1, "conf ending"

    .line 2013
    const-string/jumbo v2, "live"

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/player/listener/VideoListeners$5;->a:Lbxb;

    .line 2043
    iget-boolean v1, v1, Lbxb;->h:Z

    .line 219
    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/player/listener/VideoListeners$5;->a:Lbxb;

    const/4 v2, 0x0

    .line 3043
    iput-boolean v2, v1, Lbxb;->h:Z

    .line 221
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    invoke-virtual {v1}, Lbws;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    invoke-virtual {v1}, Lbws;->c()V

    goto :goto_0
.end method
