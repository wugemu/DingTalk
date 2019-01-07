.class final Lflt$10;
.super Ljava/lang/Object;
.source "FriendRequestDataManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflt;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.method constructor <init>(Lflt;I)V
    .locals 0
    .param p1, "this$0"    # Lflt;

    .prologue
    .line 480
    iput-object p1, p0, Lflt$10;->b:Lflt;

    iput p2, p0, Lflt$10;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 480
    .line 2483
    iget-object v0, p0, Lflt$10;->b:Lflt;

    iget v1, p0, Lflt$10;->a:I

    new-instance v2, Lflt$10$1;

    invoke-direct {v2, p0}, Lflt$10$1;-><init>(Lflt$10;)V

    .line 3519
    iget-object v3, v0, Lflt;->c:Ljava/util/List;

    if-nez v3, :cond_1

    .line 3520
    if-eqz v2, :cond_0

    .line 3521
    invoke-interface {v2, v5, v5}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3620
    :cond_0
    :goto_0
    return-void

    .line 3525
    :cond_1
    iget-object v3, v0, Lflt;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_6

    .line 3526
    iget-object v3, v0, Lflt;->d:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lflt;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 3527
    iget-object v3, v0, Lflt;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3528
    iget-object v3, v0, Lflt;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3530
    :cond_2
    iget-object v1, v0, Lflt;->c:Ljava/util/List;

    iget-object v3, v0, Lflt;->d:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3531
    invoke-virtual {v0}, Lflt;->a()V

    .line 3532
    if-eqz v2, :cond_0

    .line 3533
    invoke-interface {v2, v5}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 3536
    :cond_3
    iget-boolean v3, v0, Lflt;->e:Z

    if-eqz v3, :cond_4

    .line 3537
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v3

    iget-wide v4, v0, Lflt;->b:J

    const/16 v6, 0x14

    new-instance v7, Lflt$11;

    invoke-direct {v7, v0, v2, v1}, Lflt$11;-><init>(Lflt;Lcom/alibaba/wukong/Callback;I)V

    const-class v1, Lcma;

    iget-object v0, v0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v7, v1, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v3, v4, v5, v6, v0}, Lezv;->d(JILcma;)V

    goto :goto_0

    .line 3615
    :cond_4
    iget-object v3, v0, Lflt;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 3616
    iget-object v3, v0, Lflt;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3617
    invoke-virtual {v0}, Lflt;->a()V

    .line 3619
    :cond_5
    if-eqz v2, :cond_0

    .line 3620
    invoke-interface {v2, v5}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 3625
    :cond_6
    iget-object v3, v0, Lflt;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 3626
    iget-object v3, v0, Lflt;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3627
    invoke-virtual {v0}, Lflt;->a()V

    .line 3629
    :cond_7
    if-eqz v2, :cond_0

    .line 3630
    invoke-interface {v2, v5}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 511
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lflt$10;->b:Lflt;

    .line 1060
    iget-object v0, v0, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    .line 512
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->dismissLoadingDialog()V

    .line 513
    iget-object v0, p0, Lflt$10;->b:Lflt;

    .line 2060
    const/4 v1, 0x0

    iput-boolean v1, v0, Lflt;->a:Z

    .line 514
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 507
    return-void
.end method
