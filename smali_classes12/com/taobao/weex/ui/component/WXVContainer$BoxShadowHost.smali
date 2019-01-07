.class Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;
.super Landroid/view/View;
.source "WXVContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXVContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BoxShadowHost"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXVContainer;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXVContainer;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 605
    .local p0, "this":Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;, "Lcom/taobao/weex/ui/component/WXVContainer<TT;>.BoxShadowHost;"
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXVContainer$BoxShadowHost;->this$0:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 606
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 607
    return-void
.end method
