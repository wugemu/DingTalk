.class public final Ldiv;
.super Ljava/lang/Object;
.source "CMailMsgUploader.java"

# interfaces
.implements Lcom/alibaba/wukong/im/Uploader;
.implements Ldil$a;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/wukong/im/Message;

.field private c:Lcom/alibaba/wukong/im/Uploader$UploadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/im/Uploader$UploadListener",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "CMailMsgUploader"

    sput-object v0, Ldiv;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic a(Ldiv;)Lcom/alibaba/wukong/im/Uploader$UploadListener;
    .locals 1
    .param p0, "x0"    # Ldiv;

    .prologue
    .line 20
    iget-object v0, p0, Ldiv;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    return-object v0
.end method

.method static synthetic b(Ldiv;)Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2
    .param p0, "x0"    # Ldiv;

    .prologue
    .line 4185
    sget-object v0, Ldiv;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 20
    return-object v0
.end method


# virtual methods
.method public final a(JLjava/lang/String;)V
    .locals 15
    .param p1, "localId"    # J
    .param p3, "messageId"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    .line 110
    iget-object v6, p0, Ldiv;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    if-eqz v6, :cond_1

    .line 111
    const-string/jumbo v6, "CMail"

    sget-object v7, Ldiv;->a:Ljava/lang/String;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "mail content upload success id="

    aput-object v9, v8, v11

    const/4 v9, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, " messageId = "

    aput-object v10, v8, v9

    aput-object p3, v8, v12

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v6, p0, Ldiv;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    .line 114
    .local v1, "content":Lcom/alibaba/wukong/im/MessageContent;
    instance-of v6, v1, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-eqz v6, :cond_0

    move-object v5, v1

    .line 115
    check-cast v5, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 116
    .local v5, "multiContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 117
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent;

    .line 118
    .local v2, "customContent":Lcom/alibaba/wukong/im/MessageContent;
    instance-of v6, v2, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    if-eqz v6, :cond_0

    move-object v3, v2

    .line 119
    check-cast v3, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 120
    .local v3, "mailContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v6

    const-class v7, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    invoke-static {v6, v7}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 121
    .local v4, "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailMessageID:Ljava/lang/String;

    .line 122
    invoke-static {v4}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->setExtension(Ljava/util/Map;)V

    .line 2185
    .end local v2    # "customContent":Lcom/alibaba/wukong/im/MessageContent;
    .end local v3    # "mailContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v4    # "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    .end local v5    # "multiContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    :cond_0
    sget-object v6, Ldiv;->a:Ljava/lang/String;

    invoke-static {v6, v12}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    .line 127
    new-instance v7, Ldiv$2;

    invoke-direct {v7, p0, v1}, Ldiv$2;-><init>(Ldiv;Lcom/alibaba/wukong/im/MessageContent;)V

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 136
    .end local v1    # "content":Lcom/alibaba/wukong/im/MessageContent;
    :cond_1
    return-void
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "localId"    # J
    .param p3, "errCode"    # Ljava/lang/String;
    .param p4, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v5, p0, Ldiv;->b:Lcom/alibaba/wukong/im/Message;

    if-nez v5, :cond_0

    .line 166
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v5, p0, Ldiv;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 145
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    instance-of v5, v0, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-eqz v5, :cond_1

    move-object v4, v0

    .line 146
    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 147
    .local v4, "multiContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 148
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent;

    .line 149
    .local v1, "customContent":Lcom/alibaba/wukong/im/MessageContent;
    instance-of v5, v1, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    if-eqz v5, :cond_1

    move-object v2, v1

    .line 150
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 151
    .local v2, "mailContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    invoke-static {v5, v6}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 152
    .local v3, "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    iput-wide p1, v3, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailLocalId:J

    .line 153
    invoke-static {v3}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->setExtension(Ljava/util/Map;)V

    .line 3185
    .end local v1    # "customContent":Lcom/alibaba/wukong/im/MessageContent;
    .end local v2    # "mailContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    .end local v3    # "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    .end local v4    # "multiContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    :cond_1
    sget-object v5, Ldiv;->a:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v5

    .line 158
    new-instance v6, Ldiv$3;

    invoke-direct {v6, p0, p3, p4}, Ldiv$3;-><init>(Ldiv;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final upload(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
    .locals 7
    .param p1, "uploadParams"    # Lcom/alibaba/wukong/im/Uploader$UploadParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Uploader$UploadParams;",
            "Lcom/alibaba/wukong/im/Uploader$UploadListener",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "uploadListener":Lcom/alibaba/wukong/im/Uploader$UploadListener;, "Lcom/alibaba/wukong/im/Uploader$UploadListener<Lcom/alibaba/wukong/im/MessageContent;>;"
    const/4 v6, 0x0

    .line 32
    if-nez p1, :cond_1

    .line 33
    if-eqz p2, :cond_0

    .line 34
    const-string/jumbo v2, "uploadParams empty"

    const-string/jumbo v3, "uploadParams empty"

    invoke-interface {p2, v2, v3}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    iput-object v2, p0, Ldiv;->b:Lcom/alibaba/wukong/im/Message;

    .line 41
    iput-object p2, p0, Ldiv;->c:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    .line 43
    iget-object v2, p0, Ldiv;->b:Lcom/alibaba/wukong/im/Message;

    .line 1169
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    .line 1170
    instance-of v3, v2, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-eqz v3, :cond_2

    .line 1171
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 1172
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1173
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent;

    .line 1174
    instance-of v3, v2, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    if-eqz v3, :cond_2

    .line 1175
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 1176
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    invoke-static {v2, v3}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    move-object v1, v2

    .line 45
    .local v1, "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    :goto_1
    const-string/jumbo v2, "CMail"

    sget-object v3, Ldiv;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "message start handle content upload UUID="

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v6, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailLocalUUID:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    if-eqz v1, :cond_0

    .line 48
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailMessageID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 49
    const-string/jumbo v2, "CMail"

    sget-object v3, Ldiv;->a:Ljava/lang/String;

    const-string/jumbo v4, "im control mail send"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Ldil;->a()Ldil;

    move-result-object v3

    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailLocalUUID:Ljava/lang/String;

    .line 2154
    iget-object v4, v3, Ldil;->a:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2155
    iget-object v4, v3, Ldil;->a:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2156
    iget-object v3, v3, Ldil;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 2157
    :try_start_0
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2158
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_2
    iget-wide v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailLocalId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 55
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v2

    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailAddress:Ljava/lang/String;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailLocalId:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1181
    .end local v1    # "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2158
    .restart local v1    # "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2160
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2161
    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2162
    iget-object v3, v3, Ldil;->a:Ljava/util/Map;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 58
    :cond_4
    new-instance v0, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;-><init>()V

    .line 59
    .local v0, "extData":Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;
    iget-object v2, p0, Ldiv;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Ldiv;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    :goto_3
    iput-object v2, v0, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;->conversationId:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Ldiv;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;->imMessageId:J

    .line 62
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v2

    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailAddress:Ljava/lang/String;

    iget-object v4, v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailLocalUUID:Ljava/lang/String;

    new-instance v5, Ldiv$1;

    invoke-direct {v5, p0}, Ldiv$1;-><init>(Ldiv;)V

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;Lfzl;)V

    goto/16 :goto_0

    .line 59
    :cond_5
    const-string/jumbo v2, ""

    goto :goto_3

    .line 92
    .end local v0    # "extData":Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;
    :cond_6
    const-string/jumbo v2, "CMail"

    sget-object v3, Ldiv;->a:Ljava/lang/String;

    const-string/jumbo v4, "mail has already send, send message directly"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz p2, :cond_0

    .line 95
    iget-object v2, p0, Ldiv;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
