.class final Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10$1;
.super Ljava/lang/Object;
.source "FriendAndGroupRequestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10$1;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 401
    invoke-static {}, Lflv;->a()Lflv;

    move-result-object v0

    .line 1071
    invoke-virtual {v0, v1, v2}, Lflv;->a(ZZ)V

    .line 402
    invoke-static {v1}, Lflw;->a(Z)V

    .line 403
    const-string/jumbo v0, "match_contact"

    const-string/jumbo v1, "set switch true in friendrequestactivity"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10$1;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$10;->a:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v0}, Lffy;->a(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V

    .line 406
    return-void
.end method
