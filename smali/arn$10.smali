.class final Larn$10;
.super Ljava/lang/Object;
.source "TooLong2Manager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larn;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;Ljava/util/concurrent/atomic/AtomicInteger;)V
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
        "Lasa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Larn;


# direct methods
.method constructor <init>(Larn;Ljava/lang/String;Lcom/alibaba/wukong/Callback;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Larn;

    .prologue
    .line 315
    iput-object p1, p0, Larn$10;->d:Larn;

    iput-object p2, p0, Larn$10;->a:Ljava/lang/String;

    iput-object p3, p0, Larn$10;->b:Lcom/alibaba/wukong/Callback;

    iput-object p4, p0, Larn$10;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 315
    check-cast p1, Lasa;

    .line 1318
    if-nez p1, :cond_1

    .line 1319
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]listCalendarByMaxVersion folderId:"

    aput-object v1, v0, v4

    iget-object v1, p0, Larn$10;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string/jumbo v1, ", calendarObjects == null"

    aput-object v1, v0, v3

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1320
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    iget-object v1, p0, Larn$10;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lark;->a(Ljava/lang/String;Z)V

    .line 1321
    iget-object v0, p0, Larn$10;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Larn$10;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v6}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1347
    :cond_0
    :goto_0
    return-void

    .line 2021
    :cond_1
    iget-object v0, p1, Lasa;->a:Ljava/util/List;

    .line 1328
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1329
    :cond_2
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]listCalendarByMaxVersion folderId:"

    aput-object v1, v0, v4

    iget-object v1, p0, Larn$10;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string/jumbo v1, ", calendarObjects == null or isEmpty."

    aput-object v1, v0, v3

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1330
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    iget-object v1, p0, Larn$10;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lark;->a(Ljava/lang/String;Z)V

    .line 1331
    iget-object v0, p0, Larn$10;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Larn$10;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v6}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1337
    :cond_3
    iget-object v1, p0, Larn$10;->d:Larn;

    .line 2042
    iget-object v1, v1, Larn;->a:Lapw;

    .line 1337
    invoke-virtual {v1, v0}, Lapw;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1338
    iget-object v1, p0, Larn$10;->d:Larn;

    invoke-virtual {v1, v0, v6, v6}, Larn;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 3025
    iget-boolean v0, p1, Lasa;->b:Z

    .line 1340
    if-eqz v0, :cond_4

    .line 1341
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]listCalendarByMaxVersion folderId:"

    aput-object v1, v0, v4

    iget-object v1, p0, Larn$10;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string/jumbo v1, ", hasMore"

    aput-object v1, v0, v3

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1342
    iget-object v0, p0, Larn$10;->d:Larn;

    iget-object v1, p0, Larn$10;->a:Ljava/lang/String;

    iget-object v2, p0, Larn$10;->b:Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Larn$10;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3042
    invoke-virtual {v0, v1, v2, v3}, Larn;->a(Ljava/lang/String;Lcom/alibaba/wukong/Callback;Ljava/util/concurrent/atomic/AtomicInteger;)V

    goto :goto_0

    .line 1344
    :cond_4
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]listCalendarByMaxVersion folderId:"

    aput-object v1, v0, v4

    iget-object v1, p0, Larn$10;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string/jumbo v1, ", sync success."

    aput-object v1, v0, v3

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1345
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    iget-object v1, p0, Larn$10;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lark;->a(Ljava/lang/String;Z)V

    .line 1346
    iget-object v0, p0, Larn$10;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Larn$10;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v6}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1351
    :cond_5
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]listCalendarByMaxVersion folderId:"

    aput-object v1, v0, v4

    iget-object v1, p0, Larn$10;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string/jumbo v1, ", save Exception"

    aput-object v1, v0, v3

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1352
    iget-object v0, p0, Larn$10;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Larn$10;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "-1"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[TooLong2Manager]listCalendarByMaxVersion  save calendarObjects exception"

    aput-object v3, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 364
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]listCalendarByMaxVersion folderId:"

    aput-object v1, v0, v4

    iget-object v1, p0, Larn$10;->a:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string/jumbo v1, ", failed, reason:"

    aput-object v1, v0, v6

    aput-object p2, v0, v7

    const-string/jumbo v1, ", code:"

    aput-object v1, v0, v2

    const/4 v1, 0x5

    aput-object p1, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 365
    const-string/jumbo v0, "310003"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]listCalendarByMaxVersion folderId:"

    aput-object v1, v0, v4

    iget-object v1, p0, Larn$10;->a:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string/jumbo v1, ", onException. list all data."

    aput-object v1, v0, v6

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Larn$10;->d:Larn;

    iget-object v1, p0, Larn$10;->a:Ljava/lang/String;

    .line 1042
    invoke-virtual {v0, v1}, Larn;->a(Ljava/lang/String;)V

    .line 1196
    const-string/jumbo v0, "tooLong2_exception_big_data"

    invoke-static {v0}, Lavw;->a(Ljava/lang/String;)V

    .line 370
    :cond_0
    iget-object v0, p0, Larn$10;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Larn$10;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "-1"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[TooLong2Manager]listCalendarByMaxVersion  exception: code:"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const-string/jumbo v3, ", reason:"

    aput-object v3, v2, v6

    aput-object p2, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_1
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 360
    return-void
.end method
