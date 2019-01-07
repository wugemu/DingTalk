.class public Lcom/alibaba/alimei/sdk/datasource/impl/AttachmentDatasourceImpl;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "AttachmentDatasourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/framework/datasource/IDatasource;
.implements Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;


# static fields
.field private static final ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 268
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/sdk/datasource/impl/AttachmentDatasourceImpl;->ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    .line 39
    return-void
.end method

.method public static buildAttachment(JJLcom/alibaba/alimei/restfulapi/data/Attach;I)Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    .locals 4
    .param p0, "accountId"    # J
    .param p2, "messageKey"    # J
    .param p4, "attach"    # Lcom/alibaba/alimei/restfulapi/data/Attach;
    .param p5, "attachType"    # I

    .prologue
    .line 240
    if-eqz p4, :cond_0

    .line 241
    new-instance v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;-><init>()V

    .line 242
    .local v0, "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    iput-wide p0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mAccountKey:J

    .line 243
    iget-object v1, p4, Lcom/alibaba/alimei/restfulapi/data/Attach;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mAttachmentId:Ljava/lang/String;

    .line 244
    iput-wide p2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mMessageKey:J

    .line 245
    iget-object v1, p4, Lcom/alibaba/alimei/restfulapi/data/Attach;->tempLocation:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentUri:Ljava/lang/String;

    .line 246
    iget-object v1, p4, Lcom/alibaba/alimei/restfulapi/data/Attach;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mFileName:Ljava/lang/String;

    .line 247
    iget-object v1, p4, Lcom/alibaba/alimei/restfulapi/data/Attach;->name:Ljava/lang/String;

    invoke-static {v1}, Lair;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mMimeType:Ljava/lang/String;

    .line 248
    iget v1, p4, Lcom/alibaba/alimei/restfulapi/data/Attach;->size:I

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mSize:J

    .line 249
    iget v1, p4, Lcom/alibaba/alimei/restfulapi/data/Attach;->width:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mImageWidth:I

    .line 250
    iget v1, p4, Lcom/alibaba/alimei/restfulapi/data/Attach;->height:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mImageHeight:I

    .line 251
    iget-object v1, p4, Lcom/alibaba/alimei/restfulapi/data/Attach;->contentId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentId:Ljava/lang/String;

    .line 252
    iput p5, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->attachmentType:I

    .line 255
    iget-object v1, p4, Lcom/alibaba/alimei/restfulapi/data/Attach;->originId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originId:Ljava/lang/String;

    .line 256
    iget-object v1, p4, Lcom/alibaba/alimei/restfulapi/data/Attach;->originSpaceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originSpaceId:Ljava/lang/String;

    .line 257
    iget-object v1, p4, Lcom/alibaba/alimei/restfulapi/data/Attach;->originToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originToken:Ljava/lang/String;

    .line 260
    iget-object v1, p4, Lcom/alibaba/alimei/restfulapi/data/Attach;->contentType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->contentType:Ljava/lang/String;

    .line 261
    iget-object v1, p4, Lcom/alibaba/alimei/restfulapi/data/Attach;->partId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->partId:Ljava/lang/String;

    .line 262
    iget-object v1, p4, Lcom/alibaba/alimei/restfulapi/data/Attach;->encoding:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mEncoding:Ljava/lang/String;

    .line 265
    .end local v0    # "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static buildAttachment(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 176
    new-instance v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;-><init>()V

    .line 177
    .local v0, "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mAttachmentId:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentUri:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mMimeType:Ljava/lang/String;

    .line 180
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->flags:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mFlags:I

    .line 181
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mSize:J

    .line 182
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mFileName:Ljava/lang/String;

    .line 183
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->messageId:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mMessageKey:J

    .line 184
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->accountId:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mAccountKey:J

    .line 185
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mId:J

    .line 186
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentId:Ljava/lang/String;

    .line 187
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentType:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->attachmentType:I

    .line 189
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originId:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originSpaceId:Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originToken:Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->orgId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->orgId:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originAccount:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originAccount:Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->partId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->partId:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->contentType:Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->encoding:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mEncoding:Ljava/lang/String;

    .line 198
    return-object v0
.end method

.method public static buildAttachmentModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .locals 4
    .param p0, "attachment"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    .prologue
    .line 207
    new-instance v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/AttachmentModel;-><init>()V

    .line 208
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mAttachmentId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentUri:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mMimeType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentType:Ljava/lang/String;

    .line 211
    iget v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mFlags:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->flags:I

    .line 212
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mSize:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    .line 213
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mFileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    .line 214
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mMessageKey:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->messageId:J

    .line 215
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mAccountKey:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->accountId:J

    .line 216
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mId:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    .line 217
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    .line 218
    iget v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->attachmentType:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentType:I

    .line 220
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    .line 221
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originSpaceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originToken:Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->orgId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->orgId:Ljava/lang/String;

    .line 224
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originAccount:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originAccount:Ljava/lang/String;

    .line 226
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->partId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->partId:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->contentType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentType:Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mEncoding:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->encoding:Ljava/lang/String;

    .line 229
    return-object v0
.end method

.method public static loadAttachmentByUri(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 270
    new-instance v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    invoke-direct {v8}, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;-><init>()V

    .line 271
    .local v8, "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    .line 272
    .local v12, "name":Ljava/lang/String;
    iput-object v12, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mFileName:Ljava/lang/String;

    .line 274
    sget-object v4, Lcom/alibaba/alimei/sdk/datasource/impl/AttachmentDatasourceImpl;->ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 276
    .local v11, "metadataCursor":Landroid/database/Cursor;
    const-wide/16 v14, -0x1

    .line 277
    .local v14, "size":J
    if-eqz v11, :cond_1

    .line 279
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    .line 283
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-gez v2, :cond_2

    .line 290
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 291
    .local v13, "path":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 292
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v14

    .line 301
    .end local v10    # "file":Ljava/io/File;
    .end local v13    # "path":Ljava/lang/String;
    :cond_2
    :goto_0
    iput-object v12, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mFileName:Ljava/lang/String;

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentUri:Ljava/lang/String;

    .line 303
    iput-wide v14, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mSize:J

    .line 304
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lagd;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mMimeType:Ljava/lang/String;

    .line 305
    return-object v8

    .line 283
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 295
    :catch_0
    move-exception v9

    .line 296
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public deleteAttachmentByMessageId(JJ)V
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 109
    new-instance v0, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/AttachmentDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Attachment"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v0, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v1, "messageKey=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v1, "accountKey=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 113
    return-void
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    const-string/jumbo v0, "EmailProvider.db"

    return-object v0
.end method

.method public handleAttach(JJLjava/util/List;I)V
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J
    .param p6, "attachType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Attach;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p5, "attaches":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Attach;>;"
    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 160
    :cond_0
    return-void

    .line 152
    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/restfulapi/data/Attach;

    .local v4, "attach":Lcom/alibaba/alimei/restfulapi/data/Attach;
    move-wide v0, p1

    move-wide v2, p3

    move/from16 v5, p6

    .line 153
    invoke-static/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/datasource/impl/AttachmentDatasourceImpl;->buildAttachment(JJLcom/alibaba/alimei/restfulapi/data/Attach;I)Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    move-result-object v8

    .line 154
    .local v8, "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    invoke-virtual {v8}, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->save()J

    move-result-wide v6

    .line 155
    .local v6, "attachId":J
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Save Resource [serverId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/data/Attach;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ] fail!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleMessageAttachment(JJLjava/util/List;Ljava/util/List;)V
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p5, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    .local p6, "newAttachmentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v3, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/AttachmentDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Attachment"

    invoke-direct {v3, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v3, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v6, "messageKey=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 124
    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 125
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 126
    .local v4, "model":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    invoke-static {v4}, Lcom/alibaba/alimei/sdk/datasource/impl/AttachmentDatasourceImpl;->buildAttachment(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    move-result-object v0

    .line 127
    .local v0, "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    iput-wide p1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mAccountKey:J

    .line 128
    iput-wide p3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mMessageKey:J

    .line 129
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->save()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mId:J

    goto :goto_0

    .line 134
    .end local v0    # "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    .end local v4    # "model":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    :cond_0
    if-eqz p6, :cond_1

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 135
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAppContext()Landroid/content/Context;

    move-result-object v2

    .line 136
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 137
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 138
    .local v5, "uri":Landroid/net/Uri;
    invoke-static {v2, v1, v5}, Lcom/alibaba/alimei/sdk/datasource/impl/AttachmentDatasourceImpl;->loadAttachmentByUri(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    move-result-object v0

    .line 139
    .restart local v0    # "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    iput-wide p1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mAccountKey:J

    .line 140
    iput-wide p3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mMessageKey:J

    .line 141
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->save()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mId:J

    goto :goto_1

    .line 144
    .end local v0    # "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public queryAllAccountDownloadAttachment()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 88
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    const-string/jumbo v3, "EmailProvider.db"

    const-string/jumbo v4, "Attachment"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v1, "attachmentSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "contentUri IS NOT NULL "

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v0

    .line 91
    .local v0, "attaches":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;>;"
    return-object v0
.end method

.method public queryAllAttachment(JJI)Ljava/util/List;
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J
    .param p5, "attachmentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 57
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    const-string/jumbo v7, "EmailProvider.db"

    const-string/jumbo v8, "Attachment"

    invoke-direct {v4, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v4, "attachmentSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v6, "messageKey=?"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v6, "accountKey=?"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    if-eqz p5, :cond_0

    move/from16 v0, p5

    if-ne v9, v0, :cond_1

    .line 61
    :cond_0
    const-string/jumbo v6, "attachment_type"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_1
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v3

    .line 65
    .local v3, "attaches":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .local v2, "ams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    .line 68
    .local v1, "a":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    invoke-static {v1}, Lcom/alibaba/alimei/sdk/datasource/impl/AttachmentDatasourceImpl;->buildAttachmentModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    move-result-object v5

    .line 69
    .local v5, "m":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    .end local v1    # "a":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    .end local v2    # "ams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    .end local v5    # "m":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    :cond_2
    const/4 v2, 0x0

    :cond_3
    return-object v2
.end method

.method public queryAllInnerAttachment(JJ)Ljava/util/List;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 79
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    const-string/jumbo v3, "EmailProvider.db"

    const-string/jumbo v4, "Attachment"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v1, "attachmentSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "messageKey=?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v2, "accountKey=?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v0

    .line 83
    .local v0, "attaches":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;>;"
    return-object v0
.end method

.method public queryAttachmentByConentUri(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "conentUri"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    const-string/jumbo v3, "EmailProvider.db"

    const-string/jumbo v4, "Attachment"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v1, "attachmentSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "contentUri=?"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v2, "accountKey=?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    .line 100
    .local v0, "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    if-eqz v0, :cond_0

    .line 101
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/AttachmentDatasourceImpl;->buildAttachmentModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    move-result-object v2

    .line 103
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public queryAttachmentLocalUrl(JJJ)Ljava/lang/String;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J
    .param p5, "attachmentId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 166
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    const-string/jumbo v3, "EmailProvider.db"

    const-string/jumbo v4, "Attachment"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v1, "attachmentSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "contentUri"

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v2, "_id=?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v2, "messageKey=?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v2, "accountKey=?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    .line 172
    .local v0, "attachment":Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentUri:Ljava/lang/String;

    goto :goto_0
.end method

.method public queryAttachmentNumber(JJZ)I
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "messageId"    # J
    .param p5, "includeResourceAttachment"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "Attachment"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v0, "attachmentSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "messageKey=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v1, "accountKey=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    if-nez p5, :cond_0

    .line 49
    const-string/jumbo v1, "attachment_type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->count()I

    move-result v1

    return v1
.end method
