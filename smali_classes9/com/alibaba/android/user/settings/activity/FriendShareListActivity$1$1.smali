.class final Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1;
.super Ljava/lang/Object;
.source "FriendShareListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1;->b:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->c()Lfna;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Lfna;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1$1;-><init>(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method
