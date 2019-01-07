.class final Lpr$1$1;
.super Luv;
.source "AttachmentDownloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpr$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpr$1;


# direct methods
.method constructor <init>(Lpr$1;)V
    .locals 0
    .param p1, "this$1"    # Lpr$1;

    .prologue
    .line 141
    iput-object p1, p0, Lpr$1$1;->a:Lpr$1;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public final fetchAttachmentFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "exception"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-super/range {p0 .. p5}, Luv;->fetchAttachmentFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AttachmentDownloadControllerfetchAttachmentPart:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->g(Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lpr$1$1;->a:Lpr$1;

    iget-object v0, v0, Lpr$1;->c:Lpr;

    .line 7064
    iget-object v0, v0, Lpr;->b:Lyc;

    .line 191
    const/4 v1, 0x2

    iput v1, v0, Lyc;->c:I

    .line 192
    iget-object v0, p0, Lpr$1$1;->a:Lpr$1;

    iget-object v0, v0, Lpr$1;->c:Lpr;

    .line 8064
    iget-object v0, v0, Lpr;->c:Lya;

    .line 192
    iget-object v1, p0, Lpr$1$1;->a:Lpr$1;

    iget-object v1, v1, Lpr$1;->c:Lpr;

    .line 9064
    iget-object v1, v1, Lpr;->b:Lyc;

    .line 192
    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 193
    return-void
.end method

.method public final fetchAttachmentFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 19
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    .prologue
    .line 158
    invoke-super/range {p0 .. p5}, Luv;->fetchAttachmentFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLcom/alibaba/alimei/emailcommon/mail/Message;)V

    .line 159
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "AttachmentDownloadControllerfetchAttachmentPart finish:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lzb;->g(Ljava/lang/String;)I

    .line 163
    :try_start_0
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-static {v9, v0}, Lvj;->a(Landroid/content/Context;Lcom/alibaba/alimei/emailcommon/mail/Message;)Lvj$i;

    move-result-object v8

    .line 164
    .local v8, "viewableContainer":Lvj$i;
    iget-object v7, v8, Lvj$i;->g:Ljava/util/List;

    .line 165
    .local v7, "parts":Ljava/util/List;, "Ljava/util/List<Lvs;>;"
    if-eqz v7, :cond_3

    .line 166
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 167
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvs;

    .line 168
    .local v6, "part":Lvs;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Lvs;->a()Lvp;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Lvs;->a()Lvp;

    move-result-object v9

    instance-of v9, v9, Lvd;

    if-eqz v9, :cond_0

    .line 169
    invoke-interface {v6}, Lvs;->a()Lvp;

    move-result-object v4

    check-cast v4, Lvd;

    .line 2080
    .local v4, "fileBody":Lvd;
    iget-object v3, v4, Lvd;->b:Ljava/io/File;

    .line 171
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 172
    move-object/from16 v0, p0

    iget-object v9, v0, Lpr$1$1;->a:Lpr$1;

    iget-object v9, v9, Lpr$1;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 166
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileBody":Lvd;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 176
    .end local v6    # "part":Lvs;
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lpr$1$1;->a:Lpr$1;

    iget-object v11, v9, Lpr$1;->c:Lpr;

    move-object/from16 v0, p0

    iget-object v9, v0, Lpr$1$1;->a:Lpr$1;

    iget-object v12, v9, Lpr$1;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 3242
    new-instance v13, Lcom/alibaba/alimei/orm/query/Update;

    const-class v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    const-string/jumbo v10, "EmailProvider.db"

    const-string/jumbo v14, "Attachment"

    invoke-direct {v13, v9, v10, v14}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    const/4 v9, 0x1

    .line 3244
    const/4 v9, 0x0

    .line 3246
    invoke-static {v12}, Lpr;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Landroid/net/Uri;

    move-result-object v10

    .line 3247
    if-eqz v10, :cond_2

    .line 3248
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3250
    :cond_2
    const/4 v10, 0x3

    .line 3253
    const-string/jumbo v14, "contentUri"

    invoke-virtual {v13, v14, v9}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3254
    const-string/jumbo v14, "uiState"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v14, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3255
    const-string/jumbo v10, "_id=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-wide v0, v12, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v13, v10, v14}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3257
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 3260
    iput-object v9, v12, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 3261
    iget-object v9, v11, Lpr;->b:Lyc;

    iput-object v12, v9, Lyc;->g:Ljava/lang/Object;

    .line 3262
    iget-object v9, v11, Lpr;->b:Lyc;

    const/4 v10, 0x1

    iput v10, v9, Lyc;->c:I

    .line 3266
    iget-object v9, v11, Lpr;->c:Lya;

    iget-object v10, v11, Lpr;->b:Lyc;

    invoke-interface {v9, v10}, Lya;->a(Lyc;)V
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v5    # "i":I
    .end local v7    # "parts":Ljava/util/List;, "Ljava/util/List<Lvs;>;"
    .end local v8    # "viewableContainer":Lvj$i;
    :cond_3
    :goto_1
    return-void

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    move-object/from16 v0, p0

    iget-object v9, v0, Lpr$1$1;->a:Lpr$1;

    iget-object v9, v9, Lpr$1;->c:Lpr;

    .line 4064
    iget-object v9, v9, Lpr;->b:Lyc;

    .line 179
    const/4 v10, 0x2

    iput v10, v9, Lyc;->c:I

    .line 180
    move-object/from16 v0, p0

    iget-object v9, v0, Lpr$1$1;->a:Lpr$1;

    iget-object v9, v9, Lpr$1;->c:Lpr;

    .line 5064
    iget-object v9, v9, Lpr;->c:Lya;

    .line 180
    move-object/from16 v0, p0

    iget-object v10, v0, Lpr$1$1;->a:Lpr$1;

    iget-object v10, v10, Lpr$1;->c:Lpr;

    .line 6064
    iget-object v10, v10, Lpr;->b:Lyc;

    .line 180
    invoke-interface {v9, v10}, Lya;->a(Lyc;)V

    .line 181
    const-string/jumbo v9, "fetchAttachment"

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/Account;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/Account;->o()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v12

    invoke-virtual {v12}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v10, v11, v12, v13}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string/jumbo v9, "AttachmentDownloadController"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "fetchAttachment exception"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final fetchAttachmentProgress(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JI)V
    .locals 5
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "progress"    # I

    .prologue
    .line 151
    invoke-super/range {p0 .. p5}, Luv;->fetchAttachmentProgress(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JI)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AttachmentDownloadController fetchAttachmentPart progress : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->g(Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lpr$1$1;->a:Lpr$1;

    iget-object v0, v0, Lpr$1;->c:Lpr;

    .line 1270
    const/16 v1, 0x64

    if-gt p5, v1, :cond_0

    if-ltz p5, :cond_0

    .line 1271
    iget-object v1, v0, Lpr;->b:Lyc;

    const/4 v2, 0x3

    iput v2, v1, Lyc;->c:I

    .line 1272
    iget-object v1, v0, Lpr;->b:Lyc;

    iput p5, v1, Lyc;->d:I

    .line 1273
    iget-object v1, v0, Lpr;->b:Lyc;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lyc;->e:J

    .line 1274
    iget-object v1, v0, Lpr;->c:Lya;

    iget-object v0, v0, Lpr;->b:Lyc;

    invoke-interface {v1, v0}, Lya;->a(Lyc;)V

    .line 154
    :cond_0
    return-void
.end method

.method public final fetchAttachmentStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "partId"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-super/range {p0 .. p5}, Luv;->fetchAttachmentStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AttachmentDownloadControllerfetchAttachmentPart start:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->g(Ljava/lang/String;)I

    .line 147
    return-void
.end method
