.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 858
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 861
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .line 862
    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userType:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .line 863
    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->userType:I

    if-ne v0, v1, :cond_2

    .line 889
    :cond_1
    :goto_0
    return-void

    .line 866
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->r(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ldbw;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 867
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->r(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Ldbw;

    move-result-object v0

    invoke-virtual {v0}, Ldbw;->a()V

    .line 868
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Ldbw;)Ldbw;

    .line 871
    :cond_3
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "profile_bottom_boss_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->b(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)J

    move-result-wide v2

    .line 873
    .local v2, "uid":J
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 874
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    .line 877
    :cond_4
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    const-string/jumbo v4, "profile"

    new-instance v5, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64$1;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$64;)V

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;JLjava/lang/String;Ldbw$a;)Ldbw;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Ldbw;)Ldbw;

    goto :goto_0
.end method
