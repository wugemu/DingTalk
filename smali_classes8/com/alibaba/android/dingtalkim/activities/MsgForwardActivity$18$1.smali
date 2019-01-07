.class final Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18$1;
.super Ljava/lang/Object;
.source "MsgForwardActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "paramIntent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 342
    const-string/jumbo v0, "im_navigator_from"

    const-string/jumbo v1, "cmail"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18$1;->a:Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/MsgForwardActivity$18;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 345
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 346
    return-object p1
.end method
