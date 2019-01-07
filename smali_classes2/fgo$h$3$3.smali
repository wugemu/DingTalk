.class final Lfgo$h$3$3;
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
    .line 544
    iput-object p1, p0, Lfgo$h$3$3;->a:Lfgo$h$3;

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
    .line 547
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lfgo$h$3$3;->a:Lfgo$h$3;

    iget-object v1, v1, Lfgo$h$3;->c:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 548
    const-string/jumbo v0, "friend_request_position"

    iget-object v1, p0, Lfgo$h$3$3;->a:Lfgo$h$3;

    iget v1, v1, Lfgo$h$3;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 549
    return-object p1
.end method
