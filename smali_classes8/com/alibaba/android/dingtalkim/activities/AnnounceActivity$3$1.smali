.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$3$1;
.super Ljava/lang/Object;
.source "AnnounceActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$3;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 482
    const-string/jumbo v0, "message"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$3$1;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$3;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;->b(Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 483
    return-object p1
.end method
