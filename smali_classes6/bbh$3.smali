.class final Lbbh$3;
.super Ljava/lang/Object;
.source "SubTaskListPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbh;
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
.field final synthetic a:I

.field final synthetic b:Lbbh;


# direct methods
.method constructor <init>(Lbbh;I)V
    .locals 0
    .param p1, "this$0"    # Lbbh;

    .prologue
    .line 132
    iput-object p1, p0, Lbbh$3;->b:Lbbh;

    iput p2, p0, Lbbh$3;->a:I

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
    .line 132
    check-cast p1, Ljava/util/List;

    .line 2135
    iget-object v0, p0, Lbbh$3;->b:Lbbh;

    .line 3033
    iget-object v0, v0, Lbbh;->b:Ljava/util/List;

    .line 2135
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2136
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2137
    iget-object v0, p0, Lbbh$3;->b:Lbbh;

    .line 4033
    iget-object v0, v0, Lbbh;->b:Ljava/util/List;

    .line 2137
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2138
    iget-object v0, p0, Lbbh$3;->b:Lbbh;

    .line 5033
    iget-object v0, v0, Lbbh;->b:Ljava/util/List;

    .line 2138
    sget-object v1, Lbbn;->f:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2140
    :cond_0
    iget-object v0, p0, Lbbh$3;->b:Lbbh;

    .line 6033
    iget-object v0, v0, Lbbh;->a:Lbbg$b;

    .line 2140
    iget-object v1, p0, Lbbh$3;->b:Lbbh;

    .line 7033
    iget-object v1, v1, Lbbh;->b:Ljava/util/List;

    .line 2140
    invoke-interface {v0, v1}, Lbbg$b;->a(Ljava/util/List;)V

    .line 2141
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2142
    :cond_1
    iget-object v0, p0, Lbbh$3;->b:Lbbh;

    .line 8033
    iget-object v0, v0, Lbbh;->a:Lbbg$b;

    .line 2144
    :cond_2
    const/4 v1, 0x0

    move v3, v1

    move-object v1, v0

    move v0, v3

    :goto_0
    invoke-interface {v1, v0}, Lbbg$b;->a(Z)V

    .line 132
    return-void

    .line 2144
    :cond_3
    iget-object v0, p0, Lbbh$3;->b:Lbbh;

    .line 9033
    iget-object v0, v0, Lbbh;->a:Lbbg$b;

    .line 2144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lbbh$3;->a:I

    if-lt v1, v2, :cond_2

    const/4 v1, 0x1

    move v3, v1

    move-object v1, v0

    move v0, v3

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

    .line 154
    iget-object v0, p0, Lbbh$3;->b:Lbbh;

    .line 1033
    iget-object v0, v0, Lbbh;->a:Lbbg$b;

    .line 154
    invoke-interface {v0, v2}, Lbbg$b;->a(Z)V

    .line 155
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SubDingListPresenter init load from remote exception, parentId:"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lbbh$3;->b:Lbbh;

    .line 2033
    iget-wide v2, v2, Lbbh;->c:J

    .line 156
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

    .line 155
    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 150
    return-void
.end method
