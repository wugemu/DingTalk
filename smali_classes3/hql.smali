.class public Lhql;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "HpmPushHandler.java"


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
    .line 32
    const-class v0, Lhql;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhql;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lclb;

    invoke-direct {p0, p1, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 42
    return-void
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
    .line 117
    .local p0, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 119
    .local v3, "ret":Ljava/lang/Object;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 122
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Liyo;

    new-instance v4, Lizk;

    array-length v5, p1

    invoke-direct {v4, v0, v5}, Lizk;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v4}, Liyo;-><init>(Lizj;)V

    .line 123
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

    .line 133
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    .end local v2    # "reader":Liyo;
    .end local v3    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 134
    .restart local v2    # "reader":Liyo;
    .restart local v3    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Liyo;
    :catch_1
    move-exception v1

    .line 126
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 134
    :catch_2
    move-exception v1

    .line 135
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 133
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 134
    :catch_4
    move-exception v1

    .line 135
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 133
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 134
    :catch_6
    move-exception v1

    .line 135
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 133
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 136
    :goto_1
    throw v4

    .line 134
    :catch_7
    move-exception v1

    .line 135
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(Lhiz;)V
    .locals 8
    .param p0, "pushModel"    # Lhiz;

    .prologue
    .line 97
    if-eqz p0, :cond_2

    .line 98
    iget-object v1, p0, Lhiz;->c:Ljava/util/List;

    .line 99
    .local v1, "appIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 100
    .local v2, "appsInfo":Ljava/lang/String;
    iget-object v4, p0, Lhiz;->b:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 101
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v4

    .line 1396
    iget-object v4, v4, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1397
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 1398
    :cond_0
    const-string/jumbo v2, ""

    .line 109
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v4

    invoke-virtual {v4, v2}, Lgvi;->hpmUpload(Ljava/lang/String;)V

    .line 113
    .end local v1    # "appIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "appsInfo":Ljava/lang/String;
    :cond_2
    return-void

    .line 1400
    .restart local v1    # "appIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "appsInfo":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 1401
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1402
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/alipay/android/h5appmanager/H5AppManager;->queryInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 1404
    :cond_4
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 102
    :cond_5
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 103
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 104
    .local v3, "infos":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    .local v0, "appId":Ljava/lang/String;
    invoke-static {}, Lhhy;->a()Lhhy;

    invoke-static {v0}, Lhhy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 107
    .end local v0    # "appId":Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 31
    check-cast p1, Lclb;

    .line 2046
    if-eqz p1, :cond_2

    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2048
    :try_start_0
    const-string/jumbo v0, "lightapp"

    sget-object v1, Lhql;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "onHpmPushHandlerReceived "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lclb;->a:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    .line 2050
    if-eqz v0, :cond_0

    iget-object v1, v0, Lclc;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lclc;->b:[B

    if-eqz v1, :cond_0

    .line 2051
    const-class v1, Lhiz;

    iget-object v3, v0, Lclc;->b:[B

    invoke-static {v1, v3}, Lhql;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhiz;

    .line 2052
    if-eqz v1, :cond_0

    .line 2053
    iget-object v0, v0, Lclc;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2078
    :pswitch_0
    if-eqz v1, :cond_0

    .line 2079
    iget-object v3, v1, Lhiz;->c:Ljava/util/List;

    .line 2080
    iget-object v0, v1, Lhiz;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2081
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v0

    .line 2956
    iget-object v4, v0, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 2957
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 2089
    :cond_1
    const-string/jumbo v4, "lightapp"

    sget-object v5, Lhql;->a:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v7, "bizType:"

    aput-object v7, v6, v0

    const/4 v0, 0x1

    iget-object v7, v1, Lhiz;->a:Ljava/lang/Integer;

    .line 2091
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x2

    const-string/jumbo v7, " all:"

    aput-object v7, v6, v0

    const/4 v0, 0x3

    iget-object v1, v1, Lhiz;->b:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x4

    const-string/jumbo v1, " appIds:"

    aput-object v1, v6, v0

    const/4 v1, 0x5

    if-eqz v3, :cond_5

    .line 2092
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v6, v1

    .line 2091
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2089
    invoke-static {v4, v5, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2067
    :catch_0
    move-exception v0

    .line 2069
    const-string/jumbo v1, "lightapp"

    sget-object v2, Lhql;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    :cond_2
    const-string/jumbo v0, "lightapp"

    sget-object v1, Lhql;->a:Ljava/lang/String;

    const-string/jumbo v2, "onHpmPushHandlerReceived handle failed!"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    const-string/jumbo v0, ""

    invoke-interface {p2, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a(Ljava/lang/String;)V

    .line 2066
    :goto_2
    return-void

    .line 2960
    :cond_3
    :try_start_1
    iget-object v0, v0, Lhhy;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2961
    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alipay/android/h5appmanager/H5AppManager;->removeLocalApp(Ljava/lang/String;)Z

    goto :goto_3

    .line 2082
    :cond_4
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2083
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2084
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v5

    invoke-virtual {v5, v0}, Lhhy;->h(Ljava/lang/String;)Z

    move-result v5

    .line 2085
    sget-object v6, Lhql;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "deleteHpmApp: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ";appId==="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2092
    :cond_5
    const-string/jumbo v0, ""

    goto/16 :goto_1

    .line 2058
    :pswitch_1
    invoke-static {v1}, Lhql;->a(Lhiz;)V

    goto/16 :goto_0

    .line 2064
    :cond_6
    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2053
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
