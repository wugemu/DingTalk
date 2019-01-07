.class final Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;
.super Ljava/lang/Object;
.source "DingUnReadFragmentV2.java"

# interfaces
.implements Lbaq$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->b(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->h:I

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->c(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->c(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    iget v1, v1, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->h:I

    invoke-interface {v0, v1}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;->a(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "unreadCount"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    iput p1, v0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->h:I

    .line 153
    return-void
.end method

.method public final a(J)V
    .locals 5
    .param p1, "dingId"    # J

    .prologue
    .line 101
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgk;

    .line 102
    .local v0, "object":Lbgk;
    if-eqz v0, :cond_0

    .line 1018
    iget-wide v2, v0, Lbgk;->a:J

    .line 102
    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->b(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)V

    .line 106
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    iget v2, v1, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->h:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->h:I

    .line 107
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->c(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->c(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    iget v1, v1, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->h:I

    if-gez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v1}, Lcom/alibaba/android/ding/activity/DingNotifyCenterActivity$b;->a(I)V

    .line 113
    .end local v0    # "object":Lbgk;
    :cond_1
    return-void

    .line 108
    .restart local v0    # "object":Lbgk;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    iget v1, v1, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->h:I

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbgk;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "unreadDingObjs":Ljava/util/List;, "Ljava/util/List<Lbgk;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 127
    .line 1165
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->isAdded()Z

    move-result v1

    .line 127
    if-nez v1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 130
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    iput-boolean v3, v1, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->f:Z

    .line 132
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->b(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)V

    goto :goto_0

    .line 135
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sget v5, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->b:I

    if-ne v1, v5, :cond_4

    move v1, v2

    :goto_1
    iput-boolean v1, v4, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->f:Z

    .line 137
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 139
    .local v0, "set":Ljava/util/HashSet;
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 140
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v4, Lcom/alibaba/android/ding/fragment/v2/DingNotifyCenterAbstractFragmentV2;->b:I

    if-ge v1, v4, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    iget v4, v4, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->h:I

    if-eq v1, v4, :cond_3

    .line 143
    const-string/jumbo v1, "[DingNotifyCenter] ding unread count != red dot unread count"

    const-string/jumbo v4, "-1"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "unReadCount="

    aput-object v6, v5, v3

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    iget v3, v3, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->h:I

    .line 145
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", list.Size="

    aput-object v3, v5, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v3}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 144
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v1, v4, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->b(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)V

    goto/16 :goto_0

    .end local v0    # "set":Ljava/util/HashSet;
    :cond_4
    move v1, v3

    .line 135
    goto/16 :goto_1
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 86
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public final b(J)V
    .locals 5
    .param p1, "senderId"    # J

    .prologue
    .line 117
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgk;

    .line 118
    .local v0, "object":Lbgk;
    if-eqz v0, :cond_0

    .line 1022
    iget-wide v2, v0, Lbgk;->b:J

    .line 118
    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 119
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->b(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)V

    .line 123
    .end local v0    # "object":Lbgk;
    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->isAdded()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 157
    .line 2165
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->isAdded()Z

    move-result v0

    .line 157
    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->b(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;)V

    goto :goto_0
.end method

.method public final synthetic setPresenter(Lcjd;)V
    .locals 1

    .prologue
    .line 69
    check-cast p1, Lbaq$e;

    .line 3073
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2$1;->a:Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;->a(Lcom/alibaba/android/ding/fragment/v2/DingUnReadFragmentV2;Lbaq$e;)Lbaq$e;

    .line 69
    return-void
.end method
