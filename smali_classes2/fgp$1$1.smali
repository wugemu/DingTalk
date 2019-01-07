.class final Lfgp$1$1;
.super Ljava/lang/Object;
.source "OrgApplyAdapter.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgp$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgp$1;


# direct methods
.method constructor <init>(Lfgp$1;)V
    .locals 0
    .param p1, "this$1"    # Lfgp$1;

    .prologue
    .line 188
    iput-object p1, p0, Lfgp$1$1;->a:Lfgp$1;

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
    .line 191
    iget-object v0, p0, Lfgp$1$1;->a:Lfgp$1;

    iget-object v0, v0, Lfgp$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfgp$1$1;->a:Lfgp$1;

    iget-object v0, v0, Lfgp$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v0, :cond_0

    .line 192
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lfgp$1$1;->a:Lfgp$1;

    iget-object v1, v1, Lfgp$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 194
    :cond_0
    return-object p1
.end method
