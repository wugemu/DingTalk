.class final Lbnp$c$4;
.super Ljava/lang/Object;
.source "PostHistoryAdapter.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnp$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

.field final synthetic b:Lbnp$c;


# direct methods
.method constructor <init>(Lbnp$c;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;)V
    .locals 0
    .param p1, "this$1"    # Lbnp$c;

    .prologue
    .line 453
    iput-object p1, p0, Lbnp$c$4;->b:Lbnp$c;

    iput-object p2, p0, Lbnp$c$4;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 453
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1456
    iget-object v0, p0, Lbnp$c$4;->b:Lbnp$c;

    iget-object v0, v0, Lbnp$c;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1457
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 1458
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1459
    iget-object v2, p0, Lbnp$c$4;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1460
    iget-object v0, p0, Lbnp$c$4;->b:Lbnp$c;

    iget-object v0, v0, Lbnp$c;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 2167
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 453
    :cond_0
    return-void
.end method
