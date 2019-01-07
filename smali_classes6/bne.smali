.class public final Lbne;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "NormalPushHandler.java"


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
    .line 24
    const-string/jumbo v0, "biz/embeddedAP"

    invoke-direct {p0, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private static a(Ljava/lang/Class;[B)Ljava/lang/Object;
    .locals 4
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
    .line 47
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 49
    .local v1, "ret":Ljava/lang/Object;
    :try_start_0
    const-string/jumbo v2, "p"

    invoke-static {v2}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v2

    invoke-interface {v2, p1, p0}, Ljac;->a([BLjava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 55
    .end local v1    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 50
    .restart local v1    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "NormalPushHandler"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "NormalPushHandler"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 19
    check-cast p1, Lclb;

    .line 1029
    const-string/jumbo v0, "NormalPushHandler"

    const-string/jumbo v1, "alpha push onReceived"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    if-eqz p1, :cond_0

    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1031
    :cond_0
    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V

    .line 1032
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclc;

    .line 1035
    if-eqz v0, :cond_2

    iget-object v2, v0, Lclc;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lclc;->b:[B

    if-eqz v2, :cond_2

    .line 1036
    const-string/jumbo v2, "NormalPushHandler"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "push type = "

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, v0, Lclc;->a:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v2, v0, Lclc;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->MESH_RESULT:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;

    iget v3, v3, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->value:I

    if-ne v2, v3, :cond_2

    .line 1038
    const-class v2, Lbms;

    iget-object v0, v0, Lclc;->b:[B

    invoke-static {v2, v0}, Lbne;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbms;

    .line 1039
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a()Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->MESH_RESULT:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v6, v4}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a(Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;Ljava/lang/Object;ILjava/lang/String;)V

    goto :goto_1

    .line 1043
    :cond_3
    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V

    goto :goto_0
.end method
