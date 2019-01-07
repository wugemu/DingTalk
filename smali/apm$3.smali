.class final Lapm$3;
.super Ljava/lang/Object;
.source "CalendarShareSettingReceiverPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapm;
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
        "Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lapm;


# direct methods
.method constructor <init>(Lapm;)V
    .locals 0
    .param p1, "this$0"    # Lapm;

    .prologue
    .line 172
    iput-object p1, p0, Lapm$3;->a:Lapm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 191
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "CalendarShareSetReceiverPresenter load from remote exception, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lapm$3;->a:Lapm;

    .line 1042
    iget-object v0, v0, Lapm;->a:Lapl$b;

    .line 193
    invoke-interface {v0}, Lapl$b;->H_()V

    .line 194
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 172
    check-cast p1, Ljava/util/List;

    .line 1175
    iget-object v0, p0, Lapm$3;->a:Lapm;

    .line 2042
    iget-object v0, v0, Lapm;->c:Ljava/util/List;

    .line 1175
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1177
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1178
    iget-object v0, p0, Lapm$3;->a:Lapm;

    .line 3042
    iget-object v0, v0, Lapm;->c:Ljava/util/List;

    .line 1178
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1179
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    .line 1180
    if-eqz v0, :cond_0

    .line 1183
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->getUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1186
    :cond_1
    iget-object v0, p0, Lapm$3;->a:Lapm;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lapm;->a(Lapm;Ljava/util/List;Z)V

    .line 172
    return-void
.end method
