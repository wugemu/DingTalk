.class final Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$1;
.super Lckm$a;
.source "ConfirmMembersV2Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Lbfe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$1;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 97
    check-cast p1, Lbfe;

    .line 1100
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$1;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$1;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->a(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1106
    if-eqz p1, :cond_1

    iget-object v0, p1, Lbfe;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lbfe;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1107
    const/4 v0, 0x0

    .line 1108
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$1;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->b(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchg;

    .line 1109
    if-eqz v0, :cond_2

    iget-object v3, p1, Lbfe;->b:Ljava/util/List;

    iget-wide v4, v0, Lchg;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v4, p1, Lbfe;->d:J

    iget-wide v6, v0, Lchg;->j:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 1111
    iget v1, p1, Lbfe;->c:I

    iput v1, v0, Lchg;->h:I

    .line 1112
    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 1114
    goto :goto_0

    .line 1115
    :cond_0
    if-eqz v1, :cond_1

    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment$1;->a:Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;->c(Lcom/alibaba/android/ding/fragment/ConfirmMembersV2Fragment;)Laxy;

    move-result-object v0

    invoke-virtual {v0}, Laxy;->notifyDataSetChanged()V

    .line 97
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method
