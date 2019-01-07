.class Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
.super Ljava/lang/Object;
.source "H5TraceProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Session"
.end annotation


# instance fields
.field childs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;",
            ">;"
        }
    .end annotation
.end field

.field endThreadName:Ljava/lang/String;

.field endTs:J

.field maxThread:I

.field minThread:I

.field name:Ljava/lang/String;

.field paramStr:Ljava/lang/String;

.field pendingChildStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;",
            ">;"
        }
    .end annotation
.end field

.field startThreadName:Ljava/lang/String;

.field startTs:J

.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

.field viewId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "paramStr"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->this$0:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const v0, 0x7fffffff

    iput v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->minThread:I

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->childs:Ljava/util/List;

    .line 257
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->pendingChildStack:Ljava/util/Stack;

    .line 260
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->name:Ljava/lang/String;

    .line 261
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->viewId:Ljava/lang/String;

    .line 262
    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->paramStr:Ljava/lang/String;

    .line 263
    return-void
.end method


# virtual methods
.method public end()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 307
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->isEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 329
    :goto_0
    return v1

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->pendingChildStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->endTs:J

    .line 313
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->endThreadName:Ljava/lang/String;

    .line 314
    const/4 v1, 0x1

    goto :goto_0

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->pendingChildStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;

    .line 317
    .local v0, "peek":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->pendingChildStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->endTs:J

    .line 319
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->pendingChildStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 321
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->pendingChildStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->childs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    move v1, v2

    .line 329
    goto :goto_0

    .line 324
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->pendingChildStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->childs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 327
    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->end()Z

    goto :goto_1
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->paramStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;)V
    .locals 1
    .param p1, "session"    # Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->isEnd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->pendingChildStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->pendingChildStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->pendingChildStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->insert(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;)V

    goto :goto_0
.end method

.method public isEnd()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 348
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->endTs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSampleThread(I)V
    .locals 1
    .param p1, "threadSize"    # I

    .prologue
    .line 293
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->minThread:I

    if-ge p1, v0, :cond_0

    .line 294
    iput p1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->minThread:I

    .line 296
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->maxThread:I

    if-le p1, v0, :cond_1

    .line 297
    iput p1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->maxThread:I

    .line 299
    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->startTs:J

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->startThreadName:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public toJSONObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 266
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 267
    .local v3, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "performance"

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string/jumbo v5, "subType"

    const-string/jumbo v6, "session"

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string/jumbo v5, "name"

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->name:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string/jumbo v5, "viewId"

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->viewId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string/jumbo v5, "params"

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->paramStr:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string/jumbo v5, "startTs"

    iget-wide v6, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->startTs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string/jumbo v5, "endTs"

    iget-wide v6, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->endTs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->childs:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->childs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 275
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->childs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 276
    .local v4, "size":I
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 277
    .local v1, "childrens":Lcom/alibaba/fastjson/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 278
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->childs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;

    .line 279
    .local v0, "child":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->toJSONObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v0    # "child":Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;
    :cond_0
    const-string/jumbo v5, "childrens"

    invoke-virtual {v3, v5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .end local v1    # "childrens":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_1
    iget v5, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->minThread:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_2

    .line 284
    const-string/jumbo v5, "minThread"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :goto_1
    const-string/jumbo v5, "maxThread"

    iget v6, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->maxThread:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    return-object v3

    .line 286
    :cond_2
    const-string/jumbo v5, "minThread"

    iget v6, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->minThread:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
