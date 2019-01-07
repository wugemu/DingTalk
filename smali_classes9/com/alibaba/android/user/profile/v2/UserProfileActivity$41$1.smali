.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$41$1;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity$41;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$41;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$41;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity$41;

    .prologue
    .line 3295
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$41$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$41;

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
    .line 3298
    const-string/jumbo v0, "node"

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$41$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$41;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$41;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3299
    const-string/jumbo v0, "fragment_key"

    const-string/jumbo v1, "OrgContactFragment"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3302
    const-string/jumbo v0, "bread_node_name"

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$41$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$41;

    iget-object v1, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$41;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3304
    const-string/jumbo v0, "display_enterprise_oid"

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$41$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$41;

    iget-wide v2, v1, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$41;->c:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3306
    return-object p1
.end method
