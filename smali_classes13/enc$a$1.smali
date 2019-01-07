.class final Lenc$a$1;
.super Ljava/lang/Object;
.source "SearchAPIImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lenc$a;
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
        "Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lenc$a;


# direct methods
.method constructor <init>(Lenc$a;)V
    .locals 0
    .param p1, "this$0"    # Lenc$a;

    .prologue
    .line 1223
    iput-object p1, p0, Lenc$a$1;->a:Lenc$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1223
    check-cast p1, Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;

    .line 5226
    if-eqz p1, :cond_3

    .line 5229
    :try_start_0
    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    .line 6211
    iget-object v0, v0, Lenc$a;->c:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    .line 5229
    if-nez v0, :cond_0

    .line 5230
    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    new-instance v1, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    invoke-direct {v1}, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;-><init>()V

    .line 7211
    iput-object v1, v0, Lenc$a;->c:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    .line 5231
    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    .line 8211
    iget-object v0, v0, Lenc$a;->c:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    .line 5231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->objectList:Ljava/util/List;

    .line 5233
    :cond_0
    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    .line 9211
    iget-object v0, v0, Lenc$a;->c:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    .line 5233
    iget v1, p1, Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;->size:I

    iput v1, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->size:I

    .line 5234
    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    .line 10211
    iget-object v0, v0, Lenc$a;->c:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    .line 5234
    iget-wide v2, p1, Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;->updateTime:J

    iput-wide v2, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->updateTime:J

    .line 5235
    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    .line 11211
    iget-object v0, v0, Lenc$a;->c:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    .line 5235
    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->objectList:Ljava/util/List;

    iget-object v1, p1, Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;->objectList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5236
    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    iget-object v1, p1, Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;->sessionId:Ljava/lang/String;

    .line 12211
    iput-object v1, v0, Lenc$a;->a:Ljava/lang/String;

    .line 5237
    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    iget-object v1, p1, Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;->offset:Ljava/lang/String;

    .line 13211
    iput-object v1, v0, Lenc$a;->b:Ljava/lang/String;

    .line 5239
    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    .line 14211
    iget-boolean v0, v0, Lenc$a;->d:Z

    .line 5239
    if-nez v0, :cond_1

    .line 5240
    iget-boolean v0, p1, Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;->hasMore:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    .line 15211
    iget v0, v0, Lenc$a;->e:I

    .line 5240
    if-lez v0, :cond_2

    .line 5241
    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    .line 16211
    invoke-virtual {v0}, Lenc$a;->a()V

    .line 5246
    :cond_1
    :goto_0
    const-string/jumbo v0, "getUserIntimacyData"

    const/4 v1, 0x0

    const-string/jumbo v2, "GetUserIntimacyDataTask.mCallbackProxy.onDataReceived:sessionId=%s,offset=%s,size=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lenc$a$1;->a:Lenc$a;

    .line 19211
    iget-object v5, v5, Lenc$a;->a:Ljava/lang/String;

    .line 5247
    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lenc$a$1;->a:Lenc$a;

    .line 20211
    iget-object v5, v5, Lenc$a;->b:Ljava/lang/String;

    .line 5247
    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p1, Lcom/alibaba/android/search/model/idl/objects/PushUserResultExObject;->size:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5246
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5254
    :goto_1
    return-void

    .line 5243
    :cond_2
    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    .line 17211
    iget-object v0, v0, Lenc$a;->f:Lcma;

    .line 5243
    iget-object v1, p0, Lenc$a$1;->a:Lenc$a;

    .line 18211
    iget-object v1, v1, Lenc$a;->c:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    .line 5243
    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5248
    :catch_0
    move-exception v0

    .line 5250
    const-string/jumbo v1, "getUserIntimacyData"

    const-string/jumbo v2, "GetUserIntimacyDataTask.mCallbackProxy.onDataReceived:%s,%s,%s"

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lenc$a$1;->a:Lenc$a;

    .line 21211
    iget-object v4, v4, Lenc$a;->a:Ljava/lang/String;

    .line 5251
    aput-object v4, v3, v8

    iget-object v4, p0, Lenc$a$1;->a:Lenc$a;

    .line 22211
    iget-object v4, v4, Lenc$a;->b:Ljava/lang/String;

    .line 5251
    aput-object v4, v3, v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5250
    invoke-static {v1, v7, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5252
    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    .line 23211
    iput-boolean v6, v0, Lenc$a;->d:Z

    .line 5253
    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    .line 24211
    iget-object v0, v0, Lenc$a;->f:Lcma;

    .line 5253
    invoke-interface {v0, v7}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_1

    .line 5256
    :cond_3
    const-string/jumbo v0, "getUserIntimacyData"

    const-string/jumbo v1, "GetUserIntimacyDataTask.mCallbackProxy.onDataReceived:NULL:%s,%s"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lenc$a$1;->a:Lenc$a;

    .line 25211
    iget-object v3, v3, Lenc$a;->a:Ljava/lang/String;

    .line 5257
    aput-object v3, v2, v8

    iget-object v3, p0, Lenc$a$1;->a:Lenc$a;

    .line 26211
    iget-object v3, v3, Lenc$a;->b:Ljava/lang/String;

    .line 5257
    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5256
    invoke-static {v0, v7, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5258
    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    .line 27211
    iput-boolean v6, v0, Lenc$a;->d:Z

    .line 5259
    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    .line 28211
    iget-object v0, v0, Lenc$a;->f:Lcma;

    .line 5259
    invoke-interface {v0, v7}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 1270
    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    .line 2211
    iput-boolean v6, v0, Lenc$a;->d:Z

    .line 1271
    const-string/jumbo v0, "getUserIntimacyData"

    const/4 v1, 0x0

    const-string/jumbo v2, "GetUserIntimacyDataTask.mCallbackProxy.onException:%s,%s,%s,%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lenc$a$1;->a:Lenc$a;

    .line 3211
    iget-object v5, v5, Lenc$a;->a:Ljava/lang/String;

    .line 1272
    aput-object v5, v3, v4

    iget-object v4, p0, Lenc$a$1;->a:Lenc$a;

    .line 4211
    iget-object v4, v4, Lenc$a;->b:Ljava/lang/String;

    .line 1272
    aput-object v4, v3, v6

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1271
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    iget-object v0, p0, Lenc$a$1;->a:Lenc$a;

    .line 5211
    iget-object v0, v0, Lenc$a;->f:Lcma;

    .line 1274
    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1266
    return-void
.end method
