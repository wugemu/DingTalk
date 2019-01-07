.class final Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$2;
.super Ljava/lang/Object;
.source "FriendRequestMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->a()V

    .line 159
    :cond_0
    return-void
.end method
