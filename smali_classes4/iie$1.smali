.class final Liie$1;
.super Landroid/os/Handler;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liie;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Liie;


# direct methods
.method constructor <init>(Liie;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Liie;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 57
    iput-object p1, p0, Liie$1;->a:Liie;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 60
    iget-object v0, p0, Liie$1;->a:Liie;

    invoke-static {v0}, Liie;->a(Liie;)V

    .line 61
    return-void
.end method
