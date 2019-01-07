.class final Lcom/laiwang/protocol/android/Foreground$1;
.super Ljava/lang/Object;
.source "Foreground.java"

# interfaces
.implements Lcom/laiwang/protocol/android/Foreground$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/protocol/android/Foreground;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBecameBackground()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    invoke-static {}, Lcom/laiwang/protocol/android/Foreground;->access$000()Lcom/laiwang/protocol/android/Foreground;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/Foreground;->access$102(Lcom/laiwang/protocol/android/Foreground;Z)Z

    .line 44
    return-void
.end method

.method public final onBecameForeground()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    invoke-static {}, Lcom/laiwang/protocol/android/Foreground;->access$000()Lcom/laiwang/protocol/android/Foreground;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/Foreground;->access$102(Lcom/laiwang/protocol/android/Foreground;Z)Z

    .line 39
    return-void
.end method
