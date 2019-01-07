.class final Lemm$1;
.super Landroid/os/Handler;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lemm;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lemm;


# direct methods
.method constructor <init>(Lemm;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lemm;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 59
    iput-object p1, p0, Lemm$1;->a:Lemm;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget-object v0, p0, Lemm$1;->a:Lemm;

    invoke-static {v0}, Lemm;->a(Lemm;)V

    .line 63
    return-void
.end method
