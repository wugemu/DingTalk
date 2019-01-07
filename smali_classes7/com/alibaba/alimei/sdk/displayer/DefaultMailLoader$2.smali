.class Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$2;
.super Ljava/lang/Object;
.source "DefaultMailLoader.java"

# interfaces
.implements Lxm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->executeLoading(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V
    .locals 21
    .param p2, "dataGroup"    # Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    if-eqz v2, :cond_4

    move-object/from16 v18, p2

    .line 217
    check-cast v18, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    .line 218
    .local v18, "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    const-wide/16 v4, 0x0

    .line 219
    .local v4, "folderId":J
    const-wide/16 v6, 0x0

    .line 220
    .local v6, "firstUid":J
    const-wide/16 v8, 0x0

    .line 221
    .local v8, "lastUid":J
    const/16 v19, 0x0

    .line 223
    .local v19, "shouldSyncImapFlag":Z
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->hasValidFolder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$200(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V

    .line 227
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$300(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getChangeReason()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$300(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;->queryFirstUIModel()Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v16

    .line 230
    .local v16, "firstMailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$300(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;->queryLastUIModel()Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v17

    .line 231
    .local v17, "lastMailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v16, :cond_1

    if-eqz v17, :cond_1

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 232
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 233
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    .line 234
    const-wide/16 v6, 0x0

    .line 235
    const-wide/16 v8, 0x0

    .line 237
    :try_start_0
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->uid:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    :try_start_1
    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->uid:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :cond_1
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_5

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-eqz v2, :cond_5

    .line 251
    const/16 v19, 0x1

    .line 258
    .end local v16    # "firstMailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v17    # "lastMailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_2
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getChangeReason()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 259
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getAllAddedMails()Ljava/util/List;

    move-result-object v11

    .line 260
    .local v11, "addedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$400(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/lang/String;Ljava/util/List;)V

    .line 264
    .end local v11    # "addedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 288
    .end local v4    # "folderId":J
    .end local v6    # "firstUid":J
    .end local v8    # "lastUid":J
    .end local v18    # "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .end local v19    # "shouldSyncImapFlag":Z
    :cond_4
    :goto_3
    return-void

    .line 239
    .restart local v4    # "folderId":J
    .restart local v6    # "firstUid":J
    .restart local v8    # "lastUid":J
    .restart local v16    # "firstMailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .restart local v17    # "lastMailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .restart local v18    # "mailGroupModel":Lcom/alibaba/alimei/sdk/model/MailGroupModel;
    .restart local v19    # "shouldSyncImapFlag":Z
    :catch_0
    move-exception v2

    const-string/jumbo v2, "DefaultMailLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "executeLoading getFirstModel server is not long :"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :catch_1
    move-exception v2

    const-string/jumbo v2, "DefaultMailLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v20, "executeLoading getLastModel server is not long :"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 253
    :cond_5
    const/16 v19, 0x0

    goto :goto_2

    .line 268
    .end local v16    # "firstMailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v17    # "lastMailSnippetModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getAllAddedMails()Ljava/util/List;

    move-result-object v11

    .line 269
    .restart local v11    # "addedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getAllChangedMails()Ljava/util/List;

    move-result-object v13

    .line 270
    .local v13, "changedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getAllDeletedMails()Ljava/util/List;

    move-result-object v15

    .line 272
    .local v15, "deletedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {v2, v15}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$500(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/util/List;)Z

    move-result v14

    .line 274
    .local v14, "deleted":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {v2, v13}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$600(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/util/List;)Z

    move-result v12

    .line 276
    .local v12, "changed":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {v2, v11}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$700(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/util/List;)Z

    move-result v10

    .line 278
    .local v10, "added":Z
    if-nez v14, :cond_7

    if-nez v12, :cond_7

    if-eqz v10, :cond_8

    .line 281
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {v2, v11, v13, v15}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$100(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 284
    :cond_8
    if-eqz v19, :cond_4

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->access$800(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$2;->this$0:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    invoke-interface/range {v2 .. v9}, Lcom/alibaba/alimei/sdk/api/MailApi;->updateImapMailStatus(Ljava/lang/String;JJJ)V

    goto/16 :goto_3
.end method
