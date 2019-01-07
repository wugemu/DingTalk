.class final Lfgo$h$3$2;
.super Ljava/lang/Object;
.source "NewRequestAdapter.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgo$h$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgo$h$3;


# direct methods
.method constructor <init>(Lfgo$h$3;)V
    .locals 0
    .param p1, "this$1"    # Lfgo$h$3;

    .prologue
    .line 534
    iput-object p1, p0, Lfgo$h$3$2;->a:Lfgo$h$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 537
    const-string/jumbo v0, "intent_key_new_request"

    iget-object v1, p0, Lfgo$h$3$2;->a:Lfgo$h$3;

    iget-object v1, v1, Lfgo$h$3;->c:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 538
    const-string/jumbo v1, "user_name"

    iget-object v0, p0, Lfgo$h$3$2;->a:Lfgo$h$3;

    iget-object v0, v0, Lfgo$h$3;->d:Lfgo$h;

    .line 1241
    iget-object v0, v0, Lfgo$h;->e:Landroid/widget/TextView;

    .line 538
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    return-object p1

    .line 538
    :cond_0
    iget-object v0, p0, Lfgo$h$3$2;->a:Lfgo$h$3;

    iget-object v0, v0, Lfgo$h$3;->d:Lfgo$h;

    .line 2241
    iget-object v0, v0, Lfgo$h;->e:Landroid/widget/TextView;

    .line 538
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
