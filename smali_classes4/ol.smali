.class public final Lol;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "OAHandler.java"


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
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;)V

    .line 27
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
    .line 67
    .local p0, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 69
    .local v3, "ret":Ljava/lang/Object;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 72
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Liyo;

    new-instance v4, Lizk;

    array-length v5, p1

    invoke-direct {v4, v0, v5}, Lizk;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v4}, Liyo;-><init>(Lizj;)V

    .line 74
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

    .line 84
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    .end local v2    # "reader":Liyo;
    .end local v3    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 85
    .restart local v2    # "reader":Liyo;
    .restart local v3    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Liyo;
    :catch_1
    move-exception v1

    .line 77
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 85
    :catch_2
    move-exception v1

    .line 86
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 85
    :catch_4
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 84
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 85
    :catch_6
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 84
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 87
    :goto_1
    throw v4

    .line 85
    :catch_7
    move-exception v1

    .line 86
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 21
    check-cast p1, Lclb;

    .line 1031
    if-eqz p1, :cond_3

    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1032
    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    .line 1034
    if-eqz v0, :cond_0

    iget-object v3, v0, Lclc;->a:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lclc;->b:[B

    if-eqz v3, :cond_0

    .line 1035
    iget-object v3, v0, Lclc;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1048
    :pswitch_0
    if-eqz v0, :cond_4

    .line 1049
    const-class v3, Lcfh;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v3, v0}, Lol;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 1052
    :goto_1
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcfh;

    if-eqz v3, :cond_1

    .line 1053
    check-cast v0, Lcfh;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;->fromIDLModel(Lcfh;)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;

    move-result-object v0

    .line 1058
    :goto_2
    invoke-static {}, Loi;->a()Loi;

    move-result-object v3

    const/16 v4, 0x3ea

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v1}, Loi;->a(ILjava/lang/Object;ILjava/lang/String;)V

    goto :goto_0

    .line 1055
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;-><init>()V

    .line 1056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;->time:J

    goto :goto_2

    .line 1042
    :cond_2
    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V

    .line 21
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 1035
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
