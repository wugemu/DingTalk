.class final Lfgo$e$1;
.super Ljava/lang/Object;
.source "NewRequestAdapter.java"

# interfaces
.implements Lfgo$h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgo$e;-><init>(Lfgo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgo;


# direct methods
.method constructor <init>(Lfgo;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lfgo$e$1;->a:Lfgo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 709
    iget-object v0, p0, Lfgo$e$1;->a:Lfgo;

    invoke-static {v0}, Lfgo;->a(Lfgo;)Lflt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lfgo$e$1;->a:Lfgo;

    invoke-static {v0}, Lfgo;->a(Lfgo;)Lflt;

    move-result-object v1

    .line 1764
    iget-boolean v0, v1, Lflt;->a:Z

    if-nez v0, :cond_0

    .line 1767
    iget-object v0, v1, Lflt;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lflt;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1771
    :cond_0
    :goto_0
    return-void

    .line 1770
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, v1, Lflt;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1773
    iget-object v0, v1, Lflt;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 1774
    if-eqz v0, :cond_0

    .line 1777
    iget-object v2, v1, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->showLoadingDialog()V

    .line 1778
    const/4 v2, 0x1

    iput-boolean v2, v1, Lflt;->a:Z

    .line 1780
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    new-instance v0, Lflt$13;

    invoke-direct {v0, v1, p1}, Lflt$13;-><init>(Lflt;I)V

    const-class v3, Lcma;

    iget-object v1, v1, Lflt;->o:Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    invoke-static {v0, v3, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v2, v4, v5, v0}, Lezv;->b(JLcma;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;I)V
    .locals 1
    .param p1, "friendRequestObject"    # Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 716
    iget-object v0, p0, Lfgo$e$1;->a:Lfgo;

    invoke-static {v0}, Lfgo;->a(Lfgo;)Lflt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lfgo$e$1;->a:Lfgo;

    invoke-static {v0}, Lfgo;->a(Lfgo;)Lflt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lflt;->a(Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;)V

    .line 719
    :cond_0
    return-void
.end method
