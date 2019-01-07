.class public final Lelk$4;
.super Lifh;
.source "ChannelLogSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lelk;


# direct methods
.method public constructor <init>(Lelk;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lelk;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lelk$4;->b:Lelk;

    iput-object p3, p0, Lelk$4;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Lifh;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lifg;)V
    .locals 5
    .param p1, "command"    # Lifg;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lelk$4;->a:Landroid/content/Context;

    iget-object v1, p0, Lelk$4;->b:Lelk;

    iget-object v2, p0, Lelk$4;->a:Landroid/content/Context;

    const-string/jumbo v3, "cmd_close_ut"

    iget-object v4, p1, Lifg;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lelk;->a(Lelk;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 110
    const-string/jumbo v0, "channellog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "channellog:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lifg;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
