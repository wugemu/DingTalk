.class final Lbbf$3;
.super Ljava/lang/Object;
.source "SingleChatTaskPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbf;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbbf;


# direct methods
.method constructor <init>(Lbbf;Z)V
    .locals 0
    .param p1, "this$0"    # Lbbf;

    .prologue
    .line 152
    iput-object p1, p0, Lbbf$3;->b:Lbbf;

    iput-boolean p2, p0, Lbbf$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 152
    check-cast p1, Ljava/util/List;

    .line 2155
    iget-boolean v0, p0, Lbbf$3;->a:Z

    if-eqz v0, :cond_0

    .line 2156
    iget-object v0, p0, Lbbf$3;->b:Lbbf;

    .line 3032
    iget-object v0, v0, Lbbf;->a:Lbbe$b;

    .line 2156
    invoke-interface {v0}, Lbbe$b;->H_()V

    .line 2158
    :cond_0
    iget-object v0, p0, Lbbf$3;->b:Lbbf;

    .line 4032
    iget-object v0, v0, Lbbf;->f:Ljava/util/List;

    .line 2158
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2159
    if-eqz p1, :cond_3

    .line 2161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2162
    invoke-static {v0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2163
    iget-object v2, p0, Lbbf$3;->b:Lbbf;

    .line 5032
    iget-object v2, v2, Lbbf;->f:Ljava/util/List;

    .line 2163
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2167
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lbbf$3;->b:Lbbf;

    .line 6032
    iget-object v1, v1, Lbbf;->e:Ljava/util/List;

    .line 2167
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 2168
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[SingleChatTaskActivity] fetchTasks failed, taskId.size=:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lbbf$3;->b:Lbbf;

    .line 7032
    iget-object v2, v2, Lbbf;->e:Ljava/util/List;

    .line 2169
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", mTasks.size=:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lbbf$3;->b:Lbbf;

    .line 8032
    iget-object v2, v2, Lbbf;->f:Ljava/util/List;

    .line 2169
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", userId="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lbbf$3;->b:Lbbf;

    .line 9032
    iget-wide v2, v2, Lbbf;->b:J

    .line 2170
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2168
    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 2173
    :cond_3
    iget-object v0, p0, Lbbf$3;->b:Lbbf;

    invoke-static {v0}, Lbbf;->a(Lbbf;)V

    .line 2174
    iget-object v0, p0, Lbbf$3;->b:Lbbf;

    invoke-static {v0}, Lbbf;->b(Lbbf;)V

    .line 152
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 183
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[SingleChatTaskActivity] retrieveDingsByIds failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 184
    iget-boolean v0, p0, Lbbf$3;->a:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lbbf$3;->b:Lbbf;

    .line 1032
    iget-object v0, v0, Lbbf;->a:Lbbe$b;

    .line 185
    invoke-interface {v0}, Lbbe$b;->H_()V

    .line 187
    :cond_0
    iget-object v0, p0, Lbbf$3;->b:Lbbf;

    .line 2032
    iget-object v0, v0, Lbbf;->f:Ljava/util/List;

    .line 187
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 188
    iget-object v0, p0, Lbbf$3;->b:Lbbf;

    invoke-static {v0}, Lbbf;->a(Lbbf;)V

    .line 189
    iget-object v0, p0, Lbbf$3;->b:Lbbf;

    invoke-static {v0}, Lbbf;->b(Lbbf;)V

    .line 190
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 179
    return-void
.end method
