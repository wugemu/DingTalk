.class public final Laiu;
.super Ljava/lang/Object;
.source "LegacyConversions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Ljava/util/ArrayList;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localMessage"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lvs;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvs;>;"
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->attachments:Ljava/util/List;

    .line 59
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvs;

    .line 1085
    .local v0, "attachmentPart":Lvs;
    new-instance v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    invoke-direct {v9}, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;-><init>()V

    .line 1088
    invoke-interface {v0}, Lvs;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lvj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1089
    const-string/jumbo v2, "name"

    invoke-static {v1, v2}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1092
    if-eqz v1, :cond_0

    .line 1231
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1232
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_a

    .line 1233
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1234
    const/16 v5, 0x80

    if-lt v4, v5, :cond_9

    const/4 v2, 0x0

    .line 1092
    :goto_2
    if-nez v2, :cond_0

    .line 1093
    invoke-interface {v0}, Lvs;->b()Ljava/lang/String;

    move-result-object v2

    .line 1094
    const-string/jumbo v3, "us-ascii"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1095
    const-string/jumbo v1, "us-ascii"

    const-string/jumbo v3, "gb2312"

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1096
    const-string/jumbo v2, "Content-Type"

    invoke-interface {v0, v2, v1}, Lvs;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-static {v1}, Lvj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1098
    const-string/jumbo v2, "name"

    invoke-static {v1, v2}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1102
    :cond_0
    if-nez v1, :cond_1

    .line 1103
    invoke-interface {v0}, Lvs;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lvj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1104
    const-string/jumbo v2, "filename"

    invoke-static {v1, v2}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1108
    :cond_1
    const-wide/16 v2, 0x0

    .line 1109
    invoke-interface {v0}, Lvs;->c()Ljava/lang/String;

    move-result-object v4

    .line 1110
    if-eqz v4, :cond_2

    .line 1111
    const-string/jumbo v5, "size"

    invoke-static {v4, v5}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1112
    if-eqz v4, :cond_2

    .line 1113
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1119
    :cond_2
    const-string/jumbo v4, "X-Android-Attachment-StoreData"

    invoke-interface {v0, v4}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1120
    if-eqz v4, :cond_b

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 1122
    :goto_3
    iput-object v1, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mFileName:Ljava/lang/String;

    .line 1123
    invoke-interface {v0}, Lvs;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mMimeType:Ljava/lang/String;

    .line 1124
    iput-wide v2, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mSize:J

    .line 1125
    invoke-interface {v0}, Lvs;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentId:Ljava/lang/String;

    .line 1126
    const/4 v1, 0x0

    iput-object v1, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentUri:Ljava/lang/String;

    .line 1127
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getId()J

    move-result-wide v2

    iput-wide v2, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mMessageKey:J

    .line 1128
    iput-object v4, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mLocation:Ljava/lang/String;

    .line 1129
    const-string/jumbo v1, "B"

    iput-object v1, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mEncoding:Ljava/lang/String;

    .line 1130
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->accountId:J

    iput-wide v2, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mAccountKey:J

    .line 1132
    const/4 v7, 0x0

    .line 1135
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAttachmentDatasource()Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->accountId:J

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getId()J

    move-result-wide v4

    const/4 v6, -0x1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->queryAllAttachment(JJI)Ljava/util/List;

    move-result-object v1

    .line 1137
    if-eqz v1, :cond_d

    .line 1138
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 1141
    iget-object v3, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    iget-object v4, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v3, v4}, Laiu;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1142
    iget-object v3, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentType:Ljava/lang/String;

    iget-object v4, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mMimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Laiu;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1143
    iget-object v3, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    iget-object v4, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentId:Ljava/lang/String;

    invoke-static {v3, v4}, Laiu;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1144
    iget-object v3, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    iget-object v4, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mLocation:Ljava/lang/String;

    invoke-static {v3, v4}, Laiu;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1146
    const/4 v2, 0x1

    .line 1147
    iget-wide v4, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    iput-wide v4, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mId:J

    move v1, v2

    .line 1154
    :goto_4
    if-nez v1, :cond_4

    .line 1155
    invoke-virtual {v9}, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->save()J

    move-result-wide v2

    .line 1156
    iput-wide v2, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mId:J

    .line 1160
    :cond_4
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->accountId:J

    .line 2187
    invoke-interface {v0}, Lvs;->a()Lvp;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2188
    iget-wide v4, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mId:J

    .line 2190
    invoke-interface {v0}, Lvs;->a()Lvp;

    move-result-object v1

    invoke-interface {v1}, Lvp;->f_()Ljava/io/InputStream;

    move-result-object v1

    .line 2192
    invoke-static {p0, v2, v3}, Lagd;->a(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v6

    .line 2193
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2194
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 2196
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lage;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 2197
    if-eqz v2, :cond_7

    .line 2200
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2201
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 2202
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2203
    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/support/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v3

    int-to-long v6, v3

    .line 2204
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 2205
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2208
    const/4 v1, 0x0

    .line 2209
    iget-wide v2, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v10, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mId:J

    invoke-static {v2, v10, v11}, Lage;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 2210
    if-eqz v2, :cond_6

    .line 2211
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2214
    :cond_6
    iput-wide v6, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mSize:J

    .line 2215
    iput-object v1, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentUri:Ljava/lang/String;

    .line 2217
    new-instance v2, Lcom/alibaba/alimei/orm/query/Update;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    const-string/jumbo v6, "EmailProvider.db"

    const-string/jumbo v7, "Attachment"

    invoke-direct {v2, v3, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    const-string/jumbo v3, "contentUri"

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2223
    const-string/jumbo v1, "uiState"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2224
    const-string/jumbo v1, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2225
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 1161
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasAttachment:Z

    .line 1162
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasResourceAttachment:Z

    .line 1164
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->attachments:Ljava/util/List;

    if-nez v1, :cond_8

    .line 1165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->attachments:Ljava/util/List;

    .line 1167
    :cond_8
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->attachments:Ljava/util/List;

    invoke-static {v9}, Lcom/alibaba/alimei/sdk/datasource/impl/AttachmentDatasourceImpl;->buildAttachmentModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasAttachment:Z

    goto/16 :goto_0

    .line 1232
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1236
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 1120
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 62
    .end local v0    # "attachmentPart":Lvs;
    :cond_c
    return-void

    .restart local v0    # "attachmentPart":Lvs;
    :cond_d
    move v1, v7

    goto/16 :goto_4
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 176
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    if-nez p0, :cond_2

    const-string/jumbo p0, ""

    .line 178
    :cond_2
    if-nez p1, :cond_3

    const-string/jumbo p1, ""

    .line 179
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
