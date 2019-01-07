.class final Lban$5;
.super Ljava/lang/Object;
.source "DingMeetingMinutesPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


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
        "Lcom/alibaba/wukong/Callback",
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
    .line 189
    iput-object p1, p0, Lban$5;->a:Lban;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 204
    iget-object v0, p0, Lban$5;->a:Lban;

    .line 1036
    iget-object v0, v0, Lban;->a:Lbam$b;

    .line 204
    invoke-interface {v0}, Lbam$b;->H_()V

    .line 205
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "DingMeetingMinutesPresenter load from local exception, parentId:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lban$5;->a:Lban;

    .line 2036
    iget-wide v2, v2, Lban;->b:J

    .line 206
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

    .line 205
    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lban$5;->a:Lban;

    invoke-static {v0}, Lban;->a(Lban;)V

    .line 212
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 189
    check-cast p1, Ljava/util/List;

    .line 2193
    iget-object v0, p0, Lban$5;->a:Lban;

    .line 3036
    iget-object v0, v0, Lban;->a:Lbam$b;

    .line 2193
    invoke-interface {v0}, Lbam$b;->H_()V

    .line 2194
    iget-object v0, p0, Lban$5;->a:Lban;

    .line 4036
    iget-object v0, v0, Lban;->c:Ljava/util/List;

    .line 2194
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2195
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2196
    iget-object v0, p0, Lban$5;->a:Lban;

    .line 5036
    iget-object v0, v0, Lban;->c:Ljava/util/List;

    .line 2196
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2198
    :cond_0
    iget-object v0, p0, Lban$5;->a:Lban;

    .line 6036
    iget-object v0, v0, Lban;->a:Lbam$b;

    .line 2198
    iget-object v1, p0, Lban$5;->a:Lban;

    .line 7036
    iget-object v1, v1, Lban;->c:Ljava/util/List;

    .line 2198
    invoke-interface {v0, v1}, Lbam$b;->a(Ljava/util/List;)V

    .line 2199
    iget-object v0, p0, Lban$5;->a:Lban;

    invoke-static {v0}, Lban;->a(Lban;)V

    .line 189
    return-void
.end method
