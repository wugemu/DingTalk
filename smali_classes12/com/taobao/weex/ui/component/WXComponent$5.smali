.class Lcom/taobao/weex/ui/component/WXComponent$5;
.super Lfz;
.source "WXComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXComponent;->setRole(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXComponent;

.field final synthetic val$finalRole:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 1215
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent$5;, "Lcom/taobao/weex/ui/component/WXComponent$5;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent$5;->this$0:Lcom/taobao/weex/ui/component/WXComponent;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent$5;->val$finalRole:Ljava/lang/String;

    invoke-direct {p0}, Lfz;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgx;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lgx;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1219
    .local p0, "this":Lcom/taobao/weex/ui/component/WXComponent$5;, "Lcom/taobao/weex/ui/component/WXComponent$5;"
    :try_start_0
    invoke-super {p0, p1, p2}, Lfz;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgx;)V

    .line 1220
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent$5;->val$finalRole:Ljava/lang/String;

    .line 4727
    sget-object v1, Lgx;->a:Lgx$j;

    iget-object v2, p2, Lgx;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v2, v0}, Lgx$j;->a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1224
    :goto_0
    return-void

    .line 1222
    :catch_0
    move-exception v0

    const-string/jumbo v0, "SetRole failed!"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
