.class final Lhbq$1;
.super Landroid/os/Handler;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhbq;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhbq;


# direct methods
.method constructor <init>(Lhbq;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lhbq;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 43
    iput-object p1, p0, Lhbq$1;->a:Lhbq;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    iget-object v0, p0, Lhbq$1;->a:Lhbq;

    invoke-static {v0}, Lhbq;->a(Lhbq;)V

    .line 47
    return-void
.end method
