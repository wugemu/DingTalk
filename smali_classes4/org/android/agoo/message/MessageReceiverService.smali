.class public abstract Lorg/android/agoo/message/MessageReceiverService;
.super Landroid/app/Service;
.source "MessageReceiverService.java"


# instance fields
.field a:Lkpo$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    new-instance v0, Lorg/android/agoo/message/MessageReceiverService$1;

    invoke-direct {v0, p0}, Lorg/android/agoo/message/MessageReceiverService$1;-><init>(Lorg/android/agoo/message/MessageReceiverService;)V

    iput-object v0, p0, Lorg/android/agoo/message/MessageReceiverService;->a:Lkpo$a;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 36
    const-string/jumbo v0, "MessageReceiverService"

    const-string/jumbo v1, "Message receiver aidl was binded {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const-string/jumbo v0, "org.android.agoo.client.MessageReceiverService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lorg/android/agoo/message/MessageReceiverService;->a:Lkpo$a;

    .line 40
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/android/agoo/message/MessageReceiverService;->a:Lkpo$a;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 46
    return-void
.end method
