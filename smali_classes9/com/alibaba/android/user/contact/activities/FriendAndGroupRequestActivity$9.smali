.class final Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$9;
.super Lbzd;
.source "FriendAndGroupRequestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$9;->b:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$9;->a:Z

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 358
    invoke-static {v2}, Lflw;->a(Z)V

    .line 359
    invoke-static {}, Lflv;->a()Lflv;

    move-result-object v0

    .line 1071
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lflv;->a(ZZ)V

    .line 360
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$9;->b:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->c(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$9;->b:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V

    .line 362
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$9;->a:Z

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$9;->b:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->d()V

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$9;->b:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)V

    .line 367
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity$9;->b:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->a(Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;)Lflt;

    move-result-object v0

    invoke-virtual {v0}, Lflt;->d()V

    goto :goto_0
.end method

.method public final onDenied()V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method public final onNeverAsk()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method
