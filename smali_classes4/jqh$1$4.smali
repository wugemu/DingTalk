.class final Ljqh$1$4;
.super Ljava/lang/Object;
.source "AppLauncher.java"

# interfaces
.implements Ljsp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljqh$1;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljqh$1;


# direct methods
.method constructor <init>(Ljqh$1;)V
    .locals 0
    .param p1, "this$1"    # Ljqh$1;

    .prologue
    .line 581
    iput-object p1, p0, Ljqh$1$4;->a:Ljqh$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 596
    invoke-static {}, Ljqy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Ljqh$1$4;->a:Ljqh$1;

    iget-object v0, v0, Ljqh$1;->c:Ljqh;

    .line 2049
    iget-object v0, v0, Ljqh;->b:Landroid/content/Context;

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",errorMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 599
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 601
    :cond_0
    iget-object v0, p0, Ljqh$1$4;->a:Ljqh$1;

    iget-object v0, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 584
    invoke-static {}, Ljqy;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Ljqh$1$4;->a:Ljqh$1;

    iget-object v0, v0, Ljqh$1;->c:Ljqh;

    .line 1049
    iget-object v0, v0, Ljqh;->b:Landroid/content/Context;

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",function:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 588
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 590
    :cond_0
    iget-object v0, p0, Ljqh$1$4;->a:Ljqh$1;

    iget-object v0, v0, Ljqh$1;->a:Lcom/taobao/windmill/bundle/container/core/AppCodeModel;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/core/AppCodeModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "function:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void
.end method
