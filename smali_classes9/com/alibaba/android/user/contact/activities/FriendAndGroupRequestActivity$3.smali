.class final Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3;
.super Ljava/lang/Object;
.source "FriendAndGroupRequestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    sget v2, Lezg$l;->dt_contact_friendRequest_notifyMessage:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3$1;-><init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$3;)V

    invoke-static {v0, v1, v2}, Lcms;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 172
    return-void
.end method
