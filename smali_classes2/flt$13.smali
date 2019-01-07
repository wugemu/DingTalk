.class public final Lflt$13;
.super Ljava/lang/Object;
.source "FriendRequestDataManager.java"

# interfaces
.implements Lcma;


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
        "Ljava/lang/Object;",
        "Lcma",
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
    .line 780
    iput-object p1, p0, Lflt$13;->b:Lflt;

    iput p2, p0, Lflt$13;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 780
    .line 2783
    iget-object v0, p0, Lflt$13;->b:Lflt;

    .line 3060
    iget-object v0, v0, Lflt;->g:Ljava/util/List;

    .line 2783
    if-nez v0, :cond_0

    .line 2784
    iget-object v0, p0, Lflt$13;->b:Lflt;

    .line 4060
    iget-object v0, v0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 2784
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->dismissLoadingDialog()V

    .line 2785
    iget-object v0, p0, Lflt$13;->b:Lflt;

    .line 5060
    iput-boolean v2, v0, Lflt;->a:Z

    .line 2786
    :goto_0
    return-void

    .line 2788
    :cond_0
    iget v0, p0, Lflt$13;->a:I

    iget-object v1, p0, Lflt$13;->b:Lflt;

    .line 6060
    iget-object v1, v1, Lflt;->g:Ljava/util/List;

    .line 2788
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2789
    iget-object v0, p0, Lflt$13;->b:Lflt;

    .line 7060
    iget-object v0, v0, Lflt;->g:Ljava/util/List;

    .line 2789
    iget v1, p0, Lflt$13;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2790
    iget-object v0, p0, Lflt$13;->b:Lflt;

    .line 8060
    invoke-virtual {v0}, Lflt;->a()V

    .line 2792
    :cond_1
    iget-object v0, p0, Lflt$13;->b:Lflt;

    .line 9060
    iget-object v0, v0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 2792
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->dismissLoadingDialog()V

    .line 2793
    iget-object v0, p0, Lflt$13;->b:Lflt;

    .line 10060
    iput-boolean v2, v0, Lflt;->a:Z

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 803
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lflt$13;->b:Lflt;

    .line 1060
    iget-object v0, v0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 804
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->dismissLoadingDialog()V

    .line 805
    iget-object v0, p0, Lflt$13;->b:Lflt;

    .line 2060
    const/4 v1, 0x0

    iput-boolean v1, v0, Lflt;->a:Z

    .line 806
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 799
    return-void
.end method
