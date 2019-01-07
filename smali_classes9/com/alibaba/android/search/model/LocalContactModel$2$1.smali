.class final Lcom/alibaba/android/search/model/LocalContactModel$2$1;
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
.field final synthetic a:Lcom/alibaba/android/search/model/LocalContactModel$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/model/LocalContactModel$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/model/LocalContactModel$2;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/alibaba/android/search/model/LocalContactModel$2$1;->a:Lcom/alibaba/android/search/model/LocalContactModel$2;

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
    .line 173
    const-string/jumbo v0, "user_mobile"

    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalContactModel$2$1;->a:Lcom/alibaba/android/search/model/LocalContactModel$2;

    iget-object v1, v1, Lcom/alibaba/android/search/model/LocalContactModel$2;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string/jumbo v0, "user_name"

    iget-object v1, p0, Lcom/alibaba/android/search/model/LocalContactModel$2$1;->a:Lcom/alibaba/android/search/model/LocalContactModel$2;

    iget-object v1, v1, Lcom/alibaba/android/search/model/LocalContactModel$2;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v0, "fr_source"

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->SEARCH:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestSource;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    return-object p1
.end method
