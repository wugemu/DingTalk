.class final Lflt$4$1;
.super Ljava/lang/Object;
.source "FriendRequestDataManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflt$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lflt$4;


# direct methods
.method constructor <init>(Lflt$4;)V
    .locals 0
    .param p1, "this$1"    # Lflt$4;

    .prologue
    .line 900
    iput-object p1, p0, Lflt$4$1;->a:Lflt$4;

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
    .line 903
    const-string/jumbo v0, "intent_key_new_request"

    iget-object v1, p0, Lflt$4$1;->a:Lflt$4;

    iget-object v1, v1, Lflt$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 904
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lflt$4$1;->a:Lflt$4;

    iget-object v1, v1, Lflt$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 905
    const-string/jumbo v0, "user_name"

    iget-object v1, p0, Lflt$4$1;->a:Lflt$4;

    iget-object v1, v1, Lflt$4;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 906
    const-string/jumbo v0, "avatar_pos"

    iget-object v1, p0, Lflt$4$1;->a:Lflt$4;

    iget-object v1, v1, Lflt$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    return-object p1
.end method
