.class Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$2;
.super Ljava/lang/Object;
.source "H5VConsolePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->a(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$preLoad:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$2;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$2;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$2;->val$preLoad:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$2;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;

    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$2;->val$activity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$2;->val$preLoad:Z

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->access$100(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;Landroid/app/Activity;Z)V

    .line 241
    return-void
.end method