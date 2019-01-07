.class final Lcom/alibaba/android/search/model/LocalContactModel$2$2;
.super Ljava/lang/Object;
.source "LocalContactModel.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/model/LocalContactModel$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field final synthetic b:Lcom/alibaba/android/search/model/LocalContactModel$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/model/LocalContactModel$2;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/model/LocalContactModel$2;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/alibaba/android/search/model/LocalContactModel$2$2;->b:Lcom/alibaba/android/search/model/LocalContactModel$2;

    iput-object p2, p0, Lcom/alibaba/android/search/model/LocalContactModel$2$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

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
    .line 186
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalContactModel$2$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 187
    const-string/jumbo v0, "fr_source"

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->SEARCH:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    return-object p1
.end method
