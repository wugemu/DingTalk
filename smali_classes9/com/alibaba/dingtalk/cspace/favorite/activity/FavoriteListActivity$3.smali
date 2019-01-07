.class final Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity$3;
.super Ljava/lang/Object;
.source "FavoriteListActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 128
    const-string/jumbo v0, "space_id"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v0, "favorite_selection"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;

    iget v1, v1, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string/jumbo v0, "conversation_model"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/favorite/activity/FavoriteListActivity;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 131
    return-object p1
.end method
