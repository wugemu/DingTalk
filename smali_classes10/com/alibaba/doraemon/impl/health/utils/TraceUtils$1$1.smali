.class Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1;
.super Ljava/lang/Object;
.source "TraceUtils.java"

# interfaces
.implements Lifw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1;

.field final synthetic val$traceFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1;->this$0:Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1;

    iput-object p2, p0, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1;->val$traceFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadFail(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I
    .param p3, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1;->val$traceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 143
    const-string/jumbo v0, "TraceUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "health onUploadFail "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "health"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public onUploadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 102
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1;->val$traceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 103
    const-string/jumbo v0, "TraceUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uploadFileAsync finish file="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1;->val$traceFile:Ljava/io/File;

    .line 104
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "health"

    .line 103
    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 106
    .local v10, "curTime":Ljava/util/Date;
    invoke-static {}, Lcom/alibaba/doraemon/performance/CalendarProxy;->getCalendar()Ljava/util/Calendar;

    move-result-object v8

    .line 107
    .local v8, "calendar":Ljava/util/Calendar;
    invoke-virtual {v8, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 108
    const/16 v0, 0xb

    invoke-virtual {v8, v0, v3}, Ljava/util/Calendar;->set(II)V

    .line 109
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    .line 111
    .local v11, "zeroTime":Ljava/util/Date;
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v7

    .line 112
    .local v7, "authService":Lcom/alibaba/wukong/auth/AuthService;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v9, "callbackPramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "pushTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v0, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v0, "targetUid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/alibaba/wukong/auth/AuthService;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v0, "startTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string/jumbo v0, "endTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v0, "bizType"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1;->this$0:Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1;

    iget-object v1, v1, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1;->val$category:Ljava/lang/String;

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v6, Lcom/alibaba/wukong/idl/log/models/UploadModel;

    invoke-direct {v6}, Lcom/alibaba/wukong/idl/log/models/UploadModel;-><init>()V

    .line 121
    .local v6, "uploadModel":Lcom/alibaba/wukong/idl/log/models/UploadModel;
    iput-object p2, v6, Lcom/alibaba/wukong/idl/log/models/UploadModel;->mediaId:Ljava/lang/String;

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/wukong/idl/log/models/UploadModel;->timestamp:Ljava/lang/Long;

    .line 123
    iput-object v9, v6, Lcom/alibaba/wukong/idl/log/models/UploadModel;->callbackParams:Ljava/util/Map;

    .line 125
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/wukong/idl/log/models/UploadModel;->callbackType:Ljava/lang/Integer;

    .line 127
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/wukong/idl/log/models/UploadModel;->zip:Ljava/lang/Integer;

    .line 129
    new-instance v0, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1;

    const/4 v2, 0x0

    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getWKExecutor()Lcom/alibaba/wukong/WKExecutor;

    move-result-object v4

    sget-object v5, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1;-><init>(Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1;Lcom/alibaba/wukong/Callback;ZLcom/alibaba/wukong/WKExecutor;Lcom/alibaba/doraemon/Priority;Lcom/alibaba/wukong/idl/log/models/UploadModel;)V

    .line 137
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils$1$1$1;->start()V

    .line 138
    return-void
.end method

.method public updateUploadProgress(Ljava/lang/String;III)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "totalSize"    # I
    .param p3, "uploadSize"    # I
    .param p4, "progress"    # I

    .prologue
    .line 98
    return-void
.end method
