.class public final Lexr;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "ConfPushPostHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lclb;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcjo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcjp;

    invoke-direct {v0}, Lcjp;-><init>()V

    iput-object v0, p0, Lexr;->a:Lcjo;

    .line 35
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
    .line 109
    .local p0, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 111
    .local v3, "ret":Ljava/lang/Object;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 114
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Liyo;

    new-instance v4, Lizk;

    array-length v5, p1

    invoke-direct {v4, v0, v5}, Lizk;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v4}, Liyo;-><init>(Lizj;)V

    .line 115
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

    .line 125
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    .end local v2    # "reader":Liyo;
    .end local v3    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 126
    .restart local v2    # "reader":Liyo;
    .restart local v3    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Liyo;
    :catch_1
    move-exception v1

    .line 118
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 126
    :catch_2
    move-exception v1

    .line 127
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 125
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 126
    :catch_4
    move-exception v1

    .line 127
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 121
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 125
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 126
    :catch_6
    move-exception v1

    .line 127
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 125
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 128
    :goto_1
    throw v4

    .line 126
    :catch_7
    move-exception v1

    .line 127
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 28
    check-cast p1, Lclb;

    .line 1040
    if-eqz p1, :cond_2

    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1042
    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    .line 1044
    if-eqz v0, :cond_0

    iget-object v2, v0, Lclc;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lclc;->b:[B

    if-eqz v2, :cond_0

    .line 1045
    iget-object v2, v0, Lclc;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1047
    :sswitch_0
    const-class v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v2, v0}, Lexr;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 1048
    instance-of v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;

    if-eqz v2, :cond_0

    .line 1050
    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfChangedModel;

    .line 1051
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3, v0, v4, v5}, Leyn;->a(ILjava/lang/Object;ILjava/lang/String;)V

    goto :goto_0

    .line 1055
    :sswitch_1
    const-class v2, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v2, v0}, Lexr;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 1056
    instance-of v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;

    if-eqz v2, :cond_0

    .line 1058
    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/MemberChangedModel;

    .line 1059
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v2

    const/16 v3, 0x7d1

    invoke-virtual {v2, v3, v0, v4, v5}, Leyn;->a(ILjava/lang/Object;ILjava/lang/String;)V

    goto :goto_0

    .line 1063
    :sswitch_2
    const-class v2, Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v2, v0}, Lexr;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 1064
    instance-of v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;

    if-eqz v2, :cond_0

    .line 1066
    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/StatusChangedModel;

    .line 1067
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v2

    const/16 v3, 0x7d2

    invoke-virtual {v2, v3, v0, v4, v5}, Leyn;->a(ILjava/lang/Object;ILjava/lang/String;)V

    goto :goto_0

    .line 1071
    :sswitch_3
    const-class v2, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v2, v0}, Lexr;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 1072
    instance-of v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;

    if-eqz v2, :cond_0

    .line 1073
    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfErrorPushModle;

    .line 1074
    invoke-static {}, Leyn;->a()Leyn;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3, v0, v4, v5}, Leyn;->a(ILjava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1097
    :sswitch_4
    const-class v2, Lcfs;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v2, v0}, Lexr;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 1098
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcfs;

    if-eqz v2, :cond_0

    .line 1099
    check-cast v0, Lcfs;

    .line 1100
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcfs;)V

    goto/16 :goto_0

    .line 1090
    :cond_1
    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V

    .line 1091
    :goto_1
    return-void

    .line 1093
    :cond_2
    const-string/jumbo v0, ""

    invoke-interface {p2, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1045
    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d1 -> :sswitch_1
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_3
        0xbb8 -> :sswitch_4
    .end sparse-switch
.end method
