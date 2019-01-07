.class final Ljmt$1;
.super Landroid/os/Handler;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljmt;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljmt;


# direct methods
.method constructor <init>(Ljmt;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 59
    iput-object p1, p0, Ljmt$1;->a:Ljmt;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget-object v0, p0, Ljmt$1;->a:Ljmt;

    invoke-static {v0}, Ljmt;->a(Ljmt;)V

    .line 63
    return-void
.end method
