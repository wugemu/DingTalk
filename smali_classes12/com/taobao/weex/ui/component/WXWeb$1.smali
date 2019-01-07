.class Lcom/taobao/weex/ui/component/WXWeb$1;
.super Ljava/lang/Object;
.source "WXWeb.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXWeb;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXWeb;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXWeb;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/component/WXWeb;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXWeb$1;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXWeb$1;->this$0:Lcom/taobao/weex/ui/component/WXWeb;

    invoke-static {v0, p1, p2}, Lcom/taobao/weex/ui/component/WXWeb;->access$000(Lcom/taobao/weex/ui/component/WXWeb;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    return-void
.end method
