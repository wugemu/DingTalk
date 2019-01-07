.class Lcom/alipay/mobile/nebula/util/H5NetworkUtil$1;
.super Landroid/content/BroadcastReceiver;
.source "H5NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/util/H5NetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/util/H5NetworkUtil;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/util/H5NetworkUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$1;->this$0:Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebula/util/H5NetworkUtil$1;->this$0:Lcom/alipay/mobile/nebula/util/H5NetworkUtil;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5NetworkUtil;->access$000(Lcom/alipay/mobile/nebula/util/H5NetworkUtil;)V

    .line 33
    return-void
.end method
