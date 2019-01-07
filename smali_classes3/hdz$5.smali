.class final Lhdz$5;
.super Ljava/lang/Object;
.source "FloatingLayerDelegate.java"

# interfaces
.implements Lheg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhdz;


# direct methods
.method constructor <init>(Lhdz;)V
    .locals 0
    .param p1, "this$0"    # Lhdz;

    .prologue
    .line 540
    iput-object p1, p0, Lhdz$5;->a:Lhdz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 543
    iget-object v1, p0, Lhdz$5;->a:Lhdz;

    invoke-static {v1}, Lhdz;->q(Lhdz;)V

    .line 1044
    invoke-static {}, Lhee$a;->a()Lhee;

    move-result-object v1

    .line 545
    invoke-virtual {v1}, Lhee;->a()V

    .line 547
    iget-object v1, p0, Lhdz$5;->a:Lhdz;

    invoke-static {v1}, Lhdz;->a(Lhdz;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lhrf;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    :goto_0
    return-void

    .line 552
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 553
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lhdz$5;->a:Lhdz;

    invoke-static {v2}, Lhdz;->r(Lhdz;)Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lhdz$5;->a:Lhdz;

    invoke-static {v2}, Lhdz;->s(Lhdz;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lhdz$5;->a:Lhdz;

    invoke-static {v2}, Lhdz;->a(Lhdz;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x10008000

    invoke-virtual {v1, v2, v0, v3}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_0
.end method
