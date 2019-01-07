.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$6;
.super Ljava/lang/Object;
.source "SpaceShareMembersActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$6;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x7b

    const/16 v6, 0x23

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 456
    check-cast p1, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    check-cast p2, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    .line 1459
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$6;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;)C

    move-result v0

    .line 1460
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getRole()I

    move-result v4

    if-ne v4, v3, :cond_2

    move v0, v1

    .line 1465
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity$6;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;

    invoke-static {v4, p2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareMembersActivity;Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;)C

    move-result v4

    .line 1466
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getRole()I

    move-result v5

    if-ne v5, v3, :cond_3

    move v2, v1

    .line 1471
    :cond_1
    :goto_1
    if-ne v0, v2, :cond_4

    .line 1474
    :goto_2
    return v1

    .line 1462
    :cond_2
    if-ne v0, v6, :cond_0

    move v0, v2

    .line 1463
    goto :goto_0

    .line 1468
    :cond_3
    if-eq v4, v6, :cond_1

    move v2, v4

    goto :goto_1

    .line 1474
    :cond_4
    if-le v0, v2, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    const/4 v1, -0x1

    .line 456
    goto :goto_2
.end method
