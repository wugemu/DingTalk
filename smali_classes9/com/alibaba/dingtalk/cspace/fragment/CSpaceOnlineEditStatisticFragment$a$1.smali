.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a$1;
.super Ljava/lang/Object;
.source "CSpaceOnlineEditStatisticFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a$1;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a$1;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 268
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1271
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a$1;->c:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1274
    if-nez p1, :cond_1

    .line 1275
    const-string/jumbo v0, "-1"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getUserProfile: return null, uid: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;

    .line 1317
    iget-wide v4, v3, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$b;->a:J

    .line 1276
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1275
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1280
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a$1;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1281
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Long;

    .line 2044
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 1281
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a$1;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$a$1;->b:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceOnlineEditStatisticFragment$c;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 293
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceOnlineEditStatisticFragment"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "refreshMemberViews: errorCode: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", errorMsg: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 289
    return-void
.end method
