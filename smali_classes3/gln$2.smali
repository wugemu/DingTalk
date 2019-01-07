.class final Lgln$2;
.super Ljava/lang/Object;
.source "SpaceTransferManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgln;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic b:Lgln;


# direct methods
.method constructor <init>(Lgln;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 0
    .param p1, "this$0"    # Lgln;

    .prologue
    .line 119
    iput-object p1, p0, Lgln$2;->b:Lgln;

    iput-object p2, p0, Lgln$2;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 119
    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    .line 2122
    iget-object v1, p0, Lgln$2;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez v6, :cond_2

    .line 2123
    :cond_0
    iget-object v0, p0, Lgln$2;->b:Lgln;

    .line 3042
    iget-object v0, v0, Lgln;->c:Lcma;

    .line 2123
    if-eqz v0, :cond_1

    .line 2124
    iget-object v0, p0, Lgln$2;->b:Lgln;

    .line 4042
    iget-object v0, v0, Lgln;->c:Lcma;

    .line 2124
    const-string/jumbo v1, ""

    const-string/jumbo v2, "param error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    :cond_1
    :goto_0
    return-void

    .line 2129
    :cond_2
    iget-object v1, p0, Lgln$2;->b:Lgln;

    iget-object v2, p0, Lgln$2;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 5166
    iget-object v3, v1, Lgln;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v3, :cond_6

    .line 5167
    const-string/jumbo v0, "isNeedCopy"

    const-string/jumbo v3, "null conversation"

    invoke-virtual {v1, v2, v0, v3, v7}, Lgln;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5194
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 2129
    :cond_4
    :goto_2
    if-eqz v0, :cond_d

    .line 2130
    iget-object v2, p0, Lgln$2;->b:Lgln;

    iget-object v3, p0, Lgln$2;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 7205
    if-nez v3, :cond_a

    .line 7206
    :goto_3
    :try_start_0
    invoke-static {v3}, Lgoc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v7

    .line 7208
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 7210
    new-instance v1, Lgln$3;

    invoke-direct/range {v1 .. v6}, Lgln$3;-><init>(Lgln;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JLjava/lang/String;)V

    .line 7241
    iget-object v0, v2, Lgln;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 7242
    const-class v4, Lcma;

    iget-object v0, v2, Lgln;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v4, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    move-object v1, v0

    .line 7245
    :cond_5
    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    .line 7246
    :goto_4
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v4

    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7252
    :catch_0
    move-exception v0

    .line 7253
    const-string/jumbo v1, "copySpaceDo"

    const-string/jumbo v4, "throw exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v1, v4, v5}, Lgln;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7255
    iget-object v0, v2, Lgln;->c:Lcma;

    if-eqz v0, :cond_1

    .line 7256
    iget-object v0, v2, Lgln;->c:Lcma;

    const-string/jumbo v1, ""

    iget-object v2, v2, Lgln;->a:Landroid/content/Context;

    sget v3, Lfzs$h;->send_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5171
    :cond_6
    iget-object v3, v1, Lgln;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    if-eq v3, v0, :cond_4

    .line 5176
    if-nez v2, :cond_7

    .line 5177
    const-string/jumbo v0, "isNeedCopy"

    const-string/jumbo v3, "null spaceDo"

    invoke-virtual {v1, v2, v0, v3, v7}, Lgln;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5181
    :cond_7
    iget v3, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-eq v3, v0, :cond_8

    iget-object v3, v1, Lgln;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v3}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5186
    :cond_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5187
    const-string/jumbo v0, "isNeedCopy"

    const-string/jumbo v3, "null targetSpaceId"

    invoke-virtual {v1, v2, v0, v3, v7}, Lgln;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5192
    :cond_9
    iget-object v1, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5193
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v3, "f_space_same_space_copy"

    .line 6083
    invoke-virtual {v1, v3, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 5193
    if-eqz v1, :cond_3

    iget-object v1, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->creatorId:Ljava/lang/String;

    .line 6109
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 5194
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v8

    cmp-long v1, v2, v8

    if-eqz v1, :cond_3

    goto/16 :goto_2

    .line 7205
    :cond_a
    :try_start_1
    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    goto/16 :goto_3

    .line 7245
    :cond_b
    invoke-virtual {v7}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 7249
    :cond_c
    invoke-virtual {v2, v7, v6}, Lgln;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2134
    :cond_d
    iget-object v0, p0, Lgln$2;->b:Lgln;

    iget-object v1, p0, Lgln$2;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 8042
    invoke-virtual {v0, v1}, Lgln;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 2135
    iget-object v0, p0, Lgln$2;->b:Lgln;

    .line 9042
    iget-object v0, v0, Lgln;->c:Lcma;

    .line 2135
    if-eqz v0, :cond_e

    .line 2137
    :try_start_2
    iget-object v0, p0, Lgln$2;->b:Lgln;

    .line 10042
    iget-object v0, v0, Lgln;->c:Lcma;

    .line 2137
    iget-object v1, p0, Lgln$2;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2143
    :cond_e
    :goto_5
    iget-object v0, p0, Lgln$2;->b:Lgln;

    .line 11042
    invoke-virtual {v0}, Lgln;->b()V

    goto/16 :goto_0

    .line 2138
    :catch_1
    move-exception v0

    .line 2139
    iget-object v1, p0, Lgln$2;->b:Lgln;

    iget-object v2, p0, Lgln$2;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const-string/jumbo v3, "checkSpaceMessage"

    const-string/jumbo v4, "throw exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lgln;->a(Lgln;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lgln$2;->b:Lgln;

    iget-object v1, p0, Lgln$2;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    const-string/jumbo v2, "checkSpaceMessage"

    invoke-static {v0, v1, v2, p1, p2}, Lgln;->a(Lgln;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lgln$2;->b:Lgln;

    .line 1042
    iget-object v0, v0, Lgln;->c:Lcma;

    .line 153
    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lgln$2;->b:Lgln;

    .line 2042
    iget-object v0, v0, Lgln;->c:Lcma;

    .line 154
    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 148
    return-void
.end method
