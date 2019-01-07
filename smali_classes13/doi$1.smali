.class final Ldoi$1;
.super Ljava/lang/Object;
.source "MdUrlDispatcher.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoi;->a(Ljava/lang/String;JLcom/alibaba/wukong/im/Conversation;Landroid/content/Context;Ldoi$b;Ldoi$a;)V
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Ldoi$1;->a:Landroid/content/Context;

    iput-object p2, p0, Ldoi$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[MdUrlDispatcher]dispatchMdUrl error,code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 178
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 169
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1172
    iget-object v0, p0, Ldoi$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Ldoi$1;->b:Ljava/lang/String;

    .line 2147
    if-eqz v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2148
    :cond_0
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "[MdUtils]jump2DeleteMembers params invalid"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    :goto_0
    return-void

    .line 2153
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    .line 2154
    instance-of v4, v1, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    if-nez v4, :cond_2

    .line 2155
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "[MdUtils]jump2DeleteMembers messageContent not RobotMarkdownContent"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2159
    :cond_2
    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    .line 2160
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->extension()Ljava/util/Map;

    move-result-object v1

    .line 2161
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2162
    :cond_3
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "[MdUtils]jump2DeleteMembers messageContent.extension is null or empty"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2166
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2167
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2168
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "[MdUtils]jump2DeleteMembers extension ddContext is empty"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2174
    :cond_5
    :try_start_0
    const-class v2, Ljava/lang/Long;

    invoke-static {v1, v2}, Lcoo;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 2180
    :goto_1
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2181
    :cond_6
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "[MdUtils]jump2DeleteMembers userId is null or empty"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2175
    :catch_0
    move-exception v1

    .line 2176
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2177
    const-string/jumbo v2, "im"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "[MdUtils]jump2DeleteMembers userIdListJson to array exception:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 2178
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2177
    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_1

    .line 2186
    :cond_7
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    .line 2187
    if-nez v4, :cond_8

    .line 2188
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "[MdUtils]jump2DeleteMembers getConversation is null"

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2292
    :cond_8
    if-eqz v0, :cond_9

    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-nez v1, :cond_a

    .line 2194
    :cond_9
    :goto_2
    new-instance v1, Ldok$1;

    invoke-direct {v1, v2, v0, v4}, Ldok$1;-><init>(Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 2273
    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v2, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 2274
    invoke-interface {v4, v0}, Lcom/alibaba/wukong/im/Conversation;->getMembers(Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0

    :cond_a
    move-object v1, v0

    .line 2295
    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    goto :goto_2
.end method
