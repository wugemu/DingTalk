.class public final Lgck;
.super Ljava/lang/Object;
.source "MessageFavoriteFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)Lgcj;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v1, 0x0

    .line 16
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-object v1

    .line 19
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 20
    .local v0, "messageType":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 22
    :sswitch_0
    new-instance v1, Lgcp;

    invoke-direct {v1, p0, p1, p2}, Lgcp;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 25
    :sswitch_1
    new-instance v1, Lgcn;

    invoke-direct {v1, p0, p1, p2}, Lgcn;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 28
    :sswitch_2
    new-instance v1, Lgcc;

    invoke-direct {v1, p0, p1, p2}, Lgcc;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 30
    :sswitch_3
    new-instance v1, Lgch;

    invoke-direct {v1, p0, p1, p2}, Lgch;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 32
    :sswitch_4
    new-instance v1, Lgcf;

    invoke-direct {v1, p0, p1, p2}, Lgcf;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 36
    :sswitch_5
    new-instance v1, Lgco;

    invoke-direct {v1, p0, p1, p2}, Lgco;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 38
    :sswitch_6
    new-instance v1, Lgci;

    invoke-direct {v1, p0, p1, p2}, Lgci;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 41
    :sswitch_7
    new-instance v1, Lgcd;

    invoke-direct {v1, p0, p1, p2}, Lgcd;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 43
    :sswitch_8
    new-instance v1, Lgcl;

    invoke-direct {v1, p0, p1, p2}, Lgcl;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 46
    :sswitch_9
    new-instance v1, Lgcm;

    invoke-direct {v1, p0, p1, p2}, Lgcm;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 48
    :sswitch_a
    new-instance v1, Lgcb;

    invoke-direct {v1, p0, p1, p2}, Lgcb;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 51
    :sswitch_b
    new-instance v1, Lgcr;

    invoke-direct {v1, p0, p1, p2}, Lgcr;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 53
    :sswitch_c
    new-instance v1, Lgcg;

    invoke-direct {v1, p0, p1, p2}, Lgcg;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 56
    :sswitch_d
    new-instance v1, Lgce;

    invoke-direct {v1, p0, p1, p2}, Lgce;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0

    .line 20
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x65 -> :sswitch_7
        0x66 -> :sswitch_3
        0x67 -> :sswitch_b
        0x68 -> :sswitch_c
        0xc9 -> :sswitch_7
        0xca -> :sswitch_d
        0xfb -> :sswitch_1
        0xfc -> :sswitch_2
        0xfd -> :sswitch_b
        0xfe -> :sswitch_d
        0x12c -> :sswitch_9
        0x12d -> :sswitch_9
        0x190 -> :sswitch_6
        0x1f4 -> :sswitch_5
        0x1f5 -> :sswitch_5
        0x1f6 -> :sswitch_5
        0x258 -> :sswitch_8
        0x2bc -> :sswitch_a
    .end sparse-switch
.end method
