.class final Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1$2;
.super Ljava/lang/Object;
.source "QQWebLoginActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1$2;->a:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 287
    .line 1290
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1$2;->a:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1$1;->b:Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;

    .line 1291
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;->a(Lcom/alibaba/alimei/mail/activity/QQWebLoginActivity;)V

    goto :goto_0
.end method
