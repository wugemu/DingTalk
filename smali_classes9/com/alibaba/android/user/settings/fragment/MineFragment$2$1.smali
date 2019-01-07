.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$2$1;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment$2;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/fragment/MineFragment$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/fragment/MineFragment$2;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$2$1;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 716
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;

    check-cast p2, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;

    .line 1719
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->createTime:J

    iget-wide v2, p2, Lcom/alibaba/android/dingtalk/userbase/model/NewFriendUnreadObject$NewFriendUnreadObjectUser;->createTime:J

    invoke-static {v0, v1, v2, v3}, Lfxc;->a(JJ)I

    move-result v0

    .line 716
    return v0
.end method
