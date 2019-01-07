.class final Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$4;
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
    .line 175
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-static {v4}, Lflw;->a(Z)V

    .line 182
    invoke-static {}, Lflv;->a()Lflv;

    move-result-object v0

    .line 1071
    invoke-virtual {v0, v4, v3}, Lflv;->a(ZZ)V

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->c(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V

    .line 193
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->a(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)Lflt;

    move-result-object v0

    invoke-virtual {v0}, Lflt;->d()V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$4;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v0, v3}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->a(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;Z)V

    goto :goto_0
.end method
