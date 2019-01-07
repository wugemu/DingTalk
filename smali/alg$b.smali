.class final Lalg$b;
.super Landroid/content/BroadcastReceiver;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Lalg$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 265
    invoke-static {}, Lanh;->a()Lanh;

    invoke-static {}, Lalg;->b()Lalg$a;

    move-result-object v0

    .line 1273
    iput-object p1, v0, Lalg$a;->a:Landroid/content/Context;

    .line 265
    invoke-static {v0}, Lanh;->a(Ljava/lang/Runnable;)V

    .line 266
    return-void
.end method
