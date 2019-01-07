.class final Lcom/taobao/ma/ui/CaptureNewFragmentV2$3;
.super Landroid/content/BroadcastReceiver;
.source "CaptureNewFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/ma/ui/CaptureNewFragmentV2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/ma/ui/CaptureNewFragmentV2;


# direct methods
.method constructor <init>(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$3;->a:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/taobao/ma/ui/CaptureNewFragmentV2$3;->a:Lcom/taobao/ma/ui/CaptureNewFragmentV2;

    invoke-static {v0}, Lcom/taobao/ma/ui/CaptureNewFragmentV2;->g(Lcom/taobao/ma/ui/CaptureNewFragmentV2;)V

    .line 232
    return-void
.end method
