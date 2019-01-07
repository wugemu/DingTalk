.class final Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1$1;
.super Ljava/lang/Object;
.source "FriendShareListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1$1;->b:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1$1;->b:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1;->b:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->a(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1$1;->b:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1$1;->b:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity$1;->a:Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;->b(Lcom/alibaba/android/user/settings/activity/FriendShareListActivity;)V

    .line 97
    return-void
.end method
