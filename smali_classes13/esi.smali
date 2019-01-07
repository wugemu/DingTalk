.class public final Lesi;
.super Ljava/lang/Object;
.source "RecommendBatch.java"


# instance fields
.field public a:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

.field public b:Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;

.field public c:Z

.field public d:Z

.field public e:Lesh;

.field public f:Lesg;

.field public g:Z

.field public h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static a(Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;)Lesg;
    .locals 8
    .param p0, "pushGroupResultObject"    # Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;

    .prologue
    .line 149
    if-nez p0, :cond_1

    .line 150
    const-string/jumbo v5, "parsePushGroupResultObject is null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 4073
    const-string/jumbo v7, "search_rec"

    invoke-static {v7, v5, v6}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    const/4 v3, 0x0

    .line 180
    :cond_0
    :goto_0
    return-object v3

    .line 153
    :cond_1
    new-instance v3, Lesg;

    invoke-direct {v3}, Lesg;-><init>()V

    .line 154
    .local v3, "pushGroupInfo":Lesg;
    const/4 v0, 0x0

    .line 155
    .local v0, "addedGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    const/4 v1, 0x0

    .line 157
    .local v1, "deleteGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    iget-object v2, p0, Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;->objectList:Ljava/util/List;

    .line 159
    .local v2, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 161
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;

    .line 162
    .local v4, "pushGroupObject":Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;
    if-eqz v4, :cond_2

    .line 165
    iget-object v6, v4, Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;->syncType:Ljava/lang/String;

    .line 5015
    const-string/jumbo v7, "ADD"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 165
    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;->object:Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    if-eqz v6, :cond_4

    .line 166
    if-nez v0, :cond_3

    .line 167
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "addedGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 169
    .restart local v0    # "addedGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    :cond_3
    iget-object v6, v4, Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;->object:Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 170
    :cond_4
    iget-object v6, v4, Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;->syncType:Ljava/lang/String;

    .line 5019
    const-string/jumbo v7, "DELETE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 170
    if-eqz v6, :cond_2

    iget-object v6, v4, Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;->object:Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    if-eqz v6, :cond_2

    .line 171
    if-nez v1, :cond_5

    .line 172
    new-instance v1, Ljava/util/LinkedList;

    .end local v1    # "deleteGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 174
    .restart local v1    # "deleteGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;>;"
    :cond_5
    iget-object v6, v4, Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;->object:Lcom/alibaba/android/search/model/idl/objects/GroupIntimacyPushObject;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    .end local v4    # "pushGroupObject":Lcom/alibaba/android/search/model/idl/objects/PushGroupObject;
    :cond_6
    iput-object v0, v3, Lesg;->a:Ljava/util/List;

    .line 178
    iput-object v1, v3, Lesg;->b:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 70
    iget-boolean v0, p0, Lesi;->i:Z

    if-eqz v0, :cond_0

    .line 71
    const-string/jumbo v0, "executed"

    new-array v1, v7, [Ljava/lang/Object;

    .line 1073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2237
    :goto_0
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lesi;->i:Z

    .line 76
    iget-object v0, p0, Lesi;->a:Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;

    .line 1115
    if-nez v0, :cond_1

    .line 1116
    const-string/jumbo v0, "parsePushUserResultObject is null"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Letc;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :goto_1
    iput-object v1, p0, Lesi;->e:Lesh;

    .line 77
    iget-object v0, p0, Lesi;->b:Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;

    invoke-static {v0}, Lesi;->a(Lcom/alibaba/android/search/model/idl/objects/PushGroupResultObject;)Lesg;

    move-result-object v0

    iput-object v0, p0, Lesi;->f:Lesg;

    .line 78
    invoke-static {}, Lesm;->a()Lesm;

    move-result-object v0

    .line 2235
    if-nez p0, :cond_8

    .line 2236
    const-string/jumbo v0, "recommendBatch is null"

    new-array v1, v7, [Ljava/lang/Object;

    .line 3073
    const-string/jumbo v2, "search_rec"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1120
    :cond_1
    new-instance v3, Lesh;

    invoke-direct {v3}, Lesh;-><init>()V

    .line 1124
    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserResultObject;->objectList:Ljava/util/List;

    .line 1125
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;

    .line 1127
    if-eqz v0, :cond_2

    .line 1130
    iget-object v5, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;->synType:Ljava/lang/String;

    .line 2015
    const-string/jumbo v6, "ADD"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1130
    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;->obj:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-eqz v5, :cond_4

    .line 1131
    if-nez v2, :cond_3

    .line 1132
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1134
    :cond_3
    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;->obj:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1135
    :cond_4
    iget-object v5, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;->synType:Ljava/lang/String;

    .line 2019
    const-string/jumbo v6, "DELETE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1135
    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;->obj:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    if-eqz v5, :cond_2

    .line 1136
    if-nez v1, :cond_5

    .line 1137
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1139
    :cond_5
    iget-object v0, v0, Lcom/alibaba/android/search/model/idl/objects/PushUserObject;->obj:Lcom/alibaba/android/search/model/idl/objects/UserIntimacyPushObject;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1142
    :cond_6
    iput-object v2, v3, Lesh;->a:Ljava/util/List;

    .line 1143
    iput-object v1, v3, Lesh;->b:Ljava/util/List;

    :cond_7
    move-object v1, v3

    .line 1145
    goto/16 :goto_1

    .line 2239
    :cond_8
    new-instance v1, Lesm$4;

    invoke-direct {v1, v0, p0}, Lesm$4;-><init>(Lesm;Lesi;)V

    invoke-virtual {v0, v1}, Lesm;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
