.class final Larn$9;
.super Ljava/lang/Object;
.source "TooLong2Manager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larn;->b(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
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
        "Lasb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/wukong/Callback;

.field final synthetic d:Larn;


# direct methods
.method constructor <init>(Larn;Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "this$0"    # Larn;

    .prologue
    .line 197
    iput-object p1, p0, Larn$9;->d:Larn;

    iput-object p2, p0, Larn$9;->a:Ljava/lang/String;

    iput-wide p3, p0, Larn$9;->b:J

    iput-object p5, p0, Larn$9;->c:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 197
    check-cast p1, Lasb;

    .line 1200
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    iget-object v1, p0, Larn$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lark;->a(Ljava/lang/String;Z)V

    .line 1201
    if-nez p1, :cond_1

    .line 1202
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]listCalendarNewest onDataReceived folderId:"

    aput-object v1, v0, v6

    iget-object v1, p0, Larn$9;->a:Ljava/lang/String;

    aput-object v1, v0, v7

    const-string/jumbo v1, ", server no data."

    aput-object v1, v0, v8

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1203
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    iget-object v1, p0, Larn$9;->a:Ljava/lang/String;

    iget-wide v2, p0, Larn$9;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lark;->b(Ljava/lang/String;J)V

    .line 1204
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    iget-object v1, p0, Larn$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lark;->b(Ljava/lang/String;Z)V

    .line 1205
    iget-object v0, p0, Larn$9;->c:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Larn$9;->c:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1269
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2032
    iget-object v2, p1, Lasb;->c:Ljava/util/List;

    .line 1213
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1214
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3024
    :cond_2
    iget-object v3, p1, Lasb;->a:Ljava/util/List;

    .line 1218
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1219
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1222
    :cond_3
    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "[TooLong2Manager]listCalendarNewest onDataReceived folderId:"

    aput-object v0, v4, v6

    iget-object v0, p0, Larn$9;->a:Ljava/lang/String;

    aput-object v0, v4, v7

    const-string/jumbo v0, ", nonRepeatCalendars size:"

    aput-object v0, v4, v8

    if-nez v2, :cond_7

    const-string/jumbo v0, "0"

    .line 1223
    :goto_1
    aput-object v0, v4, v9

    const-string/jumbo v0, ", repeatCalendars size:"

    aput-object v0, v4, v10

    const/4 v5, 0x5

    if-nez v3, :cond_8

    const-string/jumbo v0, "0"

    .line 1224
    :goto_2
    aput-object v0, v4, v5

    .line 1222
    invoke-static {v4}, Lavy;->a([Ljava/lang/String;)V

    .line 1226
    iget-object v0, p0, Larn$9;->d:Larn;

    .line 3042
    iget-object v0, v0, Larn;->a:Lapw;

    .line 1226
    invoke-virtual {v0, v1}, Lapw;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1229
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]listCalendarNewest onDataReceived->dealWithCalendars folderId:"

    aput-object v1, v0, v6

    iget-object v1, p0, Larn$9;->a:Ljava/lang/String;

    aput-object v1, v0, v7

    const-string/jumbo v1, ", maxVersion:"

    aput-object v1, v0, v8

    .line 4040
    iget-wide v4, p1, Lasb;->e:J

    .line 1230
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 1229
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1231
    iget-object v0, p0, Larn$9;->d:Larn;

    iget-object v1, p0, Larn$9;->a:Ljava/lang/String;

    .line 5040
    iget-wide v4, p1, Lasb;->e:J

    .line 1231
    invoke-static {v0, v1, v4, v5}, Larn;->a(Larn;Ljava/lang/String;J)V

    .line 1234
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]listCalendarNewest onDataReceived->dealWithCalendars folderId:"

    aput-object v1, v0, v6

    iget-object v1, p0, Larn$9;->a:Ljava/lang/String;

    aput-object v1, v0, v7

    const-string/jumbo v1, ", nonRepeatHasMore:"

    aput-object v1, v0, v8

    .line 6036
    iget-boolean v1, p1, Lasb;->d:Z

    .line 1235
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 1234
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1236
    iget-wide v0, p0, Larn$9;->b:J

    .line 7036
    iget-boolean v4, p1, Lasb;->d:Z

    .line 1237
    if-eqz v4, :cond_5

    .line 1238
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1239
    :cond_4
    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v4, "[TooLong2Manager]listCalendarNewest onDataReceived->dealWithCalendars folderId:"

    aput-object v4, v2, v6

    iget-object v4, p0, Larn$9;->a:Ljava/lang/String;

    aput-object v4, v2, v7

    const-string/jumbo v4, ", nonRepeat has more but nonRepeat data is empty"

    aput-object v4, v2, v8

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 1246
    :cond_5
    :goto_3
    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v4, "[TooLong2Manager]listCalendarNewest onDataReceived->dealWithCalendars folderId:"

    aput-object v4, v2, v6

    iget-object v4, p0, Larn$9;->a:Ljava/lang/String;

    aput-object v4, v2, v7

    const-string/jumbo v4, ", nonRepeatStartDateAnchor:"

    aput-object v4, v2, v8

    .line 1247
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    .line 1246
    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 1248
    invoke-static {}, Lark;->a()Lark;

    move-result-object v2

    iget-object v4, p0, Larn$9;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v0, v1}, Lark;->b(Ljava/lang/String;J)V

    .line 1251
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]listCalendarNewest onDataReceived->dealWithCalendars folderId:"

    aput-object v1, v0, v6

    iget-object v1, p0, Larn$9;->a:Ljava/lang/String;

    aput-object v1, v0, v7

    const-string/jumbo v1, ", repeatHasMore:"

    aput-object v1, v0, v8

    .line 8028
    iget-boolean v1, p1, Lasb;->b:Z

    .line 1252
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 1251
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 9028
    iget-boolean v0, p1, Lasb;->b:Z

    .line 1253
    if-eqz v0, :cond_b

    .line 1254
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    iget-object v1, p0, Larn$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lark;->b(Ljava/lang/String;Z)V

    .line 1255
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1256
    :cond_6
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]listCalendarNewest onDataReceived->dealWithCalendars  folderId:"

    aput-object v1, v0, v6

    iget-object v1, p0, Larn$9;->a:Ljava/lang/String;

    aput-object v1, v0, v7

    const-string/jumbo v1, ", repeat has more but repeat data is empty"

    aput-object v1, v0, v8

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1266
    :goto_4
    iget-object v0, p0, Larn$9;->c:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Larn$9;->c:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1223
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1224
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1243
    :cond_9
    iget-object v0, p0, Larn$9;->d:Larn;

    invoke-static {v0, v2}, Larn;->a(Larn;Ljava/util/List;)J

    move-result-wide v0

    goto/16 :goto_3

    .line 1259
    :cond_a
    iget-object v0, p0, Larn$9;->d:Larn;

    invoke-static {v0, v3}, Larn;->b(Larn;Ljava/util/List;)J

    move-result-wide v0

    .line 1260
    invoke-static {}, Lark;->a()Lark;

    move-result-object v2

    iget-object v3, p0, Larn$9;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lark;->a(Ljava/lang/String;J)V

    goto :goto_4

    .line 1263
    :cond_b
    invoke-static {}, Lark;->a()Lark;

    move-result-object v0

    iget-object v1, p0, Larn$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lark;->b(Ljava/lang/String;Z)V

    goto :goto_4

    .line 1270
    :cond_c
    iget-object v0, p0, Larn$9;->c:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_d

    .line 1271
    iget-object v0, p0, Larn$9;->c:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "-1"

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "[TooLong2Manager]listCalendarNewest onDataReceived folderId:"

    aput-object v3, v2, v6

    iget-object v3, p0, Larn$9;->a:Ljava/lang/String;

    aput-object v3, v2, v7

    const-string/jumbo v3, ", save calendarObjects exception"

    aput-object v3, v2, v8

    .line 1272
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1271
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    :cond_d
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]listCalendarNewest onDataReceived folderId:"

    aput-object v1, v0, v6

    iget-object v1, p0, Larn$9;->a:Ljava/lang/String;

    aput-object v1, v0, v7

    const-string/jumbo v1, ", save calendarObjects exception"

    aput-object v1, v0, v8

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

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

    .line 287
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "[TooLong2Manager]listCalendarNewest onException failed, reason:"

    aput-object v1, v0, v4

    aput-object p2, v0, v5

    const-string/jumbo v1, ", code:"

    aput-object v1, v0, v6

    aput-object p1, v0, v7

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Larn$9;->c:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Larn$9;->c:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "-1"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "listCalendarNewest exception: code:"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const-string/jumbo v3, ", reason:"

    aput-object v3, v2, v6

    aput-object p2, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 283
    return-void
.end method
