.class final Lorg/android/agoo/message/MessageReceiverService$1;
.super Lkpo$a;
.source "MessageReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/message/MessageReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/android/agoo/message/MessageReceiverService;


# direct methods
.method constructor <init>(Lorg/android/agoo/message/MessageReceiverService;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lorg/android/agoo/message/MessageReceiverService$1;->a:Lorg/android/agoo/message/MessageReceiverService;

    invoke-direct {p0}, Lkpo$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 27
    iget-object v0, p0, Lorg/android/agoo/message/MessageReceiverService$1;->a:Lorg/android/agoo/message/MessageReceiverService;

    invoke-virtual {v0}, Lorg/android/agoo/message/MessageReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/message/MessageReceiverService$1;->a:Lorg/android/agoo/message/MessageReceiverService;

    iget-object v2, p0, Lorg/android/agoo/message/MessageReceiverService$1;->a:Lorg/android/agoo/message/MessageReceiverService;

    invoke-virtual {v2}, Lorg/android/agoo/message/MessageReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/agoo/message/MessageReceiverService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/android/agoo/control/BaseIntentService;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    return v0
.end method
