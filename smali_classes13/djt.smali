.class public final Ldjt;
.super Ljava/lang/Object;
.source "GroupAdminUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldjt$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    return-void
.end method

.method public static a()I
    .locals 7

    .prologue
    .line 77
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v3

    const-string/jumbo v4, "dt_group"

    const-string/jumbo v5, "group_administrator_count"

    invoke-virtual {v3, v4, v5}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "setting":Ljava/lang/String;
    const/4 v2, 0x0

    .line 79
    .local v2, "value":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 86
    :cond_0
    :goto_0
    return v2

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "getMaxGroupNumCloudSetting getvalue exception "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1022
    const-string/jumbo v5, "im"

    invoke-static {v3, v4, v5}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ldjt$a;Ljava/util/List;Z)Ljava/util/List;
    .locals 12
    .param p0, "nameModel"    # Ldjt$a;
    .param p2, "add"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldjt$a;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "GroupAdminUtils buildAdminSystemMsg params empty"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v11, 0x0

    .line 170
    :goto_0
    return-object v11

    .line 158
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v6, "adminIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 160
    .local v10, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v10, :cond_2

    .line 161
    iget-wide v2, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    .end local v10    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .local v11, "systemMsgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/wukong/im/Message;>;"
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v8

    .line 166
    .local v8, "curUid":J
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->d()Ljava/lang/String;

    move-result-object v7

    .line 4269
    .local v7, "currentNick":Ljava/lang/String;
    if-nez p0, :cond_4

    .line 4270
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "GroupAdminUtils buildMsg2Uids params empty"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Liag;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4271
    const/4 v0, 0x0

    .line 168
    :goto_2
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4307
    if-nez p0, :cond_8

    .line 4308
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "GroupAdminUtils buildMsg2Uids params empty"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Liag;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4309
    const/4 v0, 0x0

    .line 169
    :goto_3
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4273
    :cond_4
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 4276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4277
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4278
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4279
    new-instance v3, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;

    invoke-direct {v3}, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;-><init>()V

    .line 4280
    if-eqz p2, :cond_6

    const-string/jumbo v1, "add_group_admins_admin"

    :goto_4
    iput-object v1, v3, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateId:Ljava/lang/String;

    .line 4281
    iput-object v2, v3, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateData:Ljava/util/List;

    .line 4282
    const-string/jumbo v1, "title"

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4284
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4285
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "^"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " "

    aput-object v4, v1, v3

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4286
    new-instance v3, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;

    invoke-direct {v3}, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;-><init>()V

    .line 4287
    if-eqz p2, :cond_7

    const-string/jumbo v1, "add_group_admins_admin"

    :goto_5
    iput-object v1, v3, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateId:Ljava/lang/String;

    .line 4288
    iput-object v2, v3, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateData:Ljava/util/List;

    .line 4289
    const-string/jumbo v1, "markdown"

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4291
    iget-object v1, p0, Ldjt$a;->c:Ljava/util/Map;

    if-nez v1, :cond_5

    .line 4292
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ldjt$a;->c:Ljava/util/Map;

    .line 4294
    :cond_5
    new-instance v1, Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;

    invoke-direct {v1}, Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;-><init>()V

    .line 4295
    iput-object v7, v1, Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;->nick:Ljava/lang/String;

    .line 4296
    iget-object v2, p0, Ldjt$a;->c:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4298
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Ldjt$a;->c:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/im/MessageBuilder;->buildRobotMarkdownIconExMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 4300
    sget-object v2, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 4301
    invoke-interface {v0, v1, v6}, Lcom/alibaba/wukong/im/MessageBuilder;->setMessageReceivers(Lcom/alibaba/wukong/im/Message;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-object v0, v1

    .line 4302
    goto/16 :goto_2

    .line 4280
    :cond_6
    const-string/jumbo v1, "remove_group_admins_admin"

    goto :goto_4

    .line 4287
    :cond_7
    const-string/jumbo v1, "remove_group_admins_admin"

    goto :goto_5

    .line 4311
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4312
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4314
    new-instance v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;

    invoke-direct {v2}, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;-><init>()V

    .line 4315
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4316
    iget-object v0, p0, Ldjt$a;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4317
    if-eqz p2, :cond_a

    const-string/jumbo v0, "add_group_admins_owner_members"

    :goto_6
    iput-object v0, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateId:Ljava/lang/String;

    .line 4318
    iput-object v1, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateData:Ljava/util/List;

    .line 4319
    const-string/jumbo v0, "title"

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4321
    new-instance v1, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;

    invoke-direct {v1}, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;-><init>()V

    .line 4322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4323
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "^"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4324
    iget-object v2, p0, Ldjt$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4325
    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateData:Ljava/util/List;

    .line 4326
    if-eqz p2, :cond_b

    const-string/jumbo v0, "add_group_admins_owner_members"

    :goto_7
    iput-object v0, v1, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateId:Ljava/lang/String;

    .line 4327
    const-string/jumbo v0, "markdown"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4330
    iget-object v0, p0, Ldjt$a;->c:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 4331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldjt$a;->c:Ljava/util/Map;

    .line 4333
    :cond_9
    new-instance v0, Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;-><init>()V

    .line 4334
    iput-object v7, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;->nick:Ljava/lang/String;

    .line 4335
    iget-object v1, p0, Ldjt$a;->c:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4337
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 4338
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Ldjt$a;->c:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/im/MessageBuilder;->buildRobotMarkdownIconExMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 4340
    sget-object v2, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 4341
    invoke-interface {v0, v1, v6}, Lcom/alibaba/wukong/im/MessageBuilder;->setMessageExcludeReceivers(Lcom/alibaba/wukong/im/Message;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-object v0, v1

    .line 4342
    goto/16 :goto_3

    .line 4317
    :cond_a
    const-string/jumbo v0, "remove_group_admins_owner_members"

    goto/16 :goto_6

    .line 4326
    :cond_b
    const-string/jumbo v0, "remove_group_admins_owner_members"

    goto :goto_7
.end method

.method public static a(Landroid/text/Spannable;Landroid/view/View;)V
    .locals 10
    .param p0, "spannable"    # Landroid/text/Spannable;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/URLSpan;

    invoke-interface {p0, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/URLSpan;

    .line 61
    .local v2, "spans":[Landroid/text/style/URLSpan;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-lez v6, :cond_0

    .line 65
    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v4, v2, v5

    .line 66
    .local v4, "urlSpan":Landroid/text/style/URLSpan;
    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 67
    .local v3, "start":I
    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 68
    .local v0, "end":I
    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 69
    .local v1, "flags":I
    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 70
    new-instance v7, Lcqk;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcqk;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p0, v7, v3, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 65
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "end":I
    .end local v1    # "flags":I
    .end local v2    # "spans":[Landroid/text/style/URLSpan;
    .end local v3    # "start":I
    .end local v4    # "urlSpan":Landroid/text/style/URLSpan;
    :cond_0
    return-void
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    if-eqz p0, :cond_0

    invoke-static {p0}, Ldjt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    :cond_0
    if-eqz p1, :cond_1

    .line 227
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 265
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Ldjt$2;

    invoke-direct {v1, p1}, Ldjt$2;-><init>(Lcma;)V

    .line 264
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7ffffffe

    .line 231
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/wukong/im/ConversationService;->listMembers(Lcom/alibaba/wukong/Callback;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 12
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ldjt$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "usersList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ldjt$a;>;"
    const/4 v2, 0x0

    .line 106
    if-nez p0, :cond_1

    .line 107
    const-string/jumbo v0, "GroupAdminUtils getSystemMessageNameString error params conversation null"

    .line 2022
    const-string/jumbo v1, "im"

    invoke-static {v2, v0, v1}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    if-eqz p2, :cond_0

    .line 109
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "conversation null"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    if-nez p1, :cond_2

    .line 114
    const-string/jumbo v0, "GroupAdminUtils getSystemMessageNameString error params usersList null"

    .line 3022
    const-string/jumbo v1, "im"

    invoke-static {v2, v0, v1}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-eqz p2, :cond_0

    .line 116
    const-string/jumbo v0, "101002"

    const-string/jumbo v1, "userList null"

    invoke-interface {p2, v0, v1}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "conversationId":Ljava/lang/String;
    invoke-static {p0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v6

    .line 122
    .local v6, "orgId":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v3, "nameString":Ljava/lang/StringBuilder;
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->SYSTEM_MSG:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-static {p0, v0}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v10

    .line 125
    .local v10, "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v4, "uidString":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v9, "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v11, Ldjt$1;

    invoke-direct {v11, p2, v3, v4, v9}, Ldjt$1;-><init>(Lcom/alibaba/wukong/Callback;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/Map;)V

    move-object v8, p1

    invoke-virtual/range {v1 .. v11}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/util/List;Ljava/util/Map;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 91
    if-nez p0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_im_group_sub_admin"

    .line 1083
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 94
    if-eqz v1, :cond_0

    .line 97
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "im_group_sub_admin_enable"

    invoke-static {p0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Member;)Z
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "member"    # Lcom/alibaba/wukong/im/Member;

    .prologue
    .line 101
    invoke-static {p0}, Ldjt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Member;->roleType()Lcom/alibaba/wukong/im/Member$RoleType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Member$RoleType;->ADMIN:Lcom/alibaba/wukong/im/Member$RoleType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Member$RoleType;Lcom/alibaba/wukong/im/Conversation;Z)Z
    .locals 1
    .param p0, "roleType"    # Lcom/alibaba/wukong/im/Member$RoleType;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "groupAdminManageable"    # Z

    .prologue
    .line 192
    sget-object v0, Lcom/alibaba/wukong/im/Member$RoleType;->MASTER:Lcom/alibaba/wukong/im/Member$RoleType;

    if-eq p0, v0, :cond_0

    invoke-static {p1}, Ldjt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/wukong/im/Member$RoleType;->ADMIN:Lcom/alibaba/wukong/im/Member$RoleType;

    if-ne p0, v0, :cond_1

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 8
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 175
    if-nez p0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v2

    .line 178
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    move v0, v1

    .line 179
    .local v0, "amIMaster":Z
    :goto_1
    invoke-static {p0}, Ldjt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "pref_key_group_admin_not_click"

    invoke-static {v3, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    .end local v0    # "amIMaster":Z
    :cond_2
    move v0, v2

    .line 178
    goto :goto_1
.end method

.method public static c(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 13
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 196
    invoke-static {p0}, Ldjt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v8

    .line 199
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v3

    .line 201
    .local v3, "ext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 202
    const-string/jumbo v10, "groupAdmins"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 203
    .local v4, "groupIds":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 204
    invoke-static {v4}, Lcoo;->b(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    .line 205
    .local v7, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v7, :cond_0

    .line 206
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->b()Lchy;

    move-result-object v10

    invoke-virtual {v10}, Lchy;->getCurrentUid()J

    move-result-wide v0

    .line 207
    .local v0, "currentUid":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 208
    const/4 v6, 0x0

    .line 210
    .local v6, "id":Ljava/lang/Long;
    :try_start_0
    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson/JSONArray;->getLong(I)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 5044
    :goto_2
    const-wide/16 v10, 0x0

    invoke-static {v6, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    .line 214
    cmp-long v10, v0, v10

    if-nez v10, :cond_2

    move v8, v9

    .line 215
    goto :goto_0

    .line 211
    :catch_0
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "get group admins from extension exception"

    aput-object v12, v11, v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5022
    const-string/jumbo v12, "im"

    invoke-static {v10, v11, v12}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 207
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method
