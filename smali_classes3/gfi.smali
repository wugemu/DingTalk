.class public final Lgfi;
.super Lgfj;
.source "NonGroupFilePresenter.java"


# instance fields
.field private c:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgfe$b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lgfe$b;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "spaceId"    # Ljava/lang/String;
    .param p4, "fileId"    # Ljava/lang/String;
    .param p5, "spaceType"    # I
    .param p6, "orgId"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lgfj;-><init>(Lgfe$b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgfi;->d:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgfi;->e:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgfi;->n:Ljava/util/ArrayList;

    .line 47
    iput-object p6, p0, Lgfi;->c:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    .local p2, "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p3, "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-nez p1, :cond_0

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 151
    :cond_0
    if-nez p2, :cond_1

    .line 152
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 154
    :cond_1
    if-nez p3, :cond_2

    .line 155
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 157
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 196
    :cond_3
    :goto_0
    return-void

    .line 5308
    :cond_4
    if-eqz p1, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5309
    :cond_5
    new-instance v15, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .local v15, "groupMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->d:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 164
    invoke-static/range {p2 .. p2}, Lgfi;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 165
    .local v16, "userMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->m:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->m:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->m:Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 8135
    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 9109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 166
    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lgfi;->a(Ljava/util/List;J)V

    .line 169
    :cond_7
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 173
    :cond_8
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v13, "allMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->d:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    invoke-interface {v13, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->j:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->k:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    invoke-static/range {p3 .. p3}, Lgfi;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 183
    .local v14, "deptMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->e:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->n:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->i:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->a:Lgfe$b;

    invoke-interface {v2, v13}, Lgfe$b;->b(Ljava/util/List;)V

    .line 190
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->j:Ljava/util/List;

    .line 191
    invoke-static {v2}, Lgfi;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->e:Ljava/util/List;

    .line 192
    invoke-static {v2}, Lgfi;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->d:Ljava/util/List;

    .line 193
    invoke-static {v2}, Lgfi;->i(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->c:Ljava/lang/String;

    .line 10109
    const-wide/16 v10, 0x0

    invoke-static {v2, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 194
    const/4 v12, 0x0

    move-object/from16 v2, p0

    .line 190
    invoke-virtual/range {v2 .. v12}, Lgfi;->a(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;JJLjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5311
    .end local v13    # "allMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    .end local v14    # "deptMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    .end local v15    # "groupMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    .end local v16    # "userMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    :cond_9
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5312
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Conversation;

    .line 5313
    if-eqz v2, :cond_a

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 5316
    new-instance v4, Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    const/4 v5, 0x1

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alibaba/dingtalk/cspace/functions/members/Member;-><init>(ILjava/lang/String;)V

    .line 5317
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v5

    .line 6155
    iput-object v5, v4, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 5318
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v5

    .line 6163
    iput-object v5, v4, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->e:Ljava/lang/String;

    .line 5319
    invoke-static {v2}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 5320
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->c(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v2

    .line 6171
    iput v2, v4, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->f:I

    .line 7151
    :cond_b
    iget-object v2, v4, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 5322
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    .line 7179
    :goto_2
    iput-boolean v2, v4, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->g:Z

    .line 5323
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5322
    :cond_c
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private static f(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    const/4 v4, 0x0

    .line 252
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 253
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    :cond_1
    return-object v1

    .line 255
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    .local v1, "deptMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 257
    .local v0, "dept":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v0, :cond_3

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    .line 260
    new-instance v2, Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/alibaba/dingtalk/cspace/functions/members/Member;-><init>(ILjava/lang/String;)V

    .line 261
    .local v2, "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 12147
    iput-object v3, v2, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->c:Ljava/lang/String;

    .line 262
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    .line 12155
    iput-object v3, v2, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 13151
    iget-object v3, v2, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 263
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    .line 13179
    :goto_1
    iput-boolean v3, v2, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->g:Z

    .line 264
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move v3, v4

    .line 263
    goto :goto_1
.end method

.method private static g(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "deptMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    const-wide/16 v6, 0x0

    .line 270
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 271
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    :cond_1
    return-object v2

    .line 273
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 274
    .local v2, "deptIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 275
    .local v3, "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    if-eqz v3, :cond_3

    .line 14131
    iget v5, v3, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    .line 275
    if-nez v5, :cond_3

    .line 14135
    iget-object v5, v3, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 15109
    invoke-static {v5, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 279
    .local v0, "deptId":J
    cmp-long v5, v0, v6

    if-lez v5, :cond_3

    .line 282
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static h(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "deptMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    const-wide/16 v8, 0x0

    .line 288
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    :cond_1
    return-object v3

    .line 291
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 292
    .local v3, "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 293
    .local v4, "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    if-eqz v4, :cond_3

    .line 15131
    iget v6, v4, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    .line 293
    if-nez v6, :cond_3

    .line 15135
    iget-object v6, v4, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 16109
    invoke-static {v6, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 297
    .local v0, "deptId":J
    cmp-long v6, v0, v8

    if-lez v6, :cond_3

    .line 300
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    .line 301
    .local v2, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iput-wide v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 302
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static i(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "groupMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 330
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    :cond_1
    return-object v0

    .line 332
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 333
    .local v0, "groupIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 334
    .local v1, "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    if-eqz v1, :cond_3

    .line 16135
    iget-object v3, v1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 334
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 17131
    iget v3, v1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    .line 334
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 17135
    iget-object v3, v1, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 337
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lgjp;)V
    .locals 14
    .param p1, "memberData"    # Lgjp;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lgfi;->b(Lgjp;)V

    .line 63
    if-eqz p1, :cond_3

    iget-object v7, p1, Lgjp;->e:Ljava/util/List;

    if-eqz v7, :cond_3

    iget-object v7, p1, Lgjp;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    iget-object v7, p1, Lgjp;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .local v1, "deptMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, p1, Lgjp;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .local v3, "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v7, p1, Lgjp;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgjn;

    .line 67
    .local v0, "dept":Lgjn;
    if-eqz v0, :cond_0

    iget-object v7, v0, Lgjn;->a:Ljava/lang/Long;

    .line 2044
    const-wide/16 v10, 0x0

    invoke-static {v7, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    .line 67
    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-lez v7, :cond_0

    .line 71
    new-instance v6, Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    const/4 v7, 0x0

    iget-object v9, v0, Lgjn;->a:Ljava/lang/Long;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lgjn;->b:Ljava/lang/String;

    invoke-direct {v6, v7, v9, v10}, Lcom/alibaba/dingtalk/cspace/functions/members/Member;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2151
    .local v6, "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    iget-object v7, v6, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->d:Ljava/lang/String;

    .line 72
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    .line 2179
    :goto_1
    iput-boolean v7, v6, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->g:Z

    .line 73
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    .line 76
    .local v2, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    iget-object v7, v0, Lgjn;->a:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 77
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    .end local v2    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 80
    .end local v0    # "dept":Lgjn;
    .end local v6    # "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    :cond_2
    iget-object v7, p0, Lgfi;->n:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 81
    iget-object v7, p0, Lgfi;->n:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 83
    iget-object v7, p0, Lgfi;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 84
    iget-object v7, p0, Lgfi;->e:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    .end local v1    # "deptMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    .end local v3    # "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    :cond_3
    if-eqz p1, :cond_6

    iget-object v7, p1, Lgjp;->f:Ljava/util/List;

    if-eqz v7, :cond_6

    iget-object v7, p1, Lgjp;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 88
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p1, Lgjp;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v5, "groupMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    iget-object v7, p1, Lgjp;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgjl;

    .line 90
    .local v4, "group":Lgjl;
    if-eqz v4, :cond_4

    iget-object v8, v4, Lgjl;->a:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 93
    new-instance v8, Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    const/4 v9, 0x1

    iget-object v10, v4, Lgjl;->a:Ljava/lang/String;

    iget-object v11, v4, Lgjl;->b:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v11}, Lcom/alibaba/dingtalk/cspace/functions/members/Member;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 95
    .end local v4    # "group":Lgjl;
    :cond_5
    iget-object v7, p0, Lgfi;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 96
    iget-object v7, p0, Lgfi;->d:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    .end local v5    # "groupMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    :cond_6
    iget-object v7, p0, Lgfi;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 100
    iget-object v7, p0, Lgfi;->i:Ljava/util/List;

    iget-object v8, p0, Lgfi;->j:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    iget-object v7, p0, Lgfi;->i:Ljava/util/List;

    iget-object v8, p0, Lgfi;->e:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    iget-object v7, p0, Lgfi;->i:Ljava/util/List;

    iget-object v8, p0, Lgfi;->d:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, v0, v0}, Lgfi;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 138
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lgfi;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 143
    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 52
    invoke-super {p0}, Lgfj;->b()V

    .line 53
    iget-object v0, p0, Lgfi;->a:Lgfe$b;

    iget-object v1, p0, Lgfi;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->dt_cspace_onlindoc_invite_contact:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgfe$b;->b(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lgfi;->a:Lgfe$b;

    iget-object v1, p0, Lgfi;->b:Landroid/content/Context;

    sget v2, Lfzs$h;->dt_cspace_onlindoc_invite_group:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgfe$b;->a(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lgfi;->l()V

    .line 56
    invoke-virtual {p0}, Lgfi;->k()V

    .line 57
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/functions/members/Member;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .local v17, "userMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .local v13, "deptMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .local v15, "groupMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/functions/members/Member;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/dingtalk/cspace/functions/members/Member;

    .line 208
    .local v16, "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    if-eqz v16, :cond_2

    .line 10135
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->b:Ljava/lang/String;

    .line 208
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 11131
    move-object/from16 v0, v16

    iget v3, v0, Lcom/alibaba/dingtalk/cspace/functions/members/Member;->a:I

    .line 211
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 216
    :pswitch_0
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    :pswitch_1
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    :pswitch_2
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 225
    .end local v16    # "member":Lcom/alibaba/dingtalk/cspace/functions/members/Member;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->j:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->e:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->d:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->i:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->i:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->i:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->a:Lgfe$b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lgfi;->i:Ljava/util/List;

    invoke-interface {v2, v3}, Lgfe$b;->a(Ljava/util/List;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->a:Lgfe$b;

    invoke-interface {v2}, Lgfe$b;->e()V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->j:Ljava/util/List;

    invoke-static {v2}, Lgfi;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    .line 236
    .local v18, "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->k:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->e:Ljava/util/List;

    invoke-static {v2}, Lgfi;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 240
    .local v14, "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 243
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->j:Ljava/util/List;

    .line 244
    invoke-static {v2}, Lgfi;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->e:Ljava/util/List;

    .line 245
    invoke-static {v2}, Lgfi;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->d:Ljava/util/List;

    .line 246
    invoke-static {v2}, Lgfi;->i(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lgfi;->c:Ljava/lang/String;

    .line 12109
    const-wide/16 v10, 0x0

    invoke-static {v2, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 247
    const/4 v12, 0x0

    move-object/from16 v2, p0

    .line 243
    invoke-virtual/range {v2 .. v12}, Lgfi;->a(ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;JJLjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 107
    invoke-super {p0}, Lgfj;->c()V

    .line 108
    iget-object v1, p0, Lgfi;->k:Ljava/util/ArrayList;

    .line 109
    .local v1, "requestUserObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v2, p0, Lgfi;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v2, :cond_0

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "requestUserObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v2, p0, Lgfi;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    .restart local v1    # "requestUserObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v2, p0, Lgfi;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    iget-object v2, p0, Lgfi;->l:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 115
    .local v0, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 116
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 117
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 118
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 119
    iget-object v2, p0, Lgfi;->b:Landroid/content/Context;

    sget v3, Lfzs$h;->dt_cspace_onlindoc_invite_contact:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 2322
    const-string/jumbo v2, "20180208"

    .line 120
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 121
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 122
    iget-object v2, p0, Lgfi;->c:Ljava/lang/String;

    .line 3109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 122
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(J)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 123
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 124
    iget-object v2, p0, Lgfi;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->g(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 125
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v3, p0, Lgfi;->a:Lgfe$b;

    invoke-interface {v3}, Lgfe$b;->h()Landroid/app/Activity;

    move-result-object v3

    .line 4053
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 125
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    .line 126
    return-void
.end method

.method public final d()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 130
    invoke-super {p0}, Lgfj;->d()V

    .line 131
    iget-object v0, p0, Lgfi;->a:Lgfe$b;

    invoke-interface {v0}, Lgfe$b;->h()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lgfi;->c:Ljava/lang/String;

    .line 4109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 131
    const/16 v4, 0x2710

    iget-object v0, p0, Lgfi;->b:Landroid/content/Context;

    sget v5, Lfzs$h;->dt_cspace_onlindoc_invite_group:I

    .line 132
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4322
    const-string/jumbo v6, "20180208"

    .line 132
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 131
    invoke-static/range {v1 .. v8}, Lfzu;->a(Landroid/app/Activity;JILjava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 133
    return-void
.end method
