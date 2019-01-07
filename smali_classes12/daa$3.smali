.class final Ldaa$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "UserTextViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldaa;->a(Landroid/widget/TextView;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Ldaa;


# direct methods
.method constructor <init>(Ldaa;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Ldaa;

    .prologue
    .line 224
    iput-object p1, p0, Ldaa$3;->b:Ldaa;

    iput-object p2, p0, Ldaa$3;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 228
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "chat_text_msg_double_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 229
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 230
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Ldaa$3;->b:Ldaa;

    iget-object v2, v2, Ldaa;->d:Landroid/app/Activity;

    const-class v3, Lcom/alibaba/android/dingtalkim/activities/ExpandMsgActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 231
    const-string/jumbo v2, "message"

    iget-object v3, p0, Ldaa$3;->b:Ldaa;

    iget-object v3, v3, Ldaa;->X:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 232
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "expand_content"

    iget-object v3, p0, Ldaa$3;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 235
    iget-object v2, p0, Ldaa$3;->b:Ldaa;

    iget-object v2, v2, Ldaa;->d:Landroid/app/Activity;

    sget v3, Lctk$a;->anim_none:I

    sget v4, Lctk$a;->anim_none:I

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 236
    iget-object v2, p0, Ldaa$3;->b:Ldaa;

    iget-object v2, v2, Ldaa;->d:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 237
    const/4 v2, 0x1

    return v2
.end method
