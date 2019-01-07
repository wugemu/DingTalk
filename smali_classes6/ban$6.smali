.class final Lban$6;
.super Ljava/lang/Object;
.source "DingMeetingMinutesPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lban;
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
.field final synthetic a:Lban;


# direct methods
.method constructor <init>(Lban;)V
    .locals 0
    .param p1, "this$0"    # Lban;

    .prologue
    .line 227
    iput-object p1, p0, Lban$6;->a:Lban;

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
    .line 227
    check-cast p1, Ljava/util/List;

    .line 2230
    iget-object v0, p0, Lban$6;->a:Lban;

    .line 3036
    iget-object v0, v0, Lban;->c:Ljava/util/List;

    .line 2230
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2231
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2232
    iget-object v0, p0, Lban$6;->a:Lban;

    .line 4036
    iget-object v0, v0, Lban;->c:Ljava/util/List;

    .line 2232
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2234
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2235
    if-eqz v0, :cond_0

    .line 2236
    iget-object v1, p0, Lban$6;->a:Lban;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v2

    .line 5036
    iput-wide v2, v1, Lban;->d:J

    .line 2238
    :cond_0
    iget-object v0, p0, Lban$6;->a:Lban;

    .line 6036
    iget-object v0, v0, Lban;->c:Ljava/util/List;

    .line 2238
    sget-object v1, Lbbn;->f:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2241
    :cond_1
    iget-object v1, p0, Lban$6;->a:Lban;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_2

    const/4 v0, 0x1

    .line 7036
    :goto_0
    iput-boolean v0, v1, Lban;->f:Z

    .line 2242
    iget-object v0, p0, Lban$6;->a:Lban;

    .line 8036
    iget-object v0, v0, Lban;->a:Lbam$b;

    .line 2242
    iget-object v1, p0, Lban$6;->a:Lban;

    .line 9036
    iget-object v1, v1, Lban;->c:Ljava/util/List;

    .line 2242
    invoke-interface {v0, v1}, Lbam$b;->a(Ljava/util/List;)V

    .line 227
    return-void

    .line 2241
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lban$6;->a:Lban;

    .line 1036
    iput-boolean v2, v0, Lban;->f:Z

    .line 252
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "DingMeetingMinutesPresenter init load from remote exception, parentId:"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lban$6;->a:Lban;

    .line 2036
    iget-wide v2, v2, Lban;->b:J

    .line 253
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ",errCode:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ",errMsg:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p2, v0, v1

    .line 252
    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 247
    return-void
.end method
