.class final Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$3;
.super Ljava/lang/Object;
.source "DDEudemonService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/service/DDEudemonService$3;->a:Lcom/alibaba/android/dingtalkbase/service/DDEudemonService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 301
    const-string/jumbo v1, "TRACE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/trace/Trace;

    .line 303
    .local v0, "trace":Lcom/alibaba/doraemon/trace/Trace;
    invoke-static {}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getInstance()Lcom/alibaba/doraemon/image/memory/PoolFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/image/memory/PoolFactory;->getPooledByteBufferFactory()Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/doraemon/image/memory/PooledByteBufferFactory;->newOutputStream()Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;

    move-result-object v2

    .line 305
    .local v2, "outputStream":Lcom/alibaba/doraemon/image/memory/PooledByteBufferOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 307
    .local v6, "currentTimeMillis":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 308
    .local v4, "from":Ljava/util/Date;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 310
    .local v5, "to":Ljava/util/Date;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/trace/Trace;->fillAll2OutputStream(Ljava/lang/String;Ljava/io/OutputStream;ILjava/util/Date;Ljava/util/Date;)V

    .line 311
    return-void
.end method
