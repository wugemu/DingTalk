.class final Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;
.super Ljava/lang/Object;
.source "FriendRequestMoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Z

.field b:J

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Lcjo$a;

.field final synthetic f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V
    .locals 4

    .prologue
    .line 204
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->c:Ljava/util/List;

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->d:Z

    .line 1448
    new-instance v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$6;-><init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;)V

    .line 1480
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1481
    const-string/jumbo v0, "com.workapp.friend_request_change"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1482
    const-string/jumbo v0, "action_friend_request_status_changed"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1483
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 1488
    new-instance v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$7;-><init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->e:Lcjo$a;

    .line 1506
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->e:Lcjo$a;

    invoke-interface {v0, v1}, Lfac;->a(Lcjo$a;)V

    .line 207
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 210
    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->a:Z

    if-eqz v2, :cond_0

    .line 269
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->b(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V

    .line 215
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->a:Z

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 218
    .local v0, "getDataTime":J
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v3

    const/16 v4, 0x14

    new-instance v2, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$1;-><init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;)V

    const-class v5, Lcma;

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v2, v5, v6}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-interface {v3, v0, v1, v4, v2}, Lezv;->d(JILcma;)V

    goto :goto_0
.end method
