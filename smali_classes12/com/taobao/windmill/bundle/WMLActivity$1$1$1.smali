.class final Lcom/taobao/windmill/bundle/WMLActivity$1$1$1;
.super Ljava/lang/Object;
.source "WMLActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/windmill/bundle/WMLActivity$1$1;->onValidate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljpk$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taobao/windmill/bundle/WMLActivity$1$1;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/bundle/WMLActivity$1$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/taobao/windmill/bundle/WMLActivity$1$1;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/taobao/windmill/bundle/WMLActivity$1$1$1;->b:Lcom/taobao/windmill/bundle/WMLActivity$1$1;

    iput-object p2, p0, Lcom/taobao/windmill/bundle/WMLActivity$1$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 203
    iget-object v0, p0, Lcom/taobao/windmill/bundle/WMLActivity$1$1$1;->b:Lcom/taobao/windmill/bundle/WMLActivity$1$1;

    iget-object v0, v0, Lcom/taobao/windmill/bundle/WMLActivity$1$1;->c:Lcom/taobao/windmill/bundle/WMLActivity$1;

    iget-object v0, v0, Lcom/taobao/windmill/bundle/WMLActivity$1;->a:Lcom/taobao/windmill/bundle/WMLActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/windmill/bundle/WMLActivity$1$1$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5c06\u6267\u884c\u9274\u6743"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    return-void
.end method
