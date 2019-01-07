.class final Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;
.super Ljava/lang/Object;
.source "DingCommentRemindFragmentV2.java"

# interfaces
.implements Lbaq$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private f()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "commentCount":I
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbgi;

    .line 147
    .local v1, "unreadDingCommentObject":Lbgi;
    if-eqz v1, :cond_0

    .line 2028
    iget v3, v1, Lbgi;->c:I

    .line 150
    add-int/2addr v0, v3

    .line 151
    goto :goto_0

    .line 153
    .end local v1    # "unreadDingCommentObject":Lbgi;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->b:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    iget v2, v2, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->h:I

    if-eq v0, v2, :cond_2

    .line 154
    const-string/jumbo v2, "[DingNotifyCenter] ding comment count != red dot comment count"

    const-string/jumbo v3, "-1"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "commentCount="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    iget v6, v6, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->h:I

    .line 157
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", list.Size="

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 156
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-static {v2, v3, v4}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_2
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->b(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)V

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->h:I

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->c(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->c(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    iget v1, v1, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->h:I

    invoke-interface {v0, v1}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;->a(I)V

    .line 98
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "unreadCommentCount"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    iput p1, v0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->h:I

    .line 141
    return-void
.end method

.method public final a(J)V
    .locals 7
    .param p1, "dingId"    # J

    .prologue
    .line 102
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbgi;

    .line 103
    .local v1, "object":Lbgi;
    if-eqz v1, :cond_0

    .line 1020
    iget-wide v4, v1, Lbgi;->a:J

    .line 103
    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 104
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 105
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->b(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)V

    .line 1028
    iget v0, v1, Lbgi;->c:I

    .line 108
    .local v0, "curUnread":I
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    iget v3, v3, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->h:I

    sub-int/2addr v3, v0

    iput v3, v2, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->h:I

    .line 109
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->c(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->c(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;

    move-result-object v3

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    iget v2, v2, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->h:I

    if-gez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v3, v2}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$a;->a(I)V

    .line 115
    .end local v0    # "curUnread":I
    .end local v1    # "object":Lbgi;
    :cond_1
    return-void

    .line 110
    .restart local v0    # "curUnread":I
    .restart local v1    # "object":Lbgi;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    iget v2, v2, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->h:I

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbgi;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "unreadCommentObjs":Ljava/util/List;, "Ljava/util/List<Lbgi;>;"
    const/4 v1, 0x0

    .line 119
    .line 1171
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->isAdded()Z

    move-result v2

    .line 119
    if-nez v2, :cond_0

    .line 136
    :goto_0
    return-void

    .line 122
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    iput-boolean v1, v2, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->f:Z

    .line 124
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->b(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sget v4, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->b:I

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, v2, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->f:Z

    .line 129
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 131
    .local v0, "set":Ljava/util/HashSet;
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 132
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->f()V

    .line 135
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->b(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 87
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->isAdded()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 163
    .line 2171
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->isAdded()Z

    move-result v0

    .line 163
    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->b(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;)V

    goto :goto_0
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 69
    check-cast p1, Lbaq$e;

    .line 3072
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingCommentRemindFragmentV2;Lbaq$e;)Lbaq$e;

    .line 69
    return-void
.end method
