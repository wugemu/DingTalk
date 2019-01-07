.class final Ldiu$1;
.super Ljava/lang/Object;
.source "BurnChatPatchUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldiu;->a(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/alibaba/wukong/im/MessageService;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/alibaba/wukong/im/MessageService;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Ldiu$1;->a:Ljava/lang/String;

    iput-object p2, p0, Ldiu$1;->b:Ljava/util/HashMap;

    iput-object p3, p0, Ldiu$1;->c:Lcom/alibaba/wukong/im/MessageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "BurnChatPatchUtils query status, cid:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ldiu$1;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",query result exception, errCode"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ",errMsg:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 109
    check-cast p1, Ljava/util/List;

    .line 1112
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1114
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 1115
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v2, "BurnChatPatchUtils query status, cid:"

    aput-object v2, v0, v7

    iget-object v2, p0, Ldiu$1;->a:Ljava/lang/String;

    aput-object v2, v0, v8

    const-string/jumbo v2, ",query result list:"

    aput-object v2, v0, v9

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;

    .line 1118
    if-eqz v0, :cond_0

    .line 1119
    const-string/jumbo v3, "id:"

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;->msgId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",hasRead:"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;->hasRead()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 1122
    :cond_1
    const-string/jumbo v0, "im"

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;

    .line 1126
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;->hasRead()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1127
    iget-object v3, p0, Ldiu$1;->b:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/alibaba/wukong/im/SecretMsgReadStatusObject;->msgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 1128
    if-eqz v0, :cond_2

    .line 1129
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1133
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1135
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 1136
    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v3, "BurnChatPatchUtils updateMsgAllRead status, cid:"

    aput-object v3, v0, v7

    iget-object v3, p0, Ldiu$1;->a:Ljava/lang/String;

    aput-object v3, v0, v8

    const-string/jumbo v3, ",msgIdList:"

    aput-object v3, v0, v9

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 1139
    if-eqz v0, :cond_4

    .line 1140
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 1143
    :cond_5
    const-string/jumbo v0, "im"

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v6, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Ldiu$1;->c:Lcom/alibaba/wukong/im/MessageService;

    iget-object v2, p0, Ldiu$1;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1, v6}, Lcom/alibaba/wukong/im/MessageService;->updateMsgAllRead(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    .line 1147
    :cond_6
    :goto_3
    return-void

    .line 1148
    :cond_7
    const-string/jumbo v0, "im"

    new-array v1, v10, [Ljava/lang/String;

    const-string/jumbo v2, "BurnChatPatchUtils query status, cid:"

    aput-object v2, v1, v7

    iget-object v2, p0, Ldiu$1;->a:Ljava/lang/String;

    aput-object v2, v1, v8

    const-string/jumbo v2, ",query result list empty"

    aput-object v2, v1, v9

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
