.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$49$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$49;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$49;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$49;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$49;

    .prologue
    .line 2739
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$49$1;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$49;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$49$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2742
    const-string/jumbo v1, "conversation_id"

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$49$1;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$49;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$49;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2743
    const-string/jumbo v1, "conversation"

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$49$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2744
    invoke-static {}, Lelp;->a()Lelp;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$49$1;->b:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$49;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$49;->b:Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    iget-wide v2, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lelp;->a(Ljava/lang/Long;)I

    move-result v0

    .line 2745
    .local v0, "todoCount":I
    const-string/jumbo v2, "todo_check_tab_index"

    if-lez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2746
    return-object p1

    .line 2745
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
