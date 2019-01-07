.class public final Lfvp;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "PromotionHandler.java"


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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "biz/promotion"

    invoke-direct {p0, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;)V

    .line 51
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
    .line 102
    .local p0, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 104
    .local v3, "ret":Ljava/lang/Object;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 107
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Liyo;

    new-instance v4, Lizk;

    array-length v5, p1

    invoke-direct {v4, v0, v5}, Lizk;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v4}, Liyo;-><init>(Lizj;)V

    .line 109
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

    .line 119
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    .end local v2    # "reader":Liyo;
    .end local v3    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 120
    .restart local v2    # "reader":Liyo;
    .restart local v3    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 111
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Liyo;
    :catch_1
    move-exception v1

    .line 112
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 120
    :catch_2
    move-exception v1

    .line 121
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 120
    :catch_4
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 119
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 120
    :catch_6
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 119
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 122
    :goto_1
    throw v4

    .line 120
    :catch_7
    move-exception v1

    .line 121
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lfvp;Lclc;II)V
    .locals 4
    .param p0, "x0"    # Lfvp;
    .param p1, "x1"    # Lclc;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    const/4 v1, 0x0

    .line 41
    const/16 v2, 0x3ed

    .line 1087
    if-eqz p1, :cond_1

    .line 1088
    const-class v0, Lcfq;

    iget-object v3, p1, Lclc;->b:[B

    invoke-static {v0, v3}, Lfvp;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 1091
    :goto_0
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcfq;

    if-eqz v3, :cond_0

    .line 1092
    check-cast v0, Lcfq;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/PromotionObject;->fromIDLModel(Lcfq;)Lcom/alibaba/android/dingtalk/userbase/model/PromotionObject;

    move-result-object v0

    .line 1094
    :goto_1
    invoke-static {}, Loi;->a()Loi;

    move-result-object v3

    invoke-virtual {v3, v2, v0, p3, v1}, Loi;->a(ILjava/lang/Object;ILjava/lang/String;)V

    .line 41
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 41
    check-cast p1, Lclb;

    .line 1056
    if-eqz p1, :cond_0

    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->a()Lcom/alibaba/aether/api/Aether;

    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfvp$1;

    invoke-direct {v1, p0, p1, p2}, Lfvp$1;-><init>(Lfvp;Lclb;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
