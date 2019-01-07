.class final Lcom/alibaba/android/search/model/FriendModel$1;
.super Ljava/lang/Object;
.source "FriendModel.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/model/FriendModel;->onClick(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/model/FriendModel;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/model/FriendModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/model/FriendModel;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/android/search/model/FriendModel$1;->a:Lcom/alibaba/android/search/model/FriendModel;

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
    .line 159
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lcom/alibaba/android/search/model/FriendModel$1;->a:Lcom/alibaba/android/search/model/FriendModel;

    iget-object v1, v1, Lcom/alibaba/android/search/model/FriendModel;->mUserProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 160
    return-object p1
.end method
