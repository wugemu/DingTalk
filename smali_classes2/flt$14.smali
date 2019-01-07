.class public final Lflt$14;
.super Ljava/lang/Object;
.source "FriendRequestDataManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

.field final synthetic b:Lflt;


# direct methods
.method public constructor <init>(Lflt;Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V
    .locals 0
    .param p1, "this$0"    # Lflt;

    .prologue
    .line 817
    iput-object p1, p0, Lflt$14;->b:Lflt;

    iput-object p2, p0, Lflt$14;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

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
    .line 820
    iget-object v0, p0, Lflt$14;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lflt$14;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    .line 821
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lflt$14;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 823
    :cond_0
    return-object p1
.end method
