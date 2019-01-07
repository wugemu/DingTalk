.class public final Lbjb;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "DingPushHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lclb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingPushHandler]init"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method private static a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;
    .locals 6
    .param p0, "clazz"    # Ljava/lang/reflect/Type;
    .param p1, "bytes"    # [B

    .prologue
    .line 968
    const/4 v3, 0x0

    .line 969
    .local v3, "ret":Ljava/lang/Object;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 971
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Liyo;

    new-instance v4, Lizk;

    array-length v5, p1

    invoke-direct {v4, v0, v5}, Lizk;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v4}, Liyo;-><init>(Lizj;)V

    .line 972
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

    .line 981
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 986
    .end local v2    # "reader":Liyo;
    .end local v3    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 982
    .restart local v2    # "reader":Liyo;
    .restart local v3    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 983
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "convertBytes2Object failed"

    invoke-static {v4, v1}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 973
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Liyo;
    :catch_1
    move-exception v1

    .line 974
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v4, "convertBytes2Object failed"

    invoke-static {v4, v1}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 981
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 982
    :catch_2
    move-exception v1

    .line 983
    const-string/jumbo v4, "convertBytes2Object failed"

    invoke-static {v4, v1}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 975
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 976
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_4
    const-string/jumbo v4, "convertBytes2Object failed"

    invoke-static {v4, v1}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 981
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 982
    :catch_4
    move-exception v1

    .line 983
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "convertBytes2Object failed"

    invoke-static {v4, v1}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 977
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 978
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v4, "convertBytes2Object failed"

    invoke-static {v4, v1}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 981
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 982
    :catch_6
    move-exception v1

    .line 983
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "convertBytes2Object failed"

    invoke-static {v4, v1}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 980
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 981
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 984
    :goto_1
    throw v4

    .line 982
    :catch_7
    move-exception v1

    .line 983
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "convertBytes2Object failed"

    invoke-static {v5, v1}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Lclc;)V
    .locals 8
    .param p1, "model"    # Lclc;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 785
    const-class v2, Lbdf;

    iget-object v5, p1, Lclc;->b:[B

    invoke-static {v2, v5}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 786
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Lbdf;

    if-eqz v2, :cond_2

    .line 787
    check-cast v0, Lbdf;

    .line 3027
    .end local v0    # "o":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 3028
    if-eqz v0, :cond_1

    .line 3029
    new-instance v1, Lbfd;

    invoke-direct {v1}, Lbfd;-><init>()V

    .line 3030
    iget-object v2, v0, Lbdf;->a:Lazm;

    if-eqz v2, :cond_0

    .line 3031
    iget-object v2, v0, Lbdf;->a:Lazm;

    iget-object v2, v2, Lazm;->m:Ljava/lang/Integer;

    .line 4033
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 3031
    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v2

    .line 3032
    sget-object v5, Lbfd$1;->a:[I

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_0

    .line 3045
    :cond_0
    :goto_0
    iget-object v2, v0, Lbdf;->b:Ljava/lang/String;

    iput-object v2, v1, Lbfd;->b:Ljava/lang/String;

    .line 3046
    iget-object v2, v0, Lbdf;->c:Ljava/lang/Integer;

    .line 5033
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 3046
    iput v2, v1, Lbfd;->c:I

    .line 5054
    .local v1, "taskUpdatedPushObject":Lbfd;
    :cond_1
    iget-object v2, v1, Lbfd;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lbfd;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 788
    :goto_1
    if-eqz v2, :cond_4

    .line 789
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    .line 5467
    iget-object v5, v2, Lbbp;->b:Lbbp$a;

    new-instance v6, Lbbp$58;

    invoke-direct {v6, v2, v1}, Lbbp$58;-><init>(Lbbp;Lbfd;)V

    invoke-virtual {v5, v6}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 790
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v5, "push task modify: dingId:"

    aput-object v5, v2, v4

    .line 6058
    iget-object v4, v1, Lbfd;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 791
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 790
    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 796
    .end local v1    # "taskUpdatedPushObject":Lbfd;
    :cond_2
    :goto_2
    return-void

    .line 3034
    :pswitch_0
    new-instance v2, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    iget-object v5, v0, Lbdf;->a:Lazm;

    invoke-direct {v2, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;-><init>(Lazm;)V

    iput-object v2, v1, Lbfd;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    goto :goto_0

    .line 3038
    :pswitch_1
    new-instance v2, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v5, v0, Lbdf;->a:Lazm;

    invoke-direct {v2, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>(Lazm;)V

    iput-object v2, v1, Lbfd;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    goto :goto_0

    .restart local v1    # "taskUpdatedPushObject":Lbfd;
    :cond_3
    move v2, v4

    .line 5054
    goto :goto_1

    .line 793
    :cond_4
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v5, "push task modify data is invalid. dingObject = null or mUpdateAlarmNotice="

    aput-object v5, v2, v4

    .line 6062
    iget-object v4, v1, Lbfd;->b:Ljava/lang/String;

    .line 793
    aput-object v4, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_2

    .line 3032
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "dingId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 925
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    :goto_0
    return-void

    .line 929
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbjb$1;

    invoke-direct {v1, p0, p1}, Lbjb$1;-><init>(Lbjb;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 82
    check-cast p1, Lclb;

    .line 6163
    if-eqz p1, :cond_22

    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 6164
    iget-object v0, p1, Lclb;->b:Ljava/lang/Integer;

    .line 7033
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 6165
    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    .line 6166
    if-eqz v0, :cond_0

    iget-object v1, v0, Lclc;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lclc;->b:[B

    if-eqz v1, :cond_0

    .line 6167
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "[DingPushHandler] onReceived type="

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, v0, Lclc;->a:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 6168
    iget-object v1, v0, Lclc;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 7348
    :sswitch_0
    const-class v1, Lazn;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 7349
    if-eqz v0, :cond_0

    .line 7352
    check-cast v0, Lazn;

    .line 7353
    iget-object v1, v0, Lazn;->a:Lazm;

    if-eqz v1, :cond_0

    .line 7356
    iget-object v1, v0, Lazn;->a:Lazm;

    iget-object v1, v1, Lazm;->m:Ljava/lang/Integer;

    .line 8033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 7356
    invoke-static {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v1

    .line 7357
    sget-object v2, Lbjb$2;->a:[I

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 7359
    :pswitch_1
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    invoke-direct {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;-><init>(Lazn;)V

    .line 8118
    iput v3, v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->C:I

    .line 8384
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    .line 9284
    iget-object v2, v0, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$36;

    invoke-direct {v5, v0, v1}, Lbbp$36;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 8386
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "push ding:"

    aput-object v5, v0, v2

    const/4 v2, 0x1

    .line 8387
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;->D()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    const/4 v2, 0x2

    const-string/jumbo v5, ";"

    aput-object v5, v0, v2

    .line 8386
    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 7362
    invoke-static {}, Layv;->a()Layv;

    move-result-object v0

    invoke-virtual {v0, v1}, Layv;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto/16 :goto_0

    .line 7367
    :pswitch_2
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v2, v0, Lazn;->a:Lazm;

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>(Lazm;)V

    .line 7368
    iget-object v0, v0, Lazn;->b:Ljava/lang/Integer;

    .line 10033
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 7368
    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)V

    .line 10118
    iput v3, v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->C:I

    .line 10396
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    .line 11293
    iget-object v2, v0, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$37;

    invoke-direct {v5, v0, v1}, Lbbp$37;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDingSent;)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 10398
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "push myself ding:"

    aput-object v5, v0, v2

    const/4 v2, 0x1

    .line 10399
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->D()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    const/4 v2, 0x2

    const-string/jumbo v5, ";"

    aput-object v5, v0, v2

    .line 10398
    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 7372
    invoke-static {}, Layv;->a()Layv;

    move-result-object v0

    invoke-virtual {v0, v1}, Layv;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto/16 :goto_0

    .line 11405
    :sswitch_1
    const-class v1, Lazo;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 11406
    if-eqz v0, :cond_0

    .line 11410
    check-cast v0, Lazo;

    .line 11411
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-direct {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>(Lazo;)V

    .line 11412
    invoke-static {v1}, Lbkh;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11413
    iget-object v2, v0, Lazo;->a:Lazm;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lazo;->a:Lazm;

    iget-object v2, v2, Lazm;->t:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 11414
    iget-object v0, v0, Lazo;->a:Lazm;

    iget-object v0, v0, Lazm;->t:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)V

    .line 12118
    :cond_1
    iput v3, v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;->C:I

    .line 11419
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    .line 12302
    iget-object v2, v0, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$38;

    invoke-direct {v5, v0, v1}, Lbbp$38;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDingSent;)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 11420
    invoke-static {}, Layv;->a()Layv;

    move-result-object v0

    invoke-virtual {v0, v1}, Layv;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 11422
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "ding received send:"

    aput-object v5, v0, v2

    const/4 v2, 0x1

    .line 11423
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string/jumbo v2, ";"

    aput-object v2, v0, v1

    .line 11422
    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 12428
    :sswitch_2
    const-class v1, Lbch;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 12429
    if-eqz v0, :cond_0

    .line 12432
    check-cast v0, Lbch;

    .line 12433
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 13383
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$48;

    invoke-direct {v5, v1, v0, v3}, Lbbp$48;-><init>(Lbbp;Lbch;I)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 12435
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "ding confirmed by receiver:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v0, v0, Lbch;->a:Ljava/lang/Long;

    .line 12436
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string/jumbo v2, ";"

    aput-object v2, v1, v0

    .line 12435
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13441
    :sswitch_3
    const-class v1, Lbcw;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 13442
    if-eqz v0, :cond_0

    .line 13446
    check-cast v0, Lbcw;

    .line 13447
    iget-object v1, v0, Lbcw;->a:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 13448
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, v0, Lbcw;->a:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->ConfirmedFromApp:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    .line 14365
    iget-object v6, v1, Lbbp;->b:Lbbp$a;

    new-instance v7, Lbbp$46;

    invoke-direct {v7, v1, v2, v5}, Lbbp$46;-><init>(Lbbp;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;)V

    invoke-virtual {v6, v7}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 13452
    :cond_2
    iget-object v1, v0, Lbcw;->a:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbjb;->a(Ljava/lang/String;)V

    .line 13454
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "ding confirmed by myself:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v0, v0, Lbcw;->a:Ljava/lang/Long;

    .line 13455
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string/jumbo v2, ";"

    aput-object v2, v1, v0

    .line 13454
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 14460
    :sswitch_4
    const-class v1, Lbcp;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 14461
    if-eqz v0, :cond_0

    .line 14464
    check-cast v0, Lbcp;

    .line 14465
    iget-object v1, v0, Lbcp;->a:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 14466
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, v0, Lbcp;->a:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 15374
    iget-object v5, v1, Lbbp;->b:Lbbp$a;

    new-instance v6, Lbbp$47;

    invoke-direct {v6, v1, v2}, Lbbp$47;-><init>(Lbbp;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 14469
    :cond_3
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "ding completed:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v0, v0, Lbcp;->a:Ljava/lang/Long;

    .line 14470
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string/jumbo v2, ";"

    aput-object v2, v1, v0

    .line 14469
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 15475
    :sswitch_5
    const-class v1, Lazk;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 15476
    if-eqz v0, :cond_0

    .line 15479
    check-cast v0, Lazk;

    .line 15480
    iget-object v1, v0, Lazk;->a:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 15481
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 16311
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$39;

    invoke-direct {v5, v1, v0, v3}, Lbbp$39;-><init>(Lbbp;Lazk;I)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 15484
    :cond_4
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "push ding comment: dingId:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, v0, Lazk;->a:Ljava/lang/Long;

    .line 15485
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v5, ", commentId:"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v0, v0, Lazk;->b:Ljava/lang/Long;

    .line 15487
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string/jumbo v2, ";"

    aput-object v2, v1, v0

    .line 15484
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 16492
    :sswitch_6
    const-class v1, Lcfs;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 16493
    instance-of v1, v0, Lcfs;

    if-eqz v1, :cond_0

    .line 16494
    check-cast v0, Lcfs;

    .line 16495
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcfs;)V

    .line 16497
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "ding quota changed: total:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, v0, Lcfs;->c:Ljava/lang/Long;

    .line 16498
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v5, ", remain:"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v0, v0, Lcfs;->b:Ljava/lang/Long;

    .line 16500
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string/jumbo v2, ";"

    aput-object v2, v1, v0

    .line 16497
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 16538
    :sswitch_7
    const-class v1, Lbem;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 16539
    instance-of v1, v0, Lbem;

    if-eqz v1, :cond_0

    .line 16540
    check-cast v0, Lbem;

    .line 16541
    new-instance v1, Lbgl;

    invoke-direct {v1, v0}, Lbgl;-><init>(Lbem;)V

    .line 16542
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    .line 17347
    iget-object v5, v2, Lbbp;->b:Lbbp$a;

    new-instance v6, Lbbp$43;

    invoke-direct {v6, v2, v1}, Lbbp$43;-><init>(Lbbp;Lbgl;)V

    invoke-virtual {v5, v6}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 16544
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "ding status changed: dingId: ["

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, v0, Lbem;->a:Ljava/util/List;

    .line 16545
    invoke-static {v5}, Lbjp;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v5, "], oldStatus:"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v5, v0, Lbem;->b:Ljava/lang/Integer;

    .line 16547
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v5, ", newStatus:"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    iget-object v0, v0, Lbem;->c:Ljava/lang/Integer;

    .line 16549
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x6

    const-string/jumbo v2, ";"

    aput-object v2, v1, v0

    .line 16544
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 17506
    :sswitch_8
    const-class v1, Lbcy;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 17507
    instance-of v1, v0, Lbcy;

    if-eqz v1, :cond_0

    .line 17508
    check-cast v0, Lbcy;

    .line 17509
    new-instance v1, Lbex;

    invoke-direct {v1, v0}, Lbex;-><init>(Lbcy;)V

    .line 17510
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    .line 18329
    iget-object v5, v2, Lbbp;->b:Lbbp$a;

    new-instance v6, Lbbp$41;

    invoke-direct {v6, v2, v1}, Lbbp$41;-><init>(Lbbp;Lbex;)V

    invoke-virtual {v5, v6}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 17512
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "ding send status changed: dingId:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, v0, Lbcy;->a:Ljava/lang/Long;

    .line 17513
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v5, ", oldStatus:"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v5, v0, Lbcy;->b:Ljava/lang/Integer;

    .line 17515
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v5, ", newStatus:"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    iget-object v0, v0, Lbcy;->c:Ljava/lang/Integer;

    .line 17517
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x6

    const-string/jumbo v2, ";"

    aput-object v2, v1, v0

    .line 17512
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 18523
    :sswitch_9
    const-class v1, Lbci;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 18524
    instance-of v1, v0, Lbci;

    if-eqz v1, :cond_0

    .line 18525
    check-cast v0, Lbci;

    .line 18526
    new-instance v1, Lbfe;

    invoke-direct {v1, v0}, Lbfe;-><init>(Lbci;)V

    .line 18527
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    .line 19338
    iget-object v5, v2, Lbbp;->b:Lbbp$a;

    new-instance v6, Lbbp$42;

    invoke-direct {v6, v2, v1}, Lbbp$42;-><init>(Lbbp;Lbfe;)V

    invoke-virtual {v5, v6}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 18529
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "ding confirm status changed: dingId:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, v0, Lbci;->a:Ljava/lang/Long;

    .line 18530
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v5, ", newStatus:"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v0, v0, Lbci;->c:Ljava/lang/Integer;

    .line 18532
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string/jumbo v2, ";"

    aput-object v2, v1, v0

    .line 18529
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19584
    :sswitch_a
    const-class v1, Lazn;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 19585
    if-eqz v0, :cond_0

    .line 19588
    check-cast v0, Lazn;

    .line 19589
    iget-object v1, v0, Lazn;->a:Lazm;

    if-eqz v1, :cond_0

    .line 19590
    iget-object v1, v0, Lazn;->a:Lazm;

    iget-object v1, v1, Lazm;->m:Ljava/lang/Integer;

    .line 20033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 19590
    invoke-static {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v1

    .line 19591
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Sender:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    if-ne v1, v2, :cond_5

    .line 19592
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v2, v0, Lazn;->a:Lazm;

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>(Lazm;)V

    .line 19593
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 19602
    :goto_1
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "push ding deadline notice: dingId:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, v0, Lazn;->a:Lazm;

    iget-object v5, v5, Lazm;->a:Ljava/lang/Long;

    .line 19603
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v5, ", deadline:"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v5, v0, Lazn;->a:Lazm;

    iget-object v5, v5, Lazm;->z:Ljava/lang/Long;

    .line 19605
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v5, ", taskRemindTime:"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    iget-object v0, v0, Lazn;->a:Lazm;

    iget-object v0, v0, Lazm;->G:Ljava/lang/Long;

    .line 19607
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x6

    const-string/jumbo v2, ";"

    aput-object v2, v1, v0

    .line 19602
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 19594
    :cond_5
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Receiver:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    if-ne v2, v1, :cond_6

    .line 19595
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    iget-object v2, v0, Lazn;->a:Lazm;

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;-><init>(Lazm;)V

    .line 19596
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_1

    .line 19598
    :cond_6
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v2, v0, Lazn;->a:Lazm;

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>(Lazm;)V

    .line 19599
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_1

    .line 20613
    :sswitch_b
    const-class v1, Lbcq;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 20614
    instance-of v1, v0, Lbcq;

    if-eqz v1, :cond_0

    .line 20615
    check-cast v0, Lbcq;

    .line 20616
    new-instance v1, Lbev;

    invoke-direct {v1, v0}, Lbev;-><init>(Lbcq;)V

    .line 20617
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    .line 21401
    iget-object v5, v2, Lbbp;->b:Lbbp$a;

    new-instance v6, Lbbp$50;

    invoke-direct {v6, v2, v1}, Lbbp$50;-><init>(Lbbp;Lbev;)V

    invoke-virtual {v5, v6}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 20619
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "ding focus status changed: dingId:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, v0, Lbcq;->a:Ljava/lang/Long;

    .line 20620
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v5, ", isFocus:"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v0, v0, Lbcq;->c:Ljava/lang/Boolean;

    .line 20622
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string/jumbo v2, ";"

    aput-object v2, v1, v0

    .line 20619
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 21628
    :sswitch_c
    const-class v1, Lazn;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 21629
    if-eqz v0, :cond_0

    .line 21632
    check-cast v0, Lazn;

    .line 21633
    iget-object v1, v0, Lazn;->a:Lazm;

    if-eqz v1, :cond_0

    .line 21634
    iget-object v1, v0, Lazn;->a:Lazm;

    iget-object v1, v1, Lazm;->m:Ljava/lang/Integer;

    .line 22033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 21634
    invoke-static {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v1

    .line 21636
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Receiver:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    if-ne v1, v2, :cond_7

    .line 21637
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    iget-object v2, v0, Lazn;->a:Lazm;

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;-><init>(Lazm;)V

    .line 21638
    invoke-static {}, Layv;->a()Layv;

    move-result-object v2

    invoke-virtual {v2, v1}, Layv;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 21643
    :goto_2
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    .line 22410
    iget-object v5, v2, Lbbp;->b:Lbbp$a;

    new-instance v6, Lbbp$51;

    invoke-direct {v6, v2, v1}, Lbbp$51;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v5, v6}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 21644
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "ding receiver list changed: dingId:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, v0, Lazn;->a:Lazm;

    iget-object v5, v5, Lazm;->a:Ljava/lang/Long;

    .line 21645
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v5, ", receiver list:["

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v0, v0, Lazn;->a:Lazm;

    iget-object v0, v0, Lazm;->E:Ljava/util/List;

    .line 21647
    invoke-static {v0}, Lbjp;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string/jumbo v2, "];"

    aput-object v2, v1, v0

    .line 21644
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 21640
    :cond_7
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v2, v0, Lazn;->a:Lazm;

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>(Lazm;)V

    .line 21641
    invoke-static {}, Layv;->a()Layv;

    move-result-object v2

    invoke-virtual {v2, v1}, Layv;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_2

    .line 22653
    :sswitch_d
    const-class v1, Lazk;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 22654
    if-eqz v0, :cond_0

    .line 22657
    check-cast v0, Lazk;

    .line 22658
    iget-object v1, v0, Lazk;->a:Ljava/lang/Long;

    if-eqz v1, :cond_8

    .line 22659
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 23320
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$40;

    invoke-direct {v5, v1, v0}, Lbbp$40;-><init>(Lbbp;Lazk;)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 22662
    :cond_8
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "ding comment deleted: dingId:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, v0, Lazk;->a:Ljava/lang/Long;

    .line 22663
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v5, ", commentId:"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v0, v0, Lazk;->b:Ljava/lang/Long;

    .line 22665
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string/jumbo v2, ";"

    aput-object v2, v1, v0

    .line 22662
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23800
    :sswitch_e
    const-class v1, Lbck;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 23801
    instance-of v1, v0, Lbck;

    if-eqz v1, :cond_0

    .line 23802
    check-cast v0, Lbck;

    .line 24029
    if-nez v0, :cond_9

    .line 24030
    const/4 v0, 0x0

    .line 26042
    :goto_3
    iget-wide v6, v0, Lber;->a:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_a

    const/4 v1, 0x1

    .line 23803
    :goto_4
    if-eqz v1, :cond_b

    .line 23804
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 26485
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$60;

    invoke-direct {v5, v1, v0}, Lbbp$60;-><init>(Lbbp;Lber;)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 23805
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "push task deadline modify: dingId:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    .line 27020
    iget-wide v6, v0, Lber;->a:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 23806
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 23805
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 24033
    :cond_9
    new-instance v1, Lber;

    invoke-direct {v1}, Lber;-><init>()V

    .line 24034
    iget-object v2, v0, Lbck;->a:Ljava/lang/Long;

    .line 24044
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 24034
    iput-wide v6, v1, Lber;->a:J

    .line 24035
    iget-object v2, v0, Lbck;->b:Ljava/lang/Long;

    .line 25044
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 24035
    iput-wide v6, v1, Lber;->b:J

    .line 24036
    iget-object v0, v0, Lbck;->c:Ljava/lang/Integer;

    .line 26033
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 24036
    iput v0, v1, Lber;->c:I

    move-object v0, v1

    .line 24038
    goto :goto_3

    .line 26042
    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 23808
    :cond_b
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "push task deadline modify data is invalid. object="

    aput-object v5, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lber;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 27670
    :sswitch_f
    const-class v1, Lazp;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 27671
    if-eqz v0, :cond_0

    .line 27674
    check-cast v0, Lazp;

    .line 27675
    iget-object v1, v0, Lazp;->a:Ljava/lang/Long;

    if-eqz v1, :cond_c

    .line 27676
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 28419
    if-eqz v0, :cond_c

    .line 28422
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$52;

    invoke-direct {v5, v1, v0}, Lbbp$52;-><init>(Lbbp;Lazp;)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 27679
    :cond_c
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "ding meeting status change: dingId:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, v0, Lazp;->a:Ljava/lang/Long;

    .line 27680
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v5, ", status:"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v5, v0, Lazp;->d:Ljava/lang/Integer;

    .line 27682
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v5, " ,positiveCount:"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    iget-object v5, v0, Lazp;->f:Ljava/lang/Integer;

    .line 27683
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v5, " ,unResponseCount:"

    aput-object v5, v1, v2

    const/4 v2, 0x7

    iget-object v0, v0, Lazp;->g:Ljava/lang/Integer;

    .line 27684
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 27679
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 28688
    :sswitch_10
    const-class v1, Lazn;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 28689
    if-eqz v0, :cond_0

    .line 28692
    check-cast v0, Lazn;

    .line 28693
    iget-object v1, v0, Lazn;->a:Lazm;

    if-eqz v1, :cond_0

    .line 28694
    iget-object v1, v0, Lazn;->a:Lazm;

    iget-object v1, v1, Lazm;->m:Ljava/lang/Integer;

    .line 29033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 28694
    invoke-static {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v1

    .line 28695
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Sender:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    if-ne v1, v2, :cond_d

    .line 28696
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v2, v0, Lazn;->a:Lazm;

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>(Lazm;)V

    .line 28697
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbbp;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 28706
    :goto_5
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "push invitation alarm notice: dingId:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, v0, Lazn;->a:Lazm;

    iget-object v5, v5, Lazm;->a:Ljava/lang/Long;

    .line 28707
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v5, ", invitationRemindTime:"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v0, v0, Lazn;->a:Lazm;

    iget-object v0, v0, Lazm;->G:Ljava/lang/Long;

    .line 28709
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string/jumbo v2, ";"

    aput-object v2, v1, v0

    .line 28706
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 28698
    :cond_d
    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Receiver:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    if-ne v2, v1, :cond_e

    .line 28699
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    iget-object v2, v0, Lazn;->a:Lazm;

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;-><init>(Lazm;)V

    .line 28700
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbbp;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_5

    .line 28702
    :cond_e
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v2, v0, Lazn;->a:Lazm;

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>(Lazm;)V

    .line 28703
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbbp;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto :goto_5

    .line 29718
    :sswitch_11
    const-class v1, Lbdn;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 29719
    instance-of v1, v0, Lbdn;

    if-eqz v1, :cond_0

    .line 29720
    check-cast v0, Lbdn;

    invoke-static {v0}, Lbfq;->a(Lbdn;)Lbfq;

    move-result-object v0

    .line 29721
    invoke-virtual {v0}, Lbfq;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 29722
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 30440
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$54;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v0, v6}, Lbbp$54;-><init>(Lbbp;Lbfq;Z)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 29723
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "push invitation modify: dingId:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    .line 31056
    iget-object v0, v0, Lbfq;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 29724
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 29723
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 29726
    :cond_f
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "push Invitation modify data is invalid. dingObject = null or mUpdateAlarmNotice="

    aput-object v5, v1, v2

    const/4 v2, 0x1

    .line 31060
    iget-object v0, v0, Lbfq;->b:Ljava/lang/String;

    .line 29726
    aput-object v0, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 31817
    :sswitch_12
    const-class v1, Lbdn;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 31818
    instance-of v1, v0, Lbdn;

    if-eqz v1, :cond_0

    .line 31819
    check-cast v0, Lbdn;

    invoke-static {v0}, Lbfq;->a(Lbdn;)Lbfq;

    move-result-object v0

    .line 31820
    invoke-virtual {v0}, Lbfq;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 31821
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 32458
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$57;

    invoke-direct {v5, v1, v0}, Lbbp$57;-><init>(Lbbp;Lbfq;)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 31822
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "push invitation cancel: dingId:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    .line 33056
    iget-object v0, v0, Lbfq;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 31823
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 31822
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 31825
    :cond_10
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "push invitation cancel data is invalid. dingObject = null or mUpdateAlarmNotice="

    aput-object v5, v1, v2

    const/4 v2, 0x1

    .line 33060
    iget-object v0, v0, Lbfq;->b:Ljava/lang/String;

    .line 31825
    aput-object v0, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 33834
    :sswitch_13
    const-class v1, Lazp;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 33835
    if-eqz v0, :cond_0

    .line 33838
    check-cast v0, Lazp;

    .line 33839
    iget-object v1, v0, Lazp;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 33842
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 34494
    if-eqz v0, :cond_11

    .line 34497
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$61;

    invoke-direct {v5, v1, v0}, Lbbp$61;-><init>(Lbbp;Lazp;)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 33843
    :cond_11
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "ding checkIn status change: dingId:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, v0, Lazp;->a:Ljava/lang/Long;

    .line 33844
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v5, ", status:"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v5, v0, Lazp;->d:Ljava/lang/Integer;

    .line 33846
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v5, " ,positiveCount:"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    iget-object v5, v0, Lazp;->f:Ljava/lang/Integer;

    .line 33847
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v5, " ,unResponseCount:"

    aput-object v5, v1, v2

    const/4 v2, 0x7

    iget-object v0, v0, Lazp;->g:Ljava/lang/Integer;

    .line 33848
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 33843
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 34855
    :sswitch_14
    const-class v1, Lbcf;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 34856
    if-eqz v0, :cond_0

    .line 34859
    check-cast v0, Lbcf;

    .line 34860
    iget-object v1, v0, Lbcf;->b:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 34863
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 35506
    if-eqz v0, :cond_12

    .line 35509
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$62;

    invoke-direct {v5, v1, v0}, Lbbp$62;-><init>(Lbbp;Lbcf;)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 34864
    :cond_12
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "ding general remind: type:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, v0, Lbcf;->a:Ljava/lang/Integer;

    .line 34865
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v5, ", dingId:"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v5, v0, Lbcf;->b:Ljava/lang/Long;

    .line 34867
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v5, ", title:"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    iget-object v5, v0, Lbcf;->c:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v5, ", content:"

    aput-object v5, v1, v2

    const/4 v2, 0x7

    iget-object v5, v0, Lbcf;->d:Ljava/util/List;

    .line 34871
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v5, ", actText:"

    aput-object v5, v1, v2

    const/16 v2, 0x9

    iget-object v5, v0, Lbcf;->e:Ljava/util/List;

    .line 34873
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v5, ", actUrl:"

    aput-object v5, v1, v2

    const/16 v2, 0xb

    iget-object v0, v0, Lbcf;->f:Ljava/util/List;

    .line 34875
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 34864
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6233
    :sswitch_15
    invoke-direct {p0, v0}, Lbjb;->a(Lclc;)V

    goto/16 :goto_0

    .line 35559
    :sswitch_16
    const-class v1, Lbcz;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 35560
    instance-of v1, v0, Lbcz;

    if-eqz v1, :cond_0

    .line 35562
    check-cast v0, Lbcz;

    .line 36033
    if-nez v0, :cond_13

    .line 36034
    const/4 v0, 0x0

    .line 35563
    :goto_6
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 38356
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$44;

    invoke-direct {v5, v1, v0}, Lbbp$44;-><init>(Lbbp;Lbey;)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 35564
    if-eqz v0, :cond_0

    .line 35565
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "onDingSubTaskCountUpdate dingIds: ["

    aput-object v5, v1, v2

    const/4 v2, 0x1

    .line 39020
    iget-wide v6, v0, Lbey;->a:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 35566
    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v5, "], subTaskCount:"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    .line 39024
    iget v0, v0, Lbey;->b:I

    .line 35568
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 35565
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 36037
    :cond_13
    new-instance v1, Lbey;

    invoke-direct {v1}, Lbey;-><init>()V

    .line 36038
    iget-object v2, v0, Lbcz;->a:Ljava/lang/Long;

    .line 36044
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 36038
    iput-wide v6, v1, Lbey;->a:J

    .line 36039
    iget-object v2, v0, Lbcz;->b:Ljava/lang/Integer;

    .line 37033
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 36039
    iput v2, v1, Lbey;->b:I

    .line 36040
    iget-object v0, v0, Lbcz;->c:Ljava/lang/Integer;

    .line 38033
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 36040
    iput v0, v1, Lbey;->c:I

    move-object v0, v1

    .line 36042
    goto :goto_6

    .line 39577
    :sswitch_17
    const-class v1, Lbdt;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 39578
    instance-of v1, v0, Lbdt;

    if-eqz v1, :cond_0

    .line 39579
    invoke-static {}, Lbhi;->a()Lbhi;

    move-result-object v1

    check-cast v0, Lbdt;

    invoke-static {v0}, Lbfv;->a(Lbdt;)Lbfv;

    move-result-object v0

    .line 40066
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lbhi;->a(Lbfv;Z)V

    goto/16 :goto_0

    .line 6242
    :sswitch_18
    invoke-direct {p0, v0}, Lbjb;->a(Lclc;)V

    goto/16 :goto_0

    .line 40333
    :sswitch_19
    const-class v1, Lbcv;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 40334
    if-eqz v0, :cond_0

    .line 40337
    check-cast v0, Lbcv;

    .line 41021
    if-nez v0, :cond_14

    .line 41022
    const/4 v0, 0x0

    .line 40339
    :goto_7
    if-nez v0, :cond_15

    .line 40340
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingPushHandler] onNextRemindTimeUpdate data is null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 41024
    :cond_14
    new-instance v1, Lbew;

    invoke-direct {v1}, Lbew;-><init>()V

    .line 41025
    iget-object v2, v0, Lbcv;->a:Ljava/lang/Long;

    .line 41044
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 41025
    iput-wide v6, v1, Lbew;->a:J

    .line 41026
    iget-object v2, v0, Lbcv;->b:Ljava/lang/Long;

    .line 42044
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 41026
    iput-wide v6, v1, Lbew;->b:J

    .line 41027
    iget-object v0, v0, Lbcv;->c:Ljava/lang/Integer;

    .line 43033
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 41027
    iput v0, v1, Lbew;->c:I

    move-object v0, v1

    .line 41028
    goto :goto_7

    .line 40343
    :cond_15
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 43206
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$12;

    invoke-direct {v5, v1, v0}, Lbbp$12;-><init>(Lbbp;Lbew;)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 43285
    :sswitch_1a
    const-class v1, Lbdj;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 43286
    if-eqz v0, :cond_0

    .line 43290
    check-cast v0, Lbdj;

    .line 44032
    if-nez v0, :cond_16

    .line 44033
    const/4 v0, 0x0

    .line 43292
    :goto_8
    if-nez v0, :cond_17

    .line 43293
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingPushHandler] onTaskFinishCountChange data is null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 44036
    :cond_16
    new-instance v1, Lbfl;

    invoke-direct {v1}, Lbfl;-><init>()V

    .line 44037
    iget-object v2, v0, Lbdj;->a:Ljava/lang/Long;

    .line 44044
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 44037
    iput-wide v6, v1, Lbfl;->a:J

    .line 44038
    iget-object v2, v0, Lbdj;->b:Ljava/lang/Integer;

    .line 45033
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 44038
    iput v2, v1, Lbfl;->b:I

    .line 44039
    iget-object v0, v0, Lbdj;->c:Ljava/lang/Long;

    .line 45044
    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 44039
    iput-wide v6, v1, Lbfl;->c:J

    move-object v0, v1

    .line 44041
    goto :goto_8

    .line 43297
    :cond_17
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 45233
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$16;

    invoke-direct {v5, v1, v0}, Lbbp$16;-><init>(Lbbp;Lbfl;)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 45302
    :sswitch_1b
    const-class v1, Lbeb;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 45303
    if-eqz v0, :cond_0

    .line 45307
    check-cast v0, Lbeb;

    .line 46033
    if-nez v0, :cond_18

    .line 46034
    const/4 v0, 0x0

    .line 45309
    :goto_9
    if-nez v0, :cond_19

    .line 45310
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingPushHandler] onTaskFinishPush data is null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 46037
    :cond_18
    new-instance v1, Lbga;

    invoke-direct {v1}, Lbga;-><init>()V

    .line 46038
    iget-object v2, v0, Lbeb;->a:Ljava/lang/Long;

    .line 46044
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 46038
    iput-wide v6, v1, Lbga;->a:J

    .line 46039
    iget-object v2, v0, Lbeb;->b:Ljava/lang/Long;

    .line 47044
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 46039
    iput-wide v6, v1, Lbga;->b:J

    .line 46040
    iget-object v0, v0, Lbeb;->c:Ljava/lang/Integer;

    .line 48033
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 46040
    iput v0, v1, Lbga;->c:I

    move-object v0, v1

    .line 46041
    goto :goto_9

    .line 45313
    :cond_19
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 48215
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$14;

    invoke-direct {v5, v1, v0}, Lbbp$14;-><init>(Lbbp;Lbga;)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 48318
    :sswitch_1c
    const-class v1, Lbed;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 48319
    if-eqz v0, :cond_0

    .line 48323
    check-cast v0, Lbed;

    .line 49033
    if-nez v0, :cond_1a

    .line 49034
    const/4 v0, 0x0

    .line 48325
    :goto_a
    if-nez v0, :cond_1b

    .line 48326
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingPushHandler] onTaskSelfFinishPush data is null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 49037
    :cond_1a
    new-instance v1, Lbgc;

    invoke-direct {v1}, Lbgc;-><init>()V

    .line 49038
    iget-object v2, v0, Lbed;->a:Ljava/lang/Long;

    .line 49044
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 49038
    iput-wide v6, v1, Lbgc;->a:J

    .line 49039
    iget-object v2, v0, Lbed;->c:Ljava/lang/Long;

    .line 50044
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 49039
    iput-wide v6, v1, Lbgc;->c:J

    .line 49040
    iget-object v0, v0, Lbed;->b:Ljava/lang/Integer;

    .line 50045
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 49040
    iput v0, v1, Lbgc;->b:I

    move-object v0, v1

    .line 49041
    goto :goto_a

    .line 48329
    :cond_1b
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 50046
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$15;

    invoke-direct {v5, v1, v0}, Lbbp$15;-><init>(Lbbp;Lbgc;)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 50053
    :sswitch_1d
    const-class v1, Lbcu;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 50054
    if-eqz v0, :cond_0

    .line 50057
    check-cast v0, Lbcu;

    .line 50058
    iget-object v1, v0, Lbcu;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 50061
    invoke-static {}, Lbbv;->a()Lbbv;

    invoke-static {v0}, Lbbv;->a(Lbcu;)V

    .line 50062
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "push ding later remind, dingId:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v0, v0, Lbcu;->a:Ljava/lang/Long;

    .line 50063
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 50062
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 50065
    :sswitch_1e
    const-class v1, Lbcm;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 50066
    if-eqz v0, :cond_0

    .line 50069
    check-cast v0, Lbcm;

    .line 50070
    iget-object v1, v0, Lbcm;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 50088
    if-nez v0, :cond_1d

    .line 50089
    const/4 v1, 0x0

    move-object v2, v1

    .line 50075
    :goto_b
    if-eqz v2, :cond_0

    .line 50100
    iget-wide v6, v2, Lbet;->a:J

    .line 50075
    invoke-static {v6, v7}, Lbkh;->a(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50079
    invoke-static {}, Lbbr;->a()Lbbr;

    move-result-object v5

    .line 50101
    if-eqz v2, :cond_1c

    .line 50116
    iget-wide v6, v2, Lbet;->a:J

    .line 50105
    invoke-static {v6, v7}, Lbkh;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 50109
    iget-object v1, v5, Lbbr;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50117
    iget-wide v6, v2, Lbet;->a:J

    .line 50109
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbet;

    .line 50110
    if-nez v1, :cond_1e

    .line 50111
    iget-object v1, v5, Lbbr;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50118
    iget-wide v6, v2, Lbet;->a:J

    .line 50111
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50122
    :cond_1c
    :goto_c
    iget-wide v6, v2, Lbet;->a:J

    .line 50080
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbjb;->a(Ljava/lang/String;)V

    .line 50083
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "push onDisappearPopupWindow, dingId:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, v0, Lbcm;->a:Ljava/lang/Long;

    .line 50084
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v5, ", timestamp:"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v0, v0, Lbcm;->b:Ljava/lang/Long;

    .line 50086
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 50083
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 50092
    :cond_1d
    new-instance v1, Lbet;

    invoke-direct {v1}, Lbet;-><init>()V

    .line 50093
    iget-object v2, v0, Lbcm;->a:Ljava/lang/Long;

    .line 50097
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 50093
    iput-wide v6, v1, Lbet;->a:J

    .line 50094
    iget-object v2, v0, Lbcm;->b:Ljava/lang/Long;

    .line 50098
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 50094
    iput-wide v6, v1, Lbet;->b:J

    .line 50095
    iget-object v2, v0, Lbcm;->c:Ljava/lang/Integer;

    .line 50099
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 50095
    iput v2, v1, Lbet;->c:I

    move-object v2, v1

    .line 50096
    goto/16 :goto_b

    .line 50119
    :cond_1e
    iget-wide v6, v2, Lbet;->b:J

    .line 50120
    iput-wide v6, v1, Lbet;->b:J

    goto :goto_c

    .line 50123
    :sswitch_1f
    const-class v1, Lbeg;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 50124
    instance-of v1, v0, Lbeg;

    if-eqz v1, :cond_0

    .line 50125
    check-cast v0, Lbeg;

    .line 50135
    const/4 v1, 0x0

    .line 50137
    if-eqz v0, :cond_23

    .line 50138
    new-instance v1, Lbgf;

    invoke-direct {v1}, Lbgf;-><init>()V

    .line 50139
    iget-object v2, v0, Lbeg;->a:Lazm;

    if-eqz v2, :cond_1f

    .line 50140
    iget-object v2, v0, Lbeg;->a:Lazm;

    iget-object v2, v2, Lazm;->m:Ljava/lang/Integer;

    .line 50157
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 50140
    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v2

    .line 50141
    sget-object v5, Lbgf$1;->a:[I

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_1

    .line 50153
    :cond_1f
    :goto_d
    iget-object v0, v0, Lbeg;->b:Ljava/lang/Integer;

    .line 50158
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 50153
    iput v0, v1, Lbgf;->b:I

    move-object v0, v1

    .line 50159
    :goto_e
    iget-object v1, v0, Lbgf;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 50126
    if-eqz v1, :cond_20

    .line 50127
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 50160
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v5, Lbbp$59;

    invoke-direct {v5, v1, v0}, Lbbp$59;-><init>(Lbbp;Lbgf;)V

    invoke-virtual {v2, v5}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 50128
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "push task updated: dingId:"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    .line 50167
    iget-object v0, v0, Lbgf;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 50129
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 50128
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 50143
    :pswitch_3
    new-instance v2, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    iget-object v5, v0, Lbeg;->a:Lazm;

    invoke-direct {v2, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;-><init>(Lazm;)V

    iput-object v2, v1, Lbgf;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    goto :goto_d

    .line 50147
    :pswitch_4
    new-instance v2, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    iget-object v5, v0, Lbeg;->a:Lazm;

    invoke-direct {v2, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>(Lazm;)V

    iput-object v2, v1, Lbgf;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    goto :goto_d

    .line 50131
    :cond_20
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "push task updated: dingObject = null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 50168
    :sswitch_20
    const-class v1, Lazm;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 50169
    instance-of v1, v0, Lazm;

    if-eqz v1, :cond_0

    .line 50173
    check-cast v0, Lazm;

    .line 50174
    iget-object v1, v0, Lazm;->m:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v1

    .line 50175
    sget-object v2, Lbjb$2;->a:[I

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    .line 50183
    :pswitch_5
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    invoke-direct {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;-><init>(Lazm;)V

    .line 50184
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "push onInvitationSilentModify: dingId:"

    aput-object v5, v0, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;->D()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 50185
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbbp;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto/16 :goto_0

    .line 50178
    :pswitch_6
    new-instance v1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-direct {v1, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>(Lazm;)V

    .line 50179
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "push onInvitationSilentModify: dingId:"

    aput-object v5, v0, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->D()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 50180
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbbp;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    goto/16 :goto_0

    .line 50192
    :sswitch_21
    const-class v1, Lbdr;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v1, v0}, Lbjb;->a(Ljava/lang/reflect/Type;[B)Ljava/lang/Object;

    move-result-object v0

    .line 50193
    instance-of v1, v0, Lbdr;

    if-eqz v1, :cond_0

    .line 50197
    check-cast v0, Lbdr;

    .line 50198
    invoke-static {v0}, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;->from(Lbdr;)Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;

    move-result-object v0

    .line 50199
    if-eqz v0, :cond_0

    .line 50202
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "[DingPushHandler] onMeetingExtensionChanged "

    aput-object v5, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/alibaba/android/ding/data/object/MeetingExtensionChangedObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 50205
    if-eqz v0, :cond_0

    .line 50208
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.ding.meeting.extension.changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50209
    const-string/jumbo v2, "intent_key_meeting_extension_changed"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 50210
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 6277
    :cond_21
    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V

    .line 6278
    :goto_f
    return-void

    .line 6280
    :cond_22
    const-string/jumbo v0, ""

    invoke-interface {p2, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a(Ljava/lang/String;)V

    goto :goto_f

    :cond_23
    move-object v0, v1

    goto/16 :goto_e

    .line 6168
    .line 7357
    .line 50141
    .line 50175
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_1
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xc -> :sswitch_9
        0x11 -> :sswitch_a
        0x12 -> :sswitch_b
        0x13 -> :sswitch_c
        0x14 -> :sswitch_d
        0x15 -> :sswitch_e
        0x16 -> :sswitch_f
        0x17 -> :sswitch_10
        0x18 -> :sswitch_11
        0x19 -> :sswitch_12
        0x1a -> :sswitch_13
        0x1b -> :sswitch_14
        0x1c -> :sswitch_15
        0x1e -> :sswitch_16
        0x1f -> :sswitch_17
        0x20 -> :sswitch_18
        0x21 -> :sswitch_19
        0x22 -> :sswitch_1a
        0x23 -> :sswitch_1b
        0x24 -> :sswitch_1c
        0x25 -> :sswitch_1d
        0x2b -> :sswitch_1c
        0x2c -> :sswitch_1e
        0x2d -> :sswitch_1f
        0x2e -> :sswitch_20
        0x3e8 -> :sswitch_21
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
