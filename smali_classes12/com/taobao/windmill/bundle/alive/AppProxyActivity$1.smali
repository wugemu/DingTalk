.class final Lcom/taobao/windmill/bundle/alive/AppProxyActivity$1;
.super Ljava/lang/Object;
.source "AppProxyActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/windmill/bundle/alive/AppProxyActivity;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/bundle/alive/AppProxyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/bundle/alive/AppProxyActivity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/taobao/windmill/bundle/alive/AppProxyActivity$1;->a:Lcom/taobao/windmill/bundle/alive/AppProxyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taobao/windmill/bundle/alive/AppProxyActivity$1;->a:Lcom/taobao/windmill/bundle/alive/AppProxyActivity;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->finish()V

    .line 54
    invoke-static {}, Ljqb;->a()Ljqb;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/alive/AppProxyActivity$1;->a:Lcom/taobao/windmill/bundle/alive/AppProxyActivity;

    iget-object v2, p0, Lcom/taobao/windmill/bundle/alive/AppProxyActivity$1;->a:Lcom/taobao/windmill/bundle/alive/AppProxyActivity;

    invoke-static {v2}, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->a(Lcom/taobao/windmill/bundle/alive/AppProxyActivity;)Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/windmill/bundle/alive/AppProxyActivity$1;->a:Lcom/taobao/windmill/bundle/alive/AppProxyActivity;

    invoke-static {v3}, Lcom/taobao/windmill/bundle/alive/AppProxyActivity;->b(Lcom/taobao/windmill/bundle/alive/AppProxyActivity;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljqb;->a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/core/AppCodeModel;I)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method
