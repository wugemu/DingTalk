.class final Lecg$3;
.super Landroid/content/BroadcastReceiver;
.source "FullScreenVoiceRecordDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lecg;


# direct methods
.method constructor <init>(Lecg;)V
    .locals 0
    .param p1, "this$0"    # Lecg;

    .prologue
    .line 324
    iput-object p1, p0, Lecg$3;->a:Lecg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 327
    iget-object v0, p0, Lecg$3;->a:Lecg;

    invoke-virtual {v0}, Lecg;->b()V

    .line 328
    return-void
.end method
