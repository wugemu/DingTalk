.class Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$1;
.super Ljava/lang/Object;
.source "H5VConsolePlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$1;->this$0:Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;

    iget-object v1, p0, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin$1;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;->access$000(Lcom/alipay/mobile/tinyappcommon/h5plugin/H5VConsolePlugin;Landroid/app/Activity;Z)V

    .line 170
    return-void
.end method
