.class final Lfgo$h$4$1;
.super Ljava/lang/Object;
.source "NewRequestAdapter.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgo$h$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgo$h$4;


# direct methods
.method constructor <init>(Lfgo$h$4;)V
    .locals 0
    .param p1, "this$1"    # Lfgo$h$4;

    .prologue
    .line 586
    iput-object p1, p0, Lfgo$h$4$1;->a:Lfgo$h$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 590
    iget-object v0, p0, Lfgo$h$4$1;->a:Lfgo$h$4;

    iget-object v0, v0, Lfgo$h$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 591
    const-string/jumbo v0, "new request adapter,uid 0"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    :cond_0
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lfgo$h$4$1;->a:Lfgo$h$4;

    iget-object v1, v1, Lfgo$h$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 594
    return-object p1
.end method
