.class public final Lqy;
.super Lqj;
.source "SyncImapFoldersTask.java"


# instance fields
.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "isFullSync"    # Z

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lqj;-><init>()V

    .line 43
    iput-boolean v0, p0, Lqy;->e:Z

    .line 45
    iput-boolean v0, p0, Lqy;->f:Z

    .line 47
    iput-boolean v0, p0, Lqy;->g:Z

    .line 51
    iput-object p1, p0, Lqy;->a:Ljava/lang/String;

    .line 52
    iput-boolean p2, p0, Lqy;->d:Z

    .line 53
    return-void
.end method

.method static synthetic a(Lqy;Ljava/util/List;Lwl;Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;J)Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;
    .locals 12
    .param p0, "x0"    # Lqy;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lwl;
    .param p3, "x3"    # Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    .param p4, "x4"    # J

    .prologue
    .line 38
    .line 1118
    invoke-interface/range {p3 .. p5}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryAllMailbox(J)Ljava/util/List;

    move-result-object v1

    .line 1119
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1120
    if-eqz v1, :cond_0

    .line 1121
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 1122
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    const-string/jumbo v4, "SyncImapFoldersTask"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "local has folder:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1127
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1128
    if-eqz p1, :cond_1

    .line 1129
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/Folder;

    .line 1130
    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    const-string/jumbo v5, "SyncImapFoldersTask"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "remote has folder:"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1136
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    if-eqz v1, :cond_3

    .line 1138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 1140
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    const-string/jumbo v6, "local_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1144
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1145
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1151
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1152
    if-eqz p1, :cond_5

    .line 1153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/Folder;

    .line 1154
    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1155
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1160
    :cond_5
    new-instance v2, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;

    invoke-direct {v2}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;-><init>()V

    .line 1162
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;->setSyncType(I)V

    .line 1163
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    const-string/jumbo v0, "SyncImapFoldersTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "deleteList.size:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 1169
    iget v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v7, -0x4

    if-eq v6, v7, :cond_6

    iget v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_6

    .line 1171
    new-instance v6, Lcom/alibaba/alimei/restfulapi/data/Folder;

    invoke-direct {v6}, Lcom/alibaba/alimei/restfulapi/data/Folder;-><init>()V

    .line 1172
    iget-object v7, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    .line 1173
    iput-object v7, v6, Lcom/alibaba/alimei/restfulapi/data/Folder;->folderId:Ljava/lang/String;

    .line 1174
    iput-object v7, v6, Lcom/alibaba/alimei/restfulapi/data/Folder;->name:Ljava/lang/String;

    .line 1175
    iget v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    invoke-static {v0}, Laja;->d(I)I

    move-result v0

    iput v0, v6, Lcom/alibaba/alimei/restfulapi/data/Folder;->type:I

    .line 1176
    invoke-static {v7}, Lair;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/alibaba/alimei/restfulapi/data/Folder;->parentId:Ljava/lang/String;

    .line 1177
    const/4 v0, 0x3

    iput v0, v6, Lcom/alibaba/alimei/restfulapi/data/Folder;->action:I

    .line 1178
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1184
    :cond_7
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1187
    const/4 v0, 0x0

    .line 1189
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/Folder;

    .line 1191
    new-instance v7, Lcom/alibaba/alimei/restfulapi/data/Folder;

    invoke-direct {v7}, Lcom/alibaba/alimei/restfulapi/data/Folder;-><init>()V

    .line 1192
    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e()Ljava/lang/String;

    move-result-object v8

    .line 1193
    iput-object v8, v7, Lcom/alibaba/alimei/restfulapi/data/Folder;->folderId:Ljava/lang/String;

    .line 1291
    if-nez v0, :cond_a

    .line 1292
    const/4 v0, -0x1

    .line 1194
    :cond_8
    :goto_6
    iput v0, v7, Lcom/alibaba/alimei/restfulapi/data/Folder;->type:I

    .line 1195
    invoke-static {v8}, Lair;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alibaba/alimei/restfulapi/data/Folder;->parentId:Ljava/lang/String;

    .line 1196
    invoke-static {v8}, Lair;->q(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/alibaba/alimei/restfulapi/data/Folder;->level:I

    .line 1197
    iget-object v0, v7, Lcom/alibaba/alimei/restfulapi/data/Folder;->parentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1198
    invoke-static {v8}, Lair;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alibaba/alimei/restfulapi/data/Folder;->name:Ljava/lang/String;

    .line 1201
    iget-object v0, v7, Lcom/alibaba/alimei/restfulapi/data/Folder;->parentId:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1203
    iget-object v0, v7, Lcom/alibaba/alimei/restfulapi/data/Folder;->parentId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1204
    iget-object v0, v7, Lcom/alibaba/alimei/restfulapi/data/Folder;->parentId:Ljava/lang/String;

    iget-object v8, v7, Lcom/alibaba/alimei/restfulapi/data/Folder;->parentId:Ljava/lang/String;

    invoke-virtual {v4, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    iget-object v0, v7, Lcom/alibaba/alimei/restfulapi/data/Folder;->parentId:Ljava/lang/String;

    .line 5248
    new-instance v8, Lcom/alibaba/alimei/restfulapi/data/Folder;

    invoke-direct {v8}, Lcom/alibaba/alimei/restfulapi/data/Folder;-><init>()V

    .line 5249
    iput-object v0, v8, Lcom/alibaba/alimei/restfulapi/data/Folder;->folderId:Ljava/lang/String;

    .line 5250
    const/4 v9, -0x4

    iput v9, v8, Lcom/alibaba/alimei/restfulapi/data/Folder;->type:I

    .line 5251
    invoke-static {v0}, Lair;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/alibaba/alimei/restfulapi/data/Folder;->parentId:Ljava/lang/String;

    .line 5252
    invoke-static {v0}, Lair;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/alibaba/alimei/restfulapi/data/Folder;->name:Ljava/lang/String;

    .line 5253
    const/4 v0, 0x1

    iput v0, v8, Lcom/alibaba/alimei/restfulapi/data/Folder;->action:I

    .line 1207
    const-string/jumbo v0, "SyncImapFoldersTask"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "add folder:"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v8, Lcom/alibaba/alimei/restfulapi/data/Folder;->folderId:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, " with type:"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget v11, v8, Lcom/alibaba/alimei/restfulapi/data/Folder;->type:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1215
    :cond_9
    :goto_7
    const/4 v0, 0x1

    iput v0, v7, Lcom/alibaba/alimei/restfulapi/data/Folder;->action:I

    .line 1217
    const-string/jumbo v0, "SyncImapFoldersTask"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "add folder:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v7, Lcom/alibaba/alimei/restfulapi/data/Folder;->folderId:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, " with type:"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, v7, Lcom/alibaba/alimei/restfulapi/data/Folder;->type:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1220
    iget v0, v7, Lcom/alibaba/alimei/restfulapi/data/Folder;->type:I

    const/4 v7, 0x2

    if-ne v0, v7, :cond_24

    .line 1221
    const/4 v0, 0x1

    .line 1222
    const-string/jumbo v1, "SyncImapFoldersTask"

    const-string/jumbo v7, "found inbox, maybe first sync"

    invoke-static {v1, v7}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    move v1, v0

    .line 1224
    goto/16 :goto_5

    .line 1295
    :cond_a
    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e()Ljava/lang/String;

    move-result-object v9

    .line 1297
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1298
    const/4 v0, -0x1

    goto/16 :goto_6

    .line 2259
    :cond_b
    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->h()Ljava/util/List;

    move-result-object v0

    .line 2260
    if-eqz v0, :cond_f

    .line 2264
    const-string/jumbo v10, "\\sent"

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 2265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqy;->e:Z

    .line 2266
    const/4 v0, 0x5

    .line 1302
    :goto_9
    const/4 v10, 0x2

    if-ge v0, v10, :cond_8

    .line 1306
    if-eqz p2, :cond_14

    .line 1308
    invoke-interface {p2}, Lwl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1309
    const/4 v0, 0x2

    goto/16 :goto_6

    .line 2269
    :cond_c
    const-string/jumbo v10, "\\trash"

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqy;->g:Z

    .line 2271
    const/4 v0, 0x4

    goto :goto_9

    .line 2274
    :cond_d
    const-string/jumbo v10, "\\junk"

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 2275
    const/4 v0, 0x6

    goto :goto_9

    .line 2278
    :cond_e
    const-string/jumbo v10, "\\drafts"

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqy;->f:Z

    .line 2280
    const/4 v0, 0x3

    goto :goto_9

    .line 2283
    :cond_f
    const/4 v0, -0x1

    goto :goto_9

    .line 1313
    :cond_10
    invoke-interface {p2}, Lwl;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqy;->f:Z

    .line 1315
    const/4 v0, 0x3

    goto/16 :goto_6

    .line 1319
    :cond_11
    invoke-interface {p2}, Lwl;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqy;->e:Z

    .line 1321
    const/4 v0, 0x5

    goto/16 :goto_6

    .line 1325
    :cond_12
    invoke-interface {p2}, Lwl;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqy;->g:Z

    .line 1327
    const/4 v0, 0x4

    goto/16 :goto_6

    .line 1331
    :cond_13
    invoke-interface {p2}, Lwl;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1332
    const/4 v0, 0x6

    goto/16 :goto_6

    .line 3023
    :cond_14
    sget-object v0, Lwt;->d:Ljava/util/HashMap;

    if-nez v0, :cond_15

    .line 3024
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3025
    sput-object v0, Lwt;->d:Ljava/util/HashMap;

    const-string/jumbo v10, "INBOX"

    const-string/jumbo v11, "INBOX"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3027
    :cond_15
    sget-object v0, Lwt;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1336
    if-eqz v0, :cond_16

    .line 1337
    const/4 v0, 0x2

    goto/16 :goto_6

    .line 3070
    :cond_16
    sget-object v0, Lwt;->a:Ljava/util/HashMap;

    if-nez v0, :cond_17

    .line 3071
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3072
    sput-object v0, Lwt;->a:Ljava/util/HashMap;

    const-string/jumbo v10, "\u8349\u7a3f"

    const-string/jumbo v11, "\u8349\u7a3f"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3073
    sget-object v0, Lwt;->a:Ljava/util/HashMap;

    const-string/jumbo v10, "Drafts"

    const-string/jumbo v11, "Drafts"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3074
    sget-object v0, Lwt;->a:Ljava/util/HashMap;

    const-string/jumbo v10, "\u8349\u7a3f\u7bb1"

    const-string/jumbo v11, "\u8349\u7a3f\u7bb1"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3075
    sget-object v0, Lwt;->a:Ljava/util/HashMap;

    const-string/jumbo v10, "Draft"

    const-string/jumbo v11, "Draft"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3076
    sget-object v0, Lwt;->a:Ljava/util/HashMap;

    const-string/jumbo v10, "\u8349\u7a3f\u5939"

    const-string/jumbo v11, "\u8349\u7a3f\u5939"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3078
    :cond_17
    sget-object v0, Lwt;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1341
    if-eqz v0, :cond_18

    .line 1342
    const/4 v0, 0x3

    goto/16 :goto_6

    .line 4053
    :cond_18
    sget-object v0, Lwt;->c:Ljava/util/HashMap;

    if-nez v0, :cond_19

    .line 4054
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4055
    sput-object v0, Lwt;->c:Ljava/util/HashMap;

    const-string/jumbo v10, "\u5df2\u53d1\u9001"

    const-string/jumbo v11, "\u5df2\u53d1\u9001"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4056
    sget-object v0, Lwt;->c:Ljava/util/HashMap;

    const-string/jumbo v10, "Sent"

    const-string/jumbo v11, "Sent"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4057
    sget-object v0, Lwt;->c:Ljava/util/HashMap;

    const-string/jumbo v10, "Sent Messages"

    const-string/jumbo v11, "Sent Messages"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4058
    sget-object v0, Lwt;->c:Ljava/util/HashMap;

    const-string/jumbo v10, "Sent Items"

    const-string/jumbo v11, "Sent Items"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4059
    sget-object v0, Lwt;->c:Ljava/util/HashMap;

    const-string/jumbo v10, "\u5df2\u53d1\u9001\u90ae\u4ef6"

    const-string/jumbo v11, "\u5df2\u53d1\u9001\u90ae\u4ef6"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4061
    :cond_19
    sget-object v0, Lwt;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1346
    if-eqz v0, :cond_1a

    .line 1347
    const/4 v0, 0x5

    goto/16 :goto_6

    .line 5036
    :cond_1a
    sget-object v0, Lwt;->b:Ljava/util/HashMap;

    if-nez v0, :cond_1b

    .line 5037
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5038
    sput-object v0, Lwt;->b:Ljava/util/HashMap;

    const-string/jumbo v10, "\u5df2\u5220\u9664\u90ae\u4ef6"

    const-string/jumbo v11, "\u5df2\u5220\u9664\u90ae\u4ef6"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5039
    sget-object v0, Lwt;->b:Ljava/util/HashMap;

    const-string/jumbo v10, "Deleted"

    const-string/jumbo v11, "Deleted"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5040
    sget-object v0, Lwt;->b:Ljava/util/HashMap;

    const-string/jumbo v10, "\u5df2\u5220\u9664"

    const-string/jumbo v11, "\u5df2\u5220\u9664"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5041
    sget-object v0, Lwt;->b:Ljava/util/HashMap;

    const-string/jumbo v10, "Trash"

    const-string/jumbo v11, "Trash"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5042
    sget-object v0, Lwt;->b:Ljava/util/HashMap;

    const-string/jumbo v10, "Deleted Messages"

    const-string/jumbo v11, "Deleted Messages"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5044
    :cond_1b
    sget-object v0, Lwt;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1351
    if-eqz v0, :cond_1c

    .line 1352
    const/4 v0, 0x4

    goto/16 :goto_6

    .line 5087
    :cond_1c
    sget-object v0, Lwt;->e:Ljava/util/HashMap;

    if-nez v0, :cond_1d

    .line 5088
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5089
    sput-object v0, Lwt;->e:Ljava/util/HashMap;

    const-string/jumbo v10, "\u5783\u573e\u90ae\u4ef6"

    const-string/jumbo v11, "\u5783\u573e\u90ae\u4ef6"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5090
    sget-object v0, Lwt;->e:Ljava/util/HashMap;

    const-string/jumbo v10, "Junk"

    const-string/jumbo v11, "Junk"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5091
    sget-object v0, Lwt;->e:Ljava/util/HashMap;

    const-string/jumbo v10, "Junkmail"

    const-string/jumbo v11, "Junkmail"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5093
    sget-object v0, Lwt;->e:Ljava/util/HashMap;

    const-string/jumbo v10, "Bulk Mail"

    const-string/jumbo v11, "Bulk Mail"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5095
    :cond_1d
    sget-object v0, Lwt;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1356
    if-eqz v0, :cond_1e

    .line 1357
    const/4 v0, 0x6

    goto/16 :goto_6

    .line 1362
    :cond_1e
    const/16 v0, 0xc

    goto/16 :goto_6

    .line 1213
    :cond_1f
    iput-object v8, v7, Lcom/alibaba/alimei/restfulapi/data/Folder;->name:Ljava/lang/String;

    goto/16 :goto_7

    .line 1225
    :cond_20
    invoke-virtual {v2, v5}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;->setFolders(Ljava/util/List;)V

    .line 1227
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    move-result-object v0

    .line 1229
    if-eqz v1, :cond_22

    if-eqz v0, :cond_22

    .line 1230
    iget-boolean v1, p0, Lqy;->e:Z

    if-eqz v1, :cond_21

    iget-boolean v1, p0, Lqy;->g:Z

    if-eqz v1, :cond_21

    iget-boolean v1, p0, Lqy;->f:Z

    if-nez v1, :cond_23

    .line 1231
    :cond_21
    const-string/jumbo v1, "SyncImapFoldersTask"

    const-string/jumbo v3, "sent/draft/delete not found, show advance setting"

    invoke-static {v1, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-object v1, p0, Lqy;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->setShowAdvanceSetting(Ljava/lang/String;Z)V

    .line 38
    :cond_22
    :goto_a
    return-object v2

    .line 1234
    :cond_23
    const-string/jumbo v1, "SyncImapFoldersTask"

    const-string/jumbo v3, "sent/draft/delete found, hide advance setting"

    invoke-static {v1, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v1, p0, Lqy;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;->setShowAdvanceSetting(Ljava/lang/String;Z)V

    goto :goto_a

    :cond_24
    move v0, v1

    goto/16 :goto_8
.end method

.method private a(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p1, "exception"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 366
    new-instance v0, Lyc;

    const-string/jumbo v1, "basic_SyncFolder"

    iget-object v2, p0, Lqy;->a:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 367
    .local v0, "eventMessage":Lyc;
    iput-object p1, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 368
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    invoke-interface {v1, v0}, Lya;->a(Lyc;)V

    .line 369
    return-void
.end method

.method static synthetic a(Lqy;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p0, "x0"    # Lqy;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lqy;->a(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    return-void
.end method

.method static synthetic a(Lqy;)Z
    .locals 1
    .param p0, "x0"    # Lqy;

    .prologue
    .line 38
    iget-boolean v0, p0, Lqy;->d:Z

    return v0
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string/jumbo v0, "SyncImapFoldersTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 58
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    const-string/jumbo v1, "basic_SyncFolder"

    iget-object v2, p0, Lqy;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lya;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    invoke-virtual {p0}, Lqy;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    invoke-direct {p0, v0}, Lqy;->a(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 107
    :goto_0
    return v4

    .line 65
    :cond_0
    const-string/jumbo v0, "SyncImapFoldersTask"

    const-string/jumbo v1, "MessageController.getInstance().listFolders"

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lpw;->a()Lpw;

    move-result-object v0

    iget-object v1, p0, Lqy;->c:Lcom/alibaba/alimei/emailcommon/Account;

    new-instance v2, Lqy$1;

    invoke-direct {v2, p0}, Lqy$1;-><init>(Lqy;)V

    invoke-virtual {v0, v1, v2}, Lpw;->a(Lcom/alibaba/alimei/emailcommon/Account;Luv;)V

    goto :goto_0
.end method
