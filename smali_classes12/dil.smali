.class public Ldil;
.super Ljava/lang/Object;
.source "CMailSendChangeManager.java"

# interfaces
.implements Lfzl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldil$a;
    }
.end annotation


# static fields
.field private static volatile c:Ldil;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ldil$a;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldil;->a:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldil;->b:Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public static a()Ldil;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Ldil;->c:Ldil;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Ldil;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Ldil;->c:Ldil;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ldil;

    invoke-direct {v0}, Ldil;-><init>()V

    sput-object v0, Ldil;->c:Ldil;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Ldil;->c:Ldil;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Ldil;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Ldil;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    .line 1182
    if-eqz p1, :cond_0

    .line 1186
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 1187
    instance-of v1, v0, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-eqz v1, :cond_0

    .line 1188
    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 1189
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1190
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent;

    .line 1191
    instance-of v1, v0, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    if-eqz v1, :cond_0

    .line 1192
    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 1193
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    invoke-static {v1, v2}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 1194
    iput-object p2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailMessageID:Ljava/lang/String;

    .line 1195
    invoke-static {v1}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->setExtension(Ljava/util/Map;)V

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;Ljava/lang/String;)V
    .locals 13
    .param p1, "localId"    # J
    .param p3, "uuid"    # Ljava/lang/String;
    .param p4, "extData"    # Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;
    .param p5, "mailMessageId"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string/jumbo v7, "CMail"

    const-string/jumbo v8, "CMailSendChangeManager"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "mail send complete localUUID="

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p3, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, " id="

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v2, 0x0

    .line 81
    .local v2, "found":Z
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 82
    iget-object v7, p0, Ldil;->a:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 83
    .local v6, "listeners":Ljava/util/List;, "Ljava/util/List<Ldil$a;>;"
    if-eqz v6, :cond_2

    .line 84
    iget-object v8, p0, Ldil;->b:Ljava/lang/Object;

    monitor-enter v8

    .line 85
    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 86
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ldil$a;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 87
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldil$a;

    .line 88
    .local v4, "item":Ldil$a;
    if-eqz v4, :cond_0

    .line 89
    const/4 v2, 0x1

    .line 90
    move-object/from16 v0, p5

    invoke-interface {v4, p1, p2, v0}, Ldil$a;->a(JLjava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v4    # "item":Ldil$a;
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ldil$a;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ldil$a;>;"
    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ldil$a;>;"
    :cond_2
    iget-object v7, p0, Ldil;->a:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v6    # "listeners":Ljava/util/List;, "Ljava/util/List<Ldil$a;>;"
    :cond_3
    if-nez v2, :cond_4

    if-eqz p4, :cond_4

    .line 101
    const-string/jumbo v7, "CMail"

    const-string/jumbo v8, "CMailSendChangeManager"

    const-string/jumbo v9, "not found sending message, try find offline message"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;->conversationId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    move-object/from16 v0, p4

    iget-wide v8, v0, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;->imMessageId:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    .line 103
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    .line 105
    .local v3, "imInterface":Lcom/alibaba/android/dingtalkim/base/IMInterface;
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;->conversationId:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-wide v8, v0, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;->imMessageId:J

    new-instance v10, Ldil$1;

    move-object/from16 v0, p5

    invoke-direct {v10, p0, v0, v3}, Ldil$1;-><init>(Ldil;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/IMInterface;)V

    invoke-virtual {v3, v7, v8, v9, v10}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;JLcma;)V

    .line 127
    .end local v3    # "imInterface":Lcom/alibaba/android/dingtalkim/base/IMInterface;
    :cond_4
    return-void
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "localId"    # J
    .param p3, "uuid"    # Ljava/lang/String;
    .param p4, "code"    # Ljava/lang/String;
    .param p5, "msg"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string/jumbo v3, "CMail"

    const-string/jumbo v4, "CMailSendChangeManager"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "mail send failure localUUID="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, " id="

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v3, p0, Ldil;->a:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 138
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Ldil$a;>;"
    if-eqz v2, :cond_3

    .line 139
    iget-object v4, p0, Ldil;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 140
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 141
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ldil$a;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldil$a;

    .line 143
    .local v0, "item":Ldil$a;
    if-eqz v0, :cond_1

    .line 144
    invoke-interface {v0, p1, p2, p4, p5}, Ldil$a;->a(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 147
    .end local v0    # "item":Ldil$a;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ldil$a;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ldil$a;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ldil$a;>;"
    :cond_3
    iget-object v3, p0, Ldil;->a:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
