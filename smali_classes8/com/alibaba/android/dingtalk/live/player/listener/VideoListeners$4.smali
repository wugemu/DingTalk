.class public final Lcom/alibaba/android/dingtalk/live/player/listener/VideoListeners$4;
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
    .line 184
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/player/listener/VideoListeners$4;->a:Lbxb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 187
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-static {}, Lbyf;->a()I

    move-result v1

    .line 190
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 191
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v2

    invoke-virtual {v2}, Lbws;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/player/listener/VideoListeners$4;->a:Lbxb;

    invoke-virtual {v2}, Lbxb;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    sget v2, Lbtp$g;->dt_lv_viewer_no_wifi:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 200
    .end local v1    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 195
    .restart local v1    # "type":I
    :cond_1
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v2

    invoke-virtual {v2}, Lbws;->d()V

    goto :goto_0
.end method
