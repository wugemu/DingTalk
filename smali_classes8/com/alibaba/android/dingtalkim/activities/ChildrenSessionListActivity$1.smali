.class final Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity$1;
.super Ljava/lang/Object;
.source "ChildrenSessionListActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;

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
    .line 84
    const-string/jumbo v0, "p_conversation"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChildrenSessionListActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 85
    return-object p1
.end method
