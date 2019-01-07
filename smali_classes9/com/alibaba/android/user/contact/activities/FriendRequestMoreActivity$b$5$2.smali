.class final Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5$2;
.super Ljava/lang/Object;
.source "FriendRequestMoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;Lcma;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5$2;->b:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5$2;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 426
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5$2;->b:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5$2;->a:Lcma;

    const-class v5, Lcma;

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5$2;->b:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;

    iget-object v6, v6, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;->c:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    iget-object v6, v6, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v0, v5, v6}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v3, v4, v0}, Lezv;->a(JZLcma;)V

    .line 427
    return-void
.end method
