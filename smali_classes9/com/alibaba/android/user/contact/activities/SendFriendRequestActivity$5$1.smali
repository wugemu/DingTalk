.class final Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5$1;
.super Ljava/lang/Object;
.source "SendFriendRequestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;Lcma;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5$1;->b:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 337
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5$1;->b:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;

    iget-object v2, v0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5$1;->a:Lcma;

    const-class v4, Lcma;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5$1;->b:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;

    iget-object v5, v5, Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity$5;->b:Lcom/alibaba/android/user/contact/activities/SendFriendRequestActivity;

    invoke-static {v0, v4, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v3, v0}, Lezv;->a(Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;ZLcma;)V

    .line 338
    return-void
.end method
