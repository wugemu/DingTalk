.class final Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;
.super Ljava/lang/Object;
.source "FaceToFaceCreateConversationActivity.java"

# interfaces
.implements Ldeg$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->dismissLoadingDialog()V

    .line 578
    return-void
.end method

.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 543
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "f2f join group succ: "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->c(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->c(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 546
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->finish()V

    .line 547
    return-void
.end method

.method public final a(Ldel;)V
    .locals 6
    .param p1, "statusModel"    # Ldel;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 511
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0, v3}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->a(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;Z)Z

    .line 512
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0, v3, v5, v4, v4}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->a(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->k(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)V

    .line 514
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->a(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;Ldel;)V

    .line 515
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->d(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)V

    .line 516
    const-string/jumbo v0, "im"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "f2f create group succ cid: "

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->c(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, " code:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->l(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 557
    .local p1, "userProfileObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->a(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;Ljava/util/List;)V

    .line 558
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 582
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->showLoadingDialog()V

    .line 573
    return-void
.end method

.method public final b(Ldel;)V
    .locals 2
    .param p1, "statusModel"    # Ldel;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 529
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->a(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;Z)Z

    .line 530
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->a(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;Ldel;)V

    .line 531
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->d(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)V

    .line 532
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 521
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0, v4}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->a(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;Z)Z

    .line 522
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0, v4, v4, p1, p2}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->a(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->m(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)V

    .line 524
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "f2f create group fail code: "

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason\uff1a"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 536
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0, v4}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->a(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;Z)Z

    .line 537
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->d(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;)V

    .line 538
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "f2f sync member fail code: "

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason\uff1a"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 551
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "f2f join group fail code: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason\uff1a"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 562
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 508
    check-cast p1, Ldeg$a;

    .line 1567
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity$7;->a:Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;->a(Lcom/alibaba/android/dingtalkim/chat/facetoface/FaceToFaceCreateConversationActivity;Ldeg$a;)Ldeg$a;

    .line 508
    return-void
.end method
