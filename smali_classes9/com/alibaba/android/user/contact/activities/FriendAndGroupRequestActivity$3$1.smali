.class final Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3$1;
.super Ljava/lang/Object;
.source "FriendAndGroupRequestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3$1;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3$1;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    const-string/jumbo v1, "pref_new_friends_header_tip_closed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 168
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3$1;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V

    .line 169
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 170
    return-void
.end method
