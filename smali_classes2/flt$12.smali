.class public final Lflt$12;
.super Lcmi;
.source "FriendRequestDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lflt;


# direct methods
.method public constructor <init>(Lflt;I)V
    .locals 0
    .param p1, "this$0"    # Lflt;

    .prologue
    .line 637
    iput-object p1, p0, Lflt$12;->b:Lflt;

    iput p2, p0, Lflt$12;->a:I

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 652
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lflt$12;->b:Lflt;

    .line 1060
    iget-object v0, v0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 653
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->dismissLoadingDialog()V

    .line 654
    iget-object v0, p0, Lflt$12;->b:Lflt;

    .line 2060
    const/4 v1, 0x0

    iput-boolean v1, v0, Lflt;->a:Z

    .line 655
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 637
    .line 2642
    iget v0, p0, Lflt$12;->a:I

    iget-object v1, p0, Lflt$12;->b:Lflt;

    .line 3060
    iget-object v1, v1, Lflt;->j:Ljava/util/List;

    .line 2642
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2643
    iget-object v0, p0, Lflt$12;->b:Lflt;

    .line 4060
    iget-object v0, v0, Lflt;->j:Ljava/util/List;

    .line 2643
    iget v1, p0, Lflt$12;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2644
    iget-object v0, p0, Lflt$12;->b:Lflt;

    .line 5060
    invoke-virtual {v0}, Lflt;->a()V

    .line 2646
    :cond_0
    iget-object v0, p0, Lflt$12;->b:Lflt;

    .line 6060
    iget-object v0, v0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 2646
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->dismissLoadingDialog()V

    .line 2647
    iget-object v0, p0, Lflt$12;->b:Lflt;

    .line 7060
    const/4 v1, 0x0

    iput-boolean v1, v0, Lflt;->a:Z

    .line 637
    return-void
.end method
