.class public Lhqo;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "OANotifyPushHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lclb;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lhqo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhqo;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v0, Lclb;

    invoke-direct {p0, p1, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 80
    return-void
.end method

.method private static a()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    .prologue
    .line 304
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 305
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v1, Lhqo;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 306
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 307
    sget-object v1, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 309
    return-object v0
.end method

.method private static a(Ljava/lang/Class;[B)Ljava/lang/Object;
    .locals 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[B)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 263
    .local v3, "ret":Ljava/lang/Object;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 266
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Liyo;

    new-instance v4, Lizk;

    array-length v5, p1

    invoke-direct {v4, v0, v5}, Lizk;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v4}, Liyo;-><init>(Lizj;)V

    .line 267
    .local v2, "reader":Liyo;
    invoke-virtual {v2}, Liyo;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v4}, Liym;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 277
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 283
    .end local v2    # "reader":Liyo;
    .end local v3    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 278
    .restart local v2    # "reader":Liyo;
    .restart local v3    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 279
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 269
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Liyo;
    :catch_1
    move-exception v1

    .line 270
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 278
    :catch_2
    move-exception v1

    .line 279
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 271
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 277
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 278
    :catch_4
    move-exception v1

    .line 279
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 273
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 277
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 278
    :catch_6
    move-exception v1

    .line 279
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 276
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 277
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 280
    :goto_1
    throw v4

    .line 278
    :catch_7
    move-exception v1

    .line 279
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;J)V
    .locals 11
    .param p0, "oaCheckInPushObject"    # Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;
    .param p1, "duration"    # J

    .prologue
    .line 314
    if-eqz p0, :cond_0

    .line 315
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v10

    .line 316
    .local v10, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-nez v10, :cond_1

    const-wide/16 v2, 0x0

    .line 317
    .local v2, "orgId":J
    :goto_0
    iget v4, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckTimes:I

    iget v5, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mMiniDistance:F

    iget v6, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mFuzzyMatch:I

    iget v7, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mHasMatched:I

    iget-wide v8, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    move-wide v0, p1

    invoke-static/range {v0 .. v9}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitFastPerformanceSuccess(JJIFIIJ)V

    .line 320
    .end local v2    # "orgId":J
    .end local v10    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_0
    return-void

    .line 316
    .restart local v10    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_1
    iget-wide v2, v10, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    goto :goto_0
.end method

.method private static a(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;Lhjt;J)V
    .locals 14
    .param p0, "oaCheckInPushObject"    # Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;
    .param p1, "oaCheckInResultPushModel"    # Lhjt;
    .param p2, "duration"    # J

    .prologue
    .line 323
    if-eqz p0, :cond_0

    .line 324
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCorpId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v12

    .line 325
    .local v12, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-nez v12, :cond_1

    const-wide/16 v4, 0x0

    .line 326
    .local v4, "orgId":J
    :goto_0
    if-eqz p1, :cond_2

    .line 327
    const-string/jumbo v0, "108"

    iget-object v1, p1, Lhjt;->a:Ljava/lang/Integer;

    .line 328
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget v6, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckTimes:I

    iget v7, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mMiniDistance:F

    iget v8, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mFuzzyMatch:I

    iget v9, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mHasMatched:I

    iget-wide v10, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    move-wide/from16 v2, p2

    .line 327
    invoke-static/range {v0 .. v11}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitFastPerformanceFailed(Ljava/lang/String;Ljava/lang/String;JJIFIIJ)V

    .line 336
    .end local v4    # "orgId":J
    .end local v12    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_0
    :goto_1
    return-void

    .line 325
    .restart local v12    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_1
    iget-wide v4, v12, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    goto :goto_0

    .line 331
    .restart local v4    # "orgId":J
    :cond_2
    const-string/jumbo v1, "108"

    iget v6, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mCheckTimes:I

    iget v7, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mMiniDistance:F

    iget v8, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mFuzzyMatch:I

    iget v9, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mHasMatched:I

    iget-wide v10, p0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    move-wide/from16 v2, p2

    invoke-static/range {v1 .. v11}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitFastPerformanceFailed(Ljava/lang/String;JJIFIIJ)V

    goto :goto_1
.end method

.method static synthetic a(Lhqo;Lhjt;)Z
    .locals 6
    .param p0, "x0"    # Lhqo;
    .param p1, "x1"    # Lhjt;

    .prologue
    const/4 v0, 0x0

    .line 64
    .line 8288
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 8290
    if-nez v1, :cond_1

    .line 8297
    :cond_0
    :goto_0
    return v0

    .line 8295
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v1

    .line 8296
    iget-object v2, p1, Lhjt;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8300
    const/4 v0, 0x1

    .line 64
    goto :goto_0
.end method


# virtual methods
.method public synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 64
    check-cast p1, Lclb;

    .line 1084
    const-string/jumbo v0, "attendance"

    sget-object v1, Lhqo;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "OANotifyPushHandler onReceived"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    if-eqz p1, :cond_14

    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    if-eqz v0, :cond_14

    .line 1087
    const-string/jumbo v0, "attendance"

    sget-object v1, Lhqo;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "OANotifyPushHandler noticeModels size="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lclb;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    .line 1089
    if-eqz v0, :cond_0

    iget-object v1, v0, Lclc;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lclc;->b:[B

    if-eqz v1, :cond_0

    .line 1090
    iget-object v1, v0, Lclc;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1119
    :pswitch_0
    const-class v1, Lhjw;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lhqo;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 1121
    if-eqz v0, :cond_1

    .line 1122
    check-cast v0, Lhjw;

    .line 1123
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhqo;->a:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "id:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lhjw;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " pushModel.audio:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v0, Lhjw;->f:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    sget-object v1, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->AUTO_CHECK:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lhjw;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1126
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhqo;->a:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "handleOACheckInSuccess, remove planId:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lhjw;->h:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " corpId:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v0, Lhjw;->i:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    invoke-static {}, Lhkw;->a()Lhkw;

    move-result-object v1

    iget-object v2, v0, Lhjw;->h:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lhkw;->b(J)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    move-result-object v3

    .line 2042
    if-nez v0, :cond_2

    .line 2043
    const/4 v1, 0x0

    .line 1132
    :goto_1
    invoke-static {v1}, Lhky;->a(Lhkz;)V

    .line 1133
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-wide/16 v4, 0x5dc

    invoke-static {v1, v4, v5}, Lcms;->a(Landroid/content/Context;J)V

    .line 1135
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lhqo$1;

    invoke-direct {v2, p0, v0}, Lhqo$1;-><init>(Lhqo;Lhjw;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1144
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v1

    iget-object v0, v0, Lhjw;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lhkx;->a(J)Ljava/lang/Long;

    move-result-object v0

    .line 1145
    if-eqz v0, :cond_5

    .line 1146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v4, v0

    invoke-static {v3, v0, v1}, Lhqo;->a(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;J)V

    .line 1094
    :cond_1
    :goto_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "auto_check_in"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 2045
    :cond_2
    new-instance v2, Lhkz;

    invoke-direct {v2}, Lhkz;-><init>()V

    .line 2046
    const/4 v1, 0x6

    iput v1, v2, Lhkz;->b:I

    .line 2047
    iget-object v1, v0, Lhjw;->c:Ljava/lang/String;

    iput-object v1, v2, Lhkz;->f:Ljava/lang/String;

    .line 2048
    iget-object v1, v0, Lhjw;->i:Ljava/lang/String;

    iput-object v1, v2, Lhkz;->d:Ljava/lang/String;

    .line 2049
    iget-object v1, v0, Lhjw;->h:Ljava/lang/Long;

    .line 3044
    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 2049
    iput-wide v4, v2, Lhkz;->e:J

    .line 2050
    iget-object v1, v0, Lhjw;->d:Ljava/lang/String;

    iput-object v1, v2, Lhkz;->g:Ljava/lang/String;

    .line 2051
    iget-object v1, v0, Lhjw;->j:Ljava/lang/Boolean;

    .line 4022
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 2051
    iput-boolean v1, v2, Lhkz;->h:Z

    .line 2052
    iget-object v1, v0, Lhjw;->k:Ljava/lang/Integer;

    .line 4033
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 2052
    iput v1, v2, Lhkz;->i:I

    .line 2053
    iget-object v1, v0, Lhjw;->b:Ljava/lang/String;

    iput-object v1, v2, Lhkz;->k:Ljava/lang/String;

    .line 2055
    iget-object v1, v0, Lhjw;->l:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lhjw;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2056
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2057
    iput-object v4, v2, Lhkz;->j:Ljava/util/List;

    .line 2058
    iget-object v1, v0, Lhjw;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhjr;

    .line 2059
    if-eqz v1, :cond_3

    .line 2062
    invoke-static {v1}, Lhpu;->a(Lhjr;)Lhpu;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move-object v1, v2

    .line 2065
    goto/16 :goto_1

    .line 1148
    :cond_5
    const-wide/16 v0, 0x0

    invoke-static {v3, v0, v1}, Lhqo;->a(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;J)V

    goto/16 :goto_2

    .line 1150
    :cond_6
    sget-object v1, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->BEACON:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lhjw;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1152
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-static {v1, v2, v3}, Lcms;->a(Landroid/content/Context;J)V

    .line 1154
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lhqo$2;

    invoke-direct {v2, p0, v0}, Lhqo$2;-><init>(Lhqo;Lhjw;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 4339
    if-eqz v0, :cond_1

    .line 4340
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-object v0, v0, Lhjw;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v0

    .line 4341
    if-eqz v0, :cond_7

    .line 4342
    const-wide/16 v2, 0x0

    iget-wide v0, v0, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {v2, v3, v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitBeaconPerformanceSuccess(JJ)V

    goto/16 :goto_2

    .line 4344
    :cond_7
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitBeaconPerformanceSuccess(JJ)V

    goto/16 :goto_2

    .line 1164
    :cond_8
    sget-object v1, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->DING_ATM:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lhjw;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1165
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhqo;->a:Ljava/lang/String;

    const-string/jumbo v3, "ding atm checkin success"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-static {v1, v2, v3}, Lcms;->a(Landroid/content/Context;J)V

    .line 1169
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lhqo$3;

    invoke-direct {v2, p0, v0}, Lhqo$3;-><init>(Lhqo;Lhjw;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 5186
    :pswitch_1
    const-class v1, Lhjt;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lhqo;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 5187
    instance-of v1, v0, Lhjt;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 5188
    check-cast v1, Lhjt;

    .line 5189
    sget-object v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->AUTO_CHECK:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lhjt;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5190
    const-string/jumbo v0, "attendance"

    sget-object v2, Lhqo;->a:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "handleOACheckInFailure, remove planId:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lhjt;->d:Ljava/lang/Long;

    .line 5191
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " corpId:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v1, Lhjt;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, " code:"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, v1, Lhjt;->a:Ljava/lang/Integer;

    .line 5192
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 5190
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5195
    invoke-static {}, Lhkw;->a()Lhkw;

    move-result-object v0

    iget-object v2, v1, Lhjt;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lhkw;->b(J)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    .line 5197
    iget-object v0, v1, Lhjt;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "C0001|C0002|C42002"

    iget-object v2, v1, Lhjt;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, v1, Lhjt;->j:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lhjt;->j:Ljava/util/List;

    .line 5198
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 5199
    :cond_a
    invoke-static {}, Lhqo;->a()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 5200
    new-instance v2, Lhqo$4;

    invoke-direct {v2, p0, v1}, Lhqo$4;-><init>(Lhqo;Lhjt;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 5212
    :cond_b
    invoke-static {}, Lhkw;->a()Lhkw;

    move-result-object v0

    iget-object v2, v1, Lhjt;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 6189
    iget-object v0, v0, Lhkw;->a:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhky;

    .line 6190
    if-eqz v0, :cond_c

    .line 6421
    iget-object v0, v0, Lhky;->a:Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    .line 6192
    if-eqz v0, :cond_c

    .line 5213
    :goto_4
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v2

    iget-wide v4, v0, Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;->mPlanId:J

    invoke-virtual {v2, v4, v5}, Lhkx;->a(J)Ljava/lang/Long;

    move-result-object v2

    .line 5214
    if-eqz v2, :cond_d

    .line 5215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v4, v2

    invoke-static {v0, v1, v2, v3}, Lhqo;->a(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;Lhjt;J)V

    goto/16 :goto_0

    .line 6197
    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    .line 5217
    :cond_d
    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lhqo;->a(Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;Lhjt;J)V

    goto/16 :goto_0

    .line 5219
    :cond_e
    sget-object v0, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->BEACON:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lhjt;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5220
    const-string/jumbo v0, "attendance"

    sget-object v2, Lhqo;->a:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "handleOACheckInFailure code:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v1, Lhjt;->a:Ljava/lang/Integer;

    .line 5222
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", message:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v1, Lhjt;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 5221
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5220
    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7350
    if-eqz v1, :cond_0

    .line 7351
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-object v2, v1, Lhjt;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v4

    .line 7352
    if-eqz v4, :cond_10

    .line 7353
    if-eqz v1, :cond_f

    .line 7354
    const-string/jumbo v0, "124"

    iget-object v1, v1, Lhjt;->a:Ljava/lang/Integer;

    .line 7355
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget-wide v4, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    .line 7354
    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitBeaconPerformanceFailed(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto/16 :goto_0

    .line 7357
    :cond_f
    const-string/jumbo v0, "124"

    const-wide/16 v2, 0x0

    iget-wide v4, v4, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitBeaconPerformanceFailed(Ljava/lang/String;JJ)V

    goto/16 :goto_0

    .line 7360
    :cond_10
    if-eqz v1, :cond_11

    .line 7361
    const-string/jumbo v0, "124"

    iget-object v1, v1, Lhjt;->a:Ljava/lang/Integer;

    .line 7362
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    .line 7361
    invoke-static/range {v0 .. v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitBeaconPerformanceFailed(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto/16 :goto_0

    .line 7364
    :cond_11
    const-string/jumbo v0, "124"

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->doCommitBeaconPerformanceFailed(Ljava/lang/String;JJ)V

    goto/16 :goto_0

    .line 8232
    :pswitch_2
    const-class v1, Lhjp;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lhqo;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 8233
    instance-of v1, v0, Lhjp;

    if-eqz v1, :cond_0

    .line 8234
    check-cast v0, Lhjp;

    .line 8235
    sget-object v1, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->AUTO_CHECK:Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/idl/object/OAHostPushObject$SourceType;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lhjp;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 8236
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhqo;->a:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "handleOACheckInConfirm, remove planId:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lhjp;->e:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, " corpId:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v0, Lhjp;->g:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, ", recordId:"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, v0, Lhjp;->f:Ljava/lang/Long;

    .line 8237
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 8236
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8239
    invoke-static {}, Lhkw;->a()Lhkw;

    move-result-object v1

    iget-object v2, v0, Lhjp;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lhkw;->b(J)Lcom/alibaba/lightapp/runtime/idl/object/OACheckInPushObject;

    .line 8241
    invoke-static {}, Lhqo;->a()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 8242
    new-instance v2, Lhqo$5;

    invoke-direct {v2, p0, v0}, Lhqo$5;-><init>(Lhqo;Lhjp;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 8249
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v1

    iget-object v0, v0, Lhjp;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lhkx;->a(J)Ljava/lang/Long;

    goto/16 :goto_0

    .line 8251
    :cond_12
    const-string/jumbo v1, "attendance"

    sget-object v2, Lhqo;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "handleOACheckInConfirm source:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v0, v0, Lhjp;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1109
    :cond_13
    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V

    .line 1110
    :goto_5
    return-void

    .line 1112
    :cond_14
    const-string/jumbo v0, ""

    invoke-interface {p2, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 1090
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
