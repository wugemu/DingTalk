.class public final Lgpt;
.super Ljava/lang/Object;
.source "ConversationUtils.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "ConversationUtils"

    sput-object v0, Lgpt;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 8
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    const-wide/16 v0, 0x0

    .line 75
    :goto_0
    return-wide v0

    .line 62
    :cond_0
    :try_start_0
    const-string/jumbo v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "uids":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 64
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 65
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .local v0, "uid":J
    goto :goto_0

    .line 67
    .end local v0    # "uid":J
    :cond_1
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .restart local v0    # "uid":J
    goto :goto_0

    .line 70
    .end local v0    # "uid":J
    :cond_2
    const-wide/16 v0, 0x0

    .restart local v0    # "uid":J
    goto :goto_0

    .line 73
    .end local v0    # "uid":J
    .end local v2    # "uids":[Ljava/lang/String;
    :catch_0
    move-exception v3

    const-wide/16 v0, 0x0

    .restart local v0    # "uid":J
    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 535
    .local p0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 536
    const-wide/16 v2, 0x0

    .line 553
    :cond_0
    :goto_0
    return-wide v2

    .line 539
    :cond_1
    const-wide/16 v2, 0x0

    .line 542
    .local v2, "oid":J
    :try_start_0
    const-string/jumbo v1, "id"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 543
    const-string/jumbo v1, "id"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 545
    :cond_2
    const-string/jumbo v1, "orgId"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 546
    const-string/jumbo v1, "orgId"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x5208

    .line 607
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    .line 1615
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 1616
    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    const-string/jumbo v0, ":"

    aput-object v0, v2, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1618
    :cond_0
    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, ":"

    aput-object v3, v2, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;
    .locals 3
    .param p0, "conversationId"    # Ljava/lang/String;
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 780
    .line 782
    move-object v0, p0

    .local v0, "conversationIdFixed":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 784
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfzv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 787
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 788
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCid()Ljava/lang/String;

    move-result-object v0

    .line 791
    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "convId"    # Ljava/lang/String;
    .param p1, "myUid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 630
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-object v1

    .line 633
    :cond_1
    const-string/jumbo v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "uids":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 637
    aget-object v1, v0, v4

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    aget-object v1, v0, v1

    goto :goto_0

    :cond_2
    aget-object v1, v0, v4

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .line 128
    if-nez p2, :cond_0

    .line 172
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 132
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 140
    .local v0, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v0, :cond_2

    .line 141
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p2, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_2
    new-instance v1, Lgpt$1;

    invoke-direct {v1, v0, p2}, Lgpt$1;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Lcma;)V

    .line 167
    .local v1, "getOwnerIdListener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    if-eqz p0, :cond_3

    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 168
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-interface {v2, v1, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "getOwnerIdListener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    check-cast v1, Lcma;

    .line 171
    .restart local v1    # "getOwnerIdListener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public static a(Lcem;Lcma;)V
    .locals 5
    .param p0, "conversation"    # Lcem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcem;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 292
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 297
    :cond_0
    if-nez p0, :cond_1

    .line 298
    const-string/jumbo v2, "2012"

    const-string/jumbo v3, "data error"

    invoke-interface {p1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_1
    const/4 v1, 0x0

    .line 304
    .local v1, "spaceId":Ljava/lang/String;
    iget-object v2, p0, Lcem;->c:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 305
    iget-object v2, p0, Lcem;->c:Ljava/util/Map;

    const-string/jumbo v3, "cSpaceId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "spaceId":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 309
    .restart local v1    # "spaceId":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 310
    invoke-interface {p1, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 316
    :cond_3
    new-instance v0, Lgpt$2;

    invoke-direct {v0, p1, p0}, Lgpt$2;-><init>(Lcma;Lcem;)V

    .line 360
    .local v0, "callback":Lcma;, "Lcma<Ljava/lang/Long;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    iget-object v3, p0, Lcem;->a:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v0}, Lgon;->a(Ljava/lang/String;ILcma;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 6
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v5, 0x0

    .line 645
    if-nez p0, :cond_0

    .line 646
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "sendMessageToConversation"

    const-string/jumbo v3, "20170720"

    const-string/jumbo v4, "dentry model is null"

    invoke-static {v2, v3, v4, v5}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :goto_0
    return-void

    .line 654
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 655
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "sendMessageToConversation"

    const-string/jumbo v3, "20170720"

    const-string/jumbo v4, "cid is empty"

    invoke-static {v2, v3, v4, v5}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 663
    :cond_1
    invoke-virtual {p0, p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setCid(Ljava/lang/String;)V

    .line 665
    new-instance v0, Lgpt$5;

    invoke-direct {v0, p1, v5, p0}, Lgpt$5;-><init>(Ljava/lang/String;Lcma;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 755
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v1, v0, p2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/Conversation;Lcma;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Lcma;

    .prologue
    .line 50
    .line 1762
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1763
    :cond_0
    if-eqz p2, :cond_1

    .line 1764
    const-string/jumbo v0, "20170720"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lfzs$h;->send_fail:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    :cond_1
    :goto_0
    return-void

    .line 1770
    :cond_2
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 1771
    const/16 v1, 0x1f4

    iput v1, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 1772
    iput-object p0, v0, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 1773
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;ILcma;)V
    .locals 7
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "contentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 424
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 506
    :goto_0
    return-void

    .line 428
    :cond_0
    if-nez p0, :cond_1

    .line 429
    const-string/jumbo v4, "10600"

    const-string/jumbo v5, "data error"

    invoke-interface {p2, v4, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_1
    const/4 v2, 0x0

    .line 435
    .local v2, "spaceId":Ljava/lang/String;
    const/4 v3, 0x2

    .line 436
    .local v3, "type":I
    const/4 v1, 0x0

    .line 438
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 439
    packed-switch p1, :pswitch_data_0

    .line 453
    invoke-static {p0}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 454
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "cSpaceId"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "spaceId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 455
    .restart local v2    # "spaceId":Ljava/lang/String;
    const-string/jumbo v1, "cSpaceId"

    .line 464
    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 465
    invoke-interface {p2, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 443
    :pswitch_0
    const/4 v3, 0x0

    .line 444
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "convSpaceNormal"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "spaceId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 445
    .restart local v2    # "spaceId":Ljava/lang/String;
    const-string/jumbo v1, "convSpaceNormal"

    .line 446
    goto :goto_1

    .line 448
    :pswitch_1
    const/4 v3, 0x1

    .line 449
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "convSpaceHidden"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "spaceId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 450
    .restart local v2    # "spaceId":Ljava/lang/String;
    const-string/jumbo v1, "convSpaceHidden"

    .line 451
    goto :goto_1

    .line 457
    :cond_3
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "newCSpaceIdIM"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "spaceId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 458
    .restart local v2    # "spaceId":Ljava/lang/String;
    const-string/jumbo v1, "newCSpaceIdIM"

    goto :goto_1

    .line 469
    :cond_4
    move-object v0, v1

    .line 471
    .local v0, "finalKey":Ljava/lang/String;
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v4

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lgpt$4;

    invoke-direct {v6, p2, v0, p0}, Lgpt$4;-><init>(Lcma;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-virtual {v4, v5, v3, v6}, Lgon;->a(Ljava/lang/String;ILcma;)V

    goto/16 :goto_0

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Lcma;)V
    .locals 5
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 417
    :goto_0
    return-void

    .line 373
    :cond_0
    if-nez p0, :cond_1

    .line 374
    const-string/jumbo v1, "2012"

    const-string/jumbo v2, "data error"

    invoke-interface {p1, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_1
    const/4 v0, 0x0

    .line 379
    .local v0, "spaceId":Ljava/lang/String;
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 380
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "newCSpaceIdIM"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "spaceId":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 383
    .restart local v0    # "spaceId":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 384
    invoke-interface {p1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 389
    :cond_3
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-instance v4, Lgpt$3;

    invoke-direct {v4, p1, p0}, Lgpt$3;-><init>(Lcma;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-virtual {v1, v2, v3, v4}, Lgon;->a(Ljava/lang/String;ILcma;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 268
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Long;)Z
    .locals 8
    .param p0, "conversationOwnerId"    # Ljava/lang/Long;

    .prologue
    const/4 v2, 0x0

    .line 106
    if-nez p0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v2

    .line 107
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 108
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 109
    .local v1, "userModel":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 111
    .local v0, "orgModel":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    .line 112
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 113
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lgpt;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 275
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 6
    .param p0, "conversationId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 585
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v2

    .line 589
    :cond_1
    const-string/jumbo v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "uids":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 592
    array-length v4, v1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 594
    .local v0, "uid":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v5, "4248001"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 595
    const/4 v2, 0x1

    goto :goto_0

    .line 592
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static c(Lcom/alibaba/wukong/im/Conversation;)J
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 525
    if-nez p0, :cond_0

    .line 526
    const-wide/16 v2, 0x0

    .line 531
    :goto_0
    return-wide v2

    .line 529
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    .line 531
    .local v0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0}, Lgpt;->a(Ljava/util/Map;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 626
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/alibaba/wukong/im/Conversation;)I
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x3

    .line 560
    if-nez p0, :cond_1

    .line 570
    :cond_0
    :goto_0
    return v0

    .line 564
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 565
    invoke-static {p0}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 568
    const/4 v0, 0x4

    goto :goto_0

    .line 570
    :cond_2
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static e(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 578
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
