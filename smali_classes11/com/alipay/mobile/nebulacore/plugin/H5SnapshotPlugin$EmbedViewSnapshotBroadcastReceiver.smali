.class Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$EmbedViewSnapshotBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "H5SnapshotPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmbedViewSnapshotBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin$EmbedViewSnapshotBroadcastReceiver;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5SnapshotPlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 509
    return-void
.end method
