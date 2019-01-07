.class final Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2;
.super Ljava/util/TimerTask;
.source "QQWebLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2;->b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 327
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    .line 329
    .local v0, "self":Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2$1;-><init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
