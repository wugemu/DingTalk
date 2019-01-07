.class final Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2$1;
.super Ljava/lang/Object;
.source "QQWebLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2$1;->a:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 336
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2$1;->a:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$2;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    .line 338
    .local v0, "self":Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->c(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;)V

    goto :goto_0
.end method
