.class public final Lwh$e;
.super Lcom/alibaba/alimei/emailcommon/mail/Folder;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field c:Ljava/lang/String;

.field d:Lwh;

.field final synthetic e:Lwh;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lwh;Lwh;Ljava/lang/String;)V
    .locals 8
    .param p1, "this$0"    # Lwh;
    .param p2, "nStore"    # Lwh;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1203
    iput-object p1, p0, Lwh$e;->e:Lwh;

    .line 1204
    invoke-virtual {p2}, Lwh;->c()Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/alibaba/alimei/emailcommon/mail/Folder;-><init>(Lcom/alibaba/alimei/emailcommon/Account;)V

    .line 1192
    iput-boolean v6, p0, Lwh$e;->g:Z

    .line 1193
    iput v6, p0, Lwh$e;->h:I

    .line 1194
    iput v6, p0, Lwh$e;->i:I

    .line 1205
    iput-object p2, p0, Lwh$e;->d:Lwh;

    .line 1206
    iput-object p3, p0, Lwh$e;->f:Ljava/lang/String;

    .line 1208
    const-string/jumbo v5, "##DavMailSubmissionURI##"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2907
    iget-object v6, p1, Lwh;->b:Ljava/lang/String;

    .line 1210
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lwh$e;->c:Ljava/lang/String;

    .line 1261
    :goto_0
    return-void

    .line 1217
    :cond_0
    :try_start_0
    const-string/jumbo v5, "/"

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1218
    .local v4, "urlParts":[Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 1219
    .local v3, "url":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, v4

    .local v0, "count":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1221
    if-eqz v2, :cond_1

    .line 1223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v2

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1219
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1227
    :cond_1
    aget-object v5, v4, v2

    const-string/jumbo v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_2

    .line 1230
    :cond_2
    move-object v1, v3

    .line 1240
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "urlParts":[Ljava/lang/String;
    .local v1, "encodedName":Ljava/lang/String;
    :goto_3
    const-string/jumbo v5, "\\+"

    const-string/jumbo v6, "%20"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1250
    const-string/jumbo v5, "INBOX"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1252
    const-string/jumbo v1, "Inbox"

    .line 1254
    :cond_3
    invoke-static {p1}, Lwh;->a(Lwh;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lwh$e;->c:Ljava/lang/String;

    .line 1255
    invoke-static {p1}, Lwh;->a(Lwh;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lwh$e;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lwh$e;->c:Ljava/lang/String;

    .line 1259
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lwh$e;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lwh$e;->c:Ljava/lang/String;

    goto/16 :goto_0

    .line 1234
    .end local v1    # "encodedName":Ljava/lang/String;
    :catch_0
    move-exception v5

    sget-boolean v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 1235
    sget-object v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "UnsupportedEncodingException URLEncoding folder name, skipping encoded"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_5
    move-object v1, p3

    .restart local v1    # "encodedName":Ljava/lang/String;
    goto :goto_3
.end method

.method private a([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p1, "uids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 1542
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1543
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1544
    .local v1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lwh$b;

    iget-object v5, p0, Lwh$e;->e:Lwh;

    invoke-direct {v4, v5}, Lwh$b;-><init>(Lwh;)V

    .line 1548
    iget-object v4, p0, Lwh$e;->e:Lwh;

    invoke-static {v4, p1}, Lwh;->a(Lwh;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1549
    .local v2, "messageBody":Ljava/lang/String;
    const-string/jumbo v4, "Brief"

    const-string/jumbo v5, "t"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    iget-object v4, p0, Lwh$e;->e:Lwh;

    iget-object v5, p0, Lwh$e;->c:Ljava/lang/String;

    const-string/jumbo v6, "SEARCH"

    invoke-static {v4, v5, v6, v2, v1}, Lwh;->a(Lwh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lwh$b;

    move-result-object v0

    .line 1552
    .local v0, "dataset":Lwh$b;
    invoke-virtual {v0}, Lwh$b;->a()Ljava/util/HashMap;

    move-result-object v3

    .line 1554
    .local v3, "uidToUrl":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v3
.end method

.method private a([Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/String;Z)V
    .locals 14
    .param p1, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "isMove"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 1300
    array-length v1, p1

    new-array v11, v1, [Ljava/lang/String;

    .line 1302
    .local v11, "uids":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    array-length v7, p1

    .local v7, "count":I
    :goto_0
    if-ge v9, v7, :cond_0

    .line 1304
    aget-object v1, p1, v9

    invoke-virtual {v1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v9

    .line 1302
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1307
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1308
    .local v5, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v11}, Lwh$e;->a([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    .line 1309
    .local v10, "uidToUrl":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v1, v11

    new-array v12, v1, [Ljava/lang/String;

    .line 1311
    .local v12, "urls":[Ljava/lang/String;
    const/4 v9, 0x0

    array-length v7, v11

    :goto_1
    if-ge v9, v7, :cond_2

    .line 1313
    aget-object v1, v11, v9

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v12, v9

    .line 1314
    aget-object v1, v12, v9

    if-nez v1, :cond_1

    aget-object v1, p1, v9

    instance-of v1, v1, Lwh$h;

    if-eqz v1, :cond_1

    .line 1316
    aget-object v13, p1, v9

    check-cast v13, Lwh$h;

    .line 3164
    .local v13, "wdMessage":Lwh$h;
    iget-object v1, v13, Lwh$h;->s:Ljava/lang/String;

    .line 1317
    aput-object v1, v12, v9

    .line 1311
    .end local v13    # "wdMessage":Lwh$h;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1321
    :cond_2
    iget-object v1, p0, Lwh$e;->e:Lwh;

    move/from16 v0, p3

    invoke-static {v1, v12, v0}, Lwh;->a(Lwh;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1322
    .local v4, "messageBody":Ljava/lang/String;
    iget-object v1, p0, Lwh$e;->d:Lwh;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lwh;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v8

    check-cast v8, Lwh$e;

    .line 1323
    .local v8, "destFolder":Lwh$e;
    const-string/jumbo v1, "Destination"

    iget-object v2, v8, Lwh$e;->c:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    const-string/jumbo v1, "Brief"

    const-string/jumbo v2, "t"

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    const-string/jumbo v1, "If-Match"

    const-string/jumbo v2, "*"

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    if-eqz p3, :cond_3

    const-string/jumbo v3, "BMOVE"

    .line 1327
    .local v3, "action":Ljava/lang/String;
    :goto_2
    sget-object v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Moving "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " messages to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lwh$e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    iget-object v1, p0, Lwh$e;->e:Lwh;

    iget-object v2, p0, Lwh$e;->c:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lwh;->a(Lwh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lwh$b;

    .line 1330
    return-void

    .line 1326
    .end local v3    # "action":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "BCOPY"

    goto :goto_2
.end method

.method private a([Lcom/alibaba/alimei/emailcommon/mail/Message;Luu;)V
    .locals 13
    .param p1, "startMessages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "listener"    # Luu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/16 v12, 0x14

    .line 1736
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1737
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1738
    .local v2, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Lwh$b;

    iget-object v11, p0, Lwh$e;->e:Lwh;

    invoke-direct {v10, v11}, Lwh$b;-><init>(Lwh;)V

    .line 1740
    new-array v5, v12, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    .line 1743
    .local v5, "messages":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    if-eqz p1, :cond_0

    array-length v10, p1

    if-nez v10, :cond_1

    .line 1809
    :cond_0
    return-void

    .line 1749
    :cond_1
    array-length v10, p1

    if-le v10, v12, :cond_4

    .line 1751
    array-length v10, p1

    add-int/lit8 v10, v10, -0x14

    new-array v6, v10, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    .line 1752
    .local v6, "newMessages":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v0, p1

    .local v0, "count":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 1754
    if-ge v3, v12, :cond_2

    .line 1756
    aget-object v10, p1, v3

    aput-object v10, v5, v3

    .line 1752
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1760
    :cond_2
    add-int/lit8 v10, v3, -0x14

    aget-object v11, p1, v3

    aput-object v11, v6, v10

    goto :goto_1

    .line 1764
    :cond_3
    invoke-direct {p0, v6, p2}, Lwh$e;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;Luu;)V

    .line 1771
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v6    # "newMessages":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    :goto_2
    array-length v10, v5

    new-array v8, v10, [Ljava/lang/String;

    .line 1773
    .local v8, "uids":[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v0, v5

    .restart local v0    # "count":I
    :goto_3
    if-ge v3, v0, :cond_5

    .line 1775
    aget-object v10, v5, v3

    invoke-virtual {v10}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3

    .line 1773
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1768
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v8    # "uids":[Ljava/lang/String;
    :cond_4
    move-object v5, p1

    goto :goto_2

    .line 1778
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v8    # "uids":[Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lwh$e;->e:Lwh;

    invoke-static {v10, v8}, Lwh;->b(Lwh;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1779
    .local v4, "messageBody":Ljava/lang/String;
    const-string/jumbo v10, "Brief"

    const-string/jumbo v11, "t"

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    iget-object v10, p0, Lwh$e;->e:Lwh;

    iget-object v11, p0, Lwh$e;->c:Ljava/lang/String;

    const-string/jumbo v12, "SEARCH"

    invoke-static {v10, v11, v12, v4, v2}, Lwh;->a(Lwh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lwh$b;

    move-result-object v1

    .line 1782
    .local v1, "dataset":Lwh$b;
    if-nez v1, :cond_6

    .line 1784
    new-instance v10, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v11, Lcom/alibaba/alimei/framework/SDKError;->PARSE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v12, "Data Set from request was null"

    invoke-direct {v10, v11, v12}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v10

    .line 1787
    :cond_6
    invoke-virtual {v1}, Lwh$b;->b()Ljava/util/HashMap;

    move-result-object v7

    .line 1789
    .local v7, "uidToReadStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    array-length v0, v5

    :goto_4
    if-ge v3, v0, :cond_0

    .line 1791
    aget-object v10, v5, v3

    instance-of v10, v10, Lwh$h;

    if-nez v10, :cond_7

    .line 1793
    new-instance v10, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v11, Lcom/alibaba/alimei/framework/SDKError;->FETCH_NON_WEBDAV_MESSAGE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v12, "WebDavStore fetch called with non-WebDavMessage"

    invoke-direct {v10, v11, v12}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v10

    .line 1795
    :cond_7
    aget-object v9, v5, v3

    check-cast v9, Lwh$h;

    .line 1797
    .local v9, "wdMessage":Lwh$h;
    if-eqz p2, :cond_8

    .line 1799
    aget-object v10, v5, v3

    invoke-virtual {v10}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v10, v3, v0}, Luu;->messageStarted(Ljava/lang/String;II)V

    .line 1802
    :cond_8
    sget-object v11, Lcom/alibaba/alimei/emailcommon/mail/Flag;->SEEN:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    invoke-virtual {v9}, Lwh$h;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v9, v11, v10}, Lwh$h;->b(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 1804
    if-eqz p2, :cond_9

    .line 1806
    aget-object v10, v5, v3

    invoke-interface {p2, v10, v3, v0}, Luu;->messageFinished(Lcom/alibaba/alimei/emailcommon/mail/Message;II)V

    .line 1789
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method private a([Lcom/alibaba/alimei/emailcommon/mail/Message;Luu;I)V
    .locals 25
    .param p1, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "listener"    # Luu;
    .param p3, "lines"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lwh$e;->e:Lwh;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lwh;->d()Lwh$g;

    move-result-object v8

    .line 1610
    .local v8, "httpclient":Lwh$g;
    const/4 v10, 0x0

    .local v10, "i":I
    move-object/from16 v0, p1

    array-length v5, v0

    .local v5, "count":I
    :goto_0
    if-ge v10, v5, :cond_d

    .line 1613
    const/16 v17, 0x0

    .line 1615
    .local v17, "statusCode":I
    aget-object v21, p1, v10

    move-object/from16 v0, v21

    instance-of v0, v0, Lwh$h;

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 1617
    new-instance v21, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v22, Lcom/alibaba/alimei/framework/SDKError;->FETCH_NON_WEBDAV_MESSAGE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v23, "WebDavStore fetch called with non-WebDavMessage"

    invoke-direct/range {v21 .. v23}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v21

    .line 1620
    :cond_0
    aget-object v20, p1, v10

    check-cast v20, Lwh$h;

    .line 1622
    .local v20, "wdMessage":Lwh$h;
    if-eqz p2, :cond_1

    .line 1624
    invoke-virtual/range {v20 .. v20}, Lwh$h;->o()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v10, v5}, Luu;->messageStarted(Ljava/lang/String;II)V

    .line 4164
    :cond_1
    move-object/from16 v0, v20

    iget-object v0, v0, Lwh$h;->s:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1631
    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1633
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v20}, Lwh$h;->o()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lwh$e;->a([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Lwh$h;->o()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Lwh$h;->e(Ljava/lang/String;)V

    .line 1634
    sget-object v21, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "Fetching messages with UID = \'"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lwh$h;->o()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\', URL = \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 5164
    move-object/from16 v0, v20

    iget-object v0, v0, Lwh$h;->s:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1635
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6164
    move-object/from16 v0, v20

    iget-object v0, v0, Lwh$h;->s:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1636
    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 1638
    new-instance v21, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v22, Lcom/alibaba/alimei/framework/SDKError;->WEBDAV_MESSAGE_GET_URL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v23, "Unable to get URL for message"

    invoke-direct/range {v21 .. v23}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v21

    .line 1644
    :cond_2
    :try_start_0
    sget-object v21, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "Fetching message with UID = \'"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lwh$h;->o()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\', URL = \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 7164
    move-object/from16 v0, v20

    iget-object v0, v0, Lwh$h;->s:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1645
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    new-instance v21, Ljava/net/URI;

    .line 8164
    move-object/from16 v0, v20

    iget-object v0, v0, Lwh$h;->s:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1646
    invoke-direct/range {v21 .. v22}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 1650
    .local v9, "httpget":Lorg/apache/http/client/methods/HttpGet;
    const-string/jumbo v21, "translate"

    const-string/jumbo v22, "f"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v0, v0, Lwh$e;->e:Lwh;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lwh;->b(Lwh;)S

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 1653
    const-string/jumbo v21, "Authorization"

    move-object/from16 v0, p0

    iget-object v0, v0, Lwh$e;->e:Lwh;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lwh;->c(Lwh;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lwh$e;->e:Lwh;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lwh;->d(Lwh;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v9, v0}, Lwh$g;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 1657
    .local v15, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    .line 1659
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 1661
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    const/16 v21, 0xc8

    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    const/16 v21, 0x12c

    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    .line 1664
    :cond_4
    new-instance v21, Ljava/io/IOException;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "Error during with code "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " during fetch: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1665
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1699
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v11

    .line 1701
    .local v11, "iae":Ljava/lang/IllegalArgumentException;
    sget-boolean v21, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v21, :cond_5

    .line 1702
    sget-object v21, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "IllegalArgumentException caught "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\nTrace: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lwh$e;->e:Lwh;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v11}, Lwh;->a(Lwh;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :cond_5
    new-instance v21, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v22, Lcom/alibaba/alimei/framework/SDKError;->ILLEGAL_ARGUMENT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v23, "IllegalArgumentException caught"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v11}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 1668
    .end local v11    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v15    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    if-eqz v7, :cond_9

    .line 1671
    :try_start_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1675
    .local v4, "buffer":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 1677
    .local v6, "currentLines":I
    invoke-static {v7}, Lwh$g;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v13

    .line 1679
    .local v13, "istream":Ljava/io/InputStream;
    const/16 v21, -0x1

    move/from16 v0, p3

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 1681
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v22, 0x2000

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v14, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1683
    .local v14, "reader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .local v18, "tempText":Ljava/lang/String;
    if-eqz v18, :cond_7

    move/from16 v0, p3

    if-ge v6, v0, :cond_7

    .line 1686
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string/jumbo v22, "\r\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1687
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1690
    :cond_7
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 1691
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1692
    .local v16, "resultText":Ljava/lang/String;
    new-instance v13, Ljava/io/ByteArrayInputStream;

    .end local v13    # "istream":Ljava/io/InputStream;
    const-string/jumbo v21, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1695
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v16    # "resultText":Ljava/lang/String;
    .end local v18    # "tempText":Ljava/lang/String;
    .restart local v13    # "istream":Ljava/io/InputStream;
    :cond_8
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lwh$h;->a(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1723
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .end local v6    # "currentLines":I
    .end local v13    # "istream":Ljava/io/InputStream;
    :cond_9
    if-eqz p2, :cond_a

    .line 1725
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v10, v5}, Luu;->messageFinished(Lcom/alibaba/alimei/emailcommon/mail/Message;II)V

    .line 1610
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1706
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v19

    .line 1708
    .local v19, "use":Ljava/net/URISyntaxException;
    sget-boolean v21, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v21, :cond_b

    .line 1709
    sget-object v21, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "URISyntaxException caught "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\nTrace: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lwh$e;->e:Lwh;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lwh;->a(Lwh;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_b
    new-instance v21, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v22, Lcom/alibaba/alimei/framework/SDKError;->INVALID_WEBDAV_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v23, "URISyntaxException caught"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 1713
    .end local v19    # "use":Ljava/net/URISyntaxException;
    :catch_2
    move-exception v12

    .line 1715
    .local v12, "ioe":Ljava/io/IOException;
    sget-boolean v21, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v21, :cond_c

    .line 1716
    sget-object v21, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "Non-success response code loading message, response code was "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\nURL: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 9164
    move-object/from16 v0, v20

    iget-object v0, v0, Lwh$h;->s:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1717
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\nError: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "\nTrace: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lwh$e;->e:Lwh;

    move-object/from16 v23, v0

    .line 1718
    move-object/from16 v0, v23

    invoke-static {v0, v12}, Lwh;->a(Lwh;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1716
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    :cond_c
    new-instance v21, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v22, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v24, "Failure code "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v12}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 1728
    .end local v12    # "ioe":Ljava/io/IOException;
    .end local v17    # "statusCode":I
    .end local v20    # "wdMessage":Lwh$h;
    :cond_d
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "startUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 1969
    const-string/jumbo v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1970
    .local v2, "urlParts":[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 1971
    .local v0, "filename":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwh$e;->e:Lwh;

    invoke-static {v4}, Lwh;->a(Lwh;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Deleted%20Items/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1973
    .local v1, "finalUrl":Ljava/lang/String;
    return-object v1
.end method

.method private b([Lcom/alibaba/alimei/emailcommon/mail/Message;Luu;)V
    .locals 13
    .param p1, "startMessages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "listener"    # Luu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/16 v12, 0xa

    .line 1819
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1820
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1821
    .local v3, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Lwh$b;

    iget-object v11, p0, Lwh$e;->e:Lwh;

    invoke-direct {v10, v11}, Lwh$b;-><init>(Lwh;)V

    .line 1824
    new-array v6, v12, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    .line 1826
    .local v6, "messages":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    if-eqz p1, :cond_0

    array-length v10, p1

    if-nez v10, :cond_1

    .line 1889
    :cond_0
    return-void

    .line 1832
    :cond_1
    array-length v10, p1

    if-le v10, v12, :cond_4

    .line 1834
    array-length v10, p1

    add-int/lit8 v10, v10, -0xa

    new-array v7, v10, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    .line 1835
    .local v7, "newMessages":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v0, p1

    .local v0, "count":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 1837
    if-ge v4, v12, :cond_2

    .line 1839
    aget-object v10, p1, v4

    aput-object v10, v6, v4

    .line 1835
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1843
    :cond_2
    add-int/lit8 v10, v4, -0xa

    aget-object v11, p1, v4

    aput-object v11, v7, v10

    goto :goto_1

    .line 1847
    :cond_3
    invoke-direct {p0, v7, p2}, Lwh$e;->b([Lcom/alibaba/alimei/emailcommon/mail/Message;Luu;)V

    .line 1854
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v7    # "newMessages":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    :goto_2
    array-length v10, v6

    new-array v8, v10, [Ljava/lang/String;

    .line 1856
    .local v8, "uids":[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    array-length v0, v6

    .restart local v0    # "count":I
    :goto_3
    if-ge v4, v0, :cond_5

    .line 1858
    aget-object v10, v6, v4

    invoke-virtual {v10}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v4

    .line 1856
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1851
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v8    # "uids":[Ljava/lang/String;
    :cond_4
    move-object v6, p1

    goto :goto_2

    .line 1861
    .restart local v0    # "count":I
    .restart local v4    # "i":I
    .restart local v8    # "uids":[Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lwh$e;->e:Lwh;

    invoke-static {v10, v8}, Lwh;->c(Lwh;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1862
    .local v5, "messageBody":Ljava/lang/String;
    const-string/jumbo v10, "Brief"

    const-string/jumbo v11, "t"

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1863
    iget-object v10, p0, Lwh$e;->e:Lwh;

    iget-object v11, p0, Lwh$e;->c:Ljava/lang/String;

    const-string/jumbo v12, "SEARCH"

    invoke-static {v10, v11, v12, v5, v3}, Lwh;->a(Lwh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lwh$b;

    move-result-object v1

    .line 1865
    .local v1, "dataset":Lwh$b;
    invoke-virtual {v1}, Lwh$b;->e()Ljava/util/HashMap;

    move-result-object v2

    .line 1867
    .local v2, "envelopes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lwh$d;>;"
    array-length v0, v6

    .line 1868
    array-length v10, v6

    add-int/lit8 v4, v10, -0x1

    :goto_4
    if-ltz v4, :cond_0

    .line 1870
    aget-object v10, v6, v4

    instance-of v10, v10, Lwh$h;

    if-nez v10, :cond_6

    .line 1872
    new-instance v10, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v11, Lcom/alibaba/alimei/framework/SDKError;->FETCH_NON_WEBDAV_MESSAGE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v12, "WebDavStore fetch called with non-WebDavMessage"

    invoke-direct {v10, v11, v12}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v10

    .line 1874
    :cond_6
    aget-object v9, v6, v4

    check-cast v9, Lwh$h;

    .line 1876
    .local v9, "wdMessage":Lwh$h;
    if-eqz p2, :cond_7

    .line 1878
    aget-object v10, v6, v4

    invoke-virtual {v10}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v10, v4, v0}, Luu;->messageStarted(Ljava/lang/String;II)V

    .line 1881
    :cond_7
    invoke-virtual {v9}, Lwh$h;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lwh$d;

    invoke-virtual {v9, v10}, Lwh$h;->a(Lwh$d;)V

    .line 1882
    sget-object v11, Lcom/alibaba/alimei/emailcommon/mail/Flag;->SEEN:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    invoke-virtual {v9}, Lwh$h;->o()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lwh$d;

    .line 9333
    iget-boolean v10, v10, Lwh$d;->a:Z

    .line 1882
    invoke-virtual {v9, v11, v10}, Lwh$h;->b(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 1884
    if-eqz p2, :cond_8

    .line 1886
    aget-object v10, v6, v4

    invoke-interface {p2, v10, v4, v0}, Luu;->messageFinished(Lcom/alibaba/alimei/emailcommon/mail/Message;II)V

    .line 1868
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_4
.end method

.method private b([Ljava/lang/String;)V
    .locals 11
    .param p1, "uids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1942
    invoke-direct {p0, p1}, Lwh$e;->a([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    .line 1944
    .local v8, "uidToUrl":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v10, p1

    move v9, v5

    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v7, p1, v9

    .line 1946
    .local v7, "uid":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1947
    .local v4, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1948
    .local v1, "url":Ljava/lang/String;
    invoke-direct {p0, v1}, Lwh$e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1953
    .local v6, "destinationUrl":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1955
    const-string/jumbo v0, "Brief"

    const-string/jumbo v2, "t"

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    iget-object v0, p0, Lwh$e;->e:Lwh;

    const-string/jumbo v2, "DELETE"

    invoke-static/range {v0 .. v5}, Lwh;->a(Lwh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lwh$b;

    .line 1944
    :goto_1
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 1960
    :cond_0
    const-string/jumbo v0, "Destination"

    invoke-direct {p0, v1}, Lwh$e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1961
    const-string/jumbo v0, "Brief"

    const-string/jumbo v2, "t"

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    iget-object v0, p0, Lwh$e;->e:Lwh;

    const-string/jumbo v2, "MOVE"

    invoke-static/range {v0 .. v5}, Lwh;->a(Lwh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lwh$b;

    goto :goto_1

    .line 1965
    .end local v1    # "url":Ljava/lang/String;
    .end local v4    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "destinationUrl":Ljava/lang/String;
    .end local v7    # "uid":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Message;
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 1429
    new-instance v0, Lwh$h;

    iget-object v1, p0, Lwh$e;->e:Lwh;

    invoke-direct {v0, v1, p1, p0}, Lwh$h;-><init>(Lwh;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    return-object v0
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1274
    iget-object v0, p0, Lwh$e;->e:Lwh;

    invoke-virtual {v0}, Lwh;->d()Lwh$g;

    .line 1276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lwh$e;->g:Z

    .line 1277
    return-void
.end method

.method public final a([Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 0
    .param p1, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1979
    invoke-virtual {p0, p1}, Lwh$e;->b([Lcom/alibaba/alimei/emailcommon/mail/Message;)[Lcom/alibaba/alimei/emailcommon/mail/Message;

    .line 1980
    return-void
.end method

.method public final a([Lcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;Luu;)V
    .locals 1
    .param p1, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "fp"    # Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;
    .param p3, "listener"    # Luu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1567
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 1596
    :cond_0
    :goto_0
    return-void

    .line 1576
    :cond_1
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1578
    invoke-direct {p0, p1, p3}, Lwh$e;->b([Lcom/alibaba/alimei/emailcommon/mail/Message;Luu;)V

    .line 1583
    :cond_2
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1585
    invoke-direct {p0, p1, p3}, Lwh$e;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;Luu;)V

    .line 1588
    :cond_3
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1590
    iget-object v0, p0, Lwh$e;->a:Lcom/alibaba/alimei/emailcommon/Account;

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/Account;->n()I

    move-result v0

    div-int/lit8 v0, v0, 0x4c

    invoke-direct {p0, p1, p3, v0}, Lwh$e;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;Luu;I)V

    .line 1592
    :cond_4
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1594
    const/4 v0, -0x1

    invoke-direct {p0, p1, p3, v0}, Lwh$e;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;Luu;I)V

    goto :goto_0
.end method

.method public final a([Lcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/emailcommon/mail/Folder;)V
    .locals 2
    .param p1, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "folder"    # Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 1288
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lwh$e;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/String;Z)V

    .line 1289
    return-void
.end method

.method public final a([Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/String;)V
    .locals 1
    .param p1, "msgs"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1294
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lwh$e;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/String;Z)V

    .line 1295
    return-void
.end method

.method public final a([Lcom/alibaba/alimei/emailcommon/mail/Message;[Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V
    .locals 12
    .param p1, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "flags"    # [Lcom/alibaba/alimei/emailcommon/mail/Flag;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 1901
    array-length v0, p1

    new-array v9, v0, [Ljava/lang/String;

    .line 1903
    .local v9, "uids":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    array-length v6, p1

    .local v6, "count":I
    :goto_0
    if-ge v8, v6, :cond_0

    .line 1905
    aget-object v0, p1, v8

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8

    .line 1903
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move v10, v5

    .line 1908
    :goto_1
    if-gtz v10, :cond_4

    aget-object v7, p2, v5

    .line 1910
    .local v7, "flag":Lcom/alibaba/alimei/emailcommon/mail/Flag;
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/Flag;->SEEN:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    if-ne v7, v0, :cond_3

    .line 9924
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 9925
    invoke-direct {p0, v9}, Lwh$e;->a([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 9926
    array-length v0, v9

    new-array v3, v0, [Ljava/lang/String;

    .line 9928
    array-length v11, v9

    move v1, v5

    :goto_2
    if-ge v1, v11, :cond_1

    .line 9930
    aget-object v0, v9, v1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 9928
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 9933
    :cond_1
    iget-object v0, p0, Lwh$e;->e:Lwh;

    invoke-static {v0, v3, p3}, Lwh;->b(Lwh;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 9934
    const-string/jumbo v0, "Brief"

    const-string/jumbo v1, "t"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9935
    const-string/jumbo v0, "If-Match"

    const-string/jumbo v1, "*"

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9937
    iget-object v0, p0, Lwh$e;->e:Lwh;

    iget-object v1, p0, Lwh$e;->c:Ljava/lang/String;

    const-string/jumbo v2, "BPROPPATCH"

    invoke-static/range {v0 .. v5}, Lwh;->a(Lwh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)Lwh$b;

    .line 1908
    :cond_2
    :goto_3
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_1

    .line 1914
    :cond_3
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/Flag;->DELETED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    if-ne v7, v0, :cond_2

    .line 1916
    invoke-direct {p0, v9}, Lwh$e;->b([Ljava/lang/String;)V

    goto :goto_3

    .line 1919
    .end local v7    # "flag":Lcom/alibaba/alimei/emailcommon/mail/Flag;
    :cond_4
    return-void
.end method

.method public final a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1417
    const/4 v0, 0x1

    return v0
.end method

.method public final a(IIILuu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;
    .locals 1
    .param p1, "syncType"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "listener"    # Luu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1442
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(IILuu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;
    .locals 1
    .param p1, "startUid"    # I
    .param p2, "endUid"    # I
    .param p3, "listener"    # Luu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1435
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 1403
    const/4 v0, 0x1

    return v0
.end method

.method public final b([Lcom/alibaba/alimei/emailcommon/mail/Message;)[Lcom/alibaba/alimei/emailcommon/mail/Message;
    .locals 26
    .param p1, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1984
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-object/from16 v17, v0

    .line 1985
    .local v17, "retMessages":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    const/4 v8, 0x0

    .line 1987
    .local v8, "ind":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lwh$e;->e:Lwh;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lwh;->d()Lwh$g;

    move-result-object v6

    .line 1989
    .local v6, "httpclient":Lwh$g;
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    const/16 v19, 0x0

    move v9, v8

    .end local v8    # "ind":I
    .local v9, "ind":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    aget-object v11, p1, v19

    .line 2000
    .local v11, "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :try_start_0
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v11}, Lcom/alibaba/alimei/emailcommon/mail/Message;->f()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2002
    .local v14, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v21, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lwh$e;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 2003
    new-instance v13, Lvy;

    new-instance v21, Ljava/io/BufferedOutputStream;

    const/16 v22, 0x400

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v0, v14, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Lvy;-><init>(Ljava/io/OutputStream;)V

    .line 2005
    .local v13, "msgOut":Lvy;
    invoke-virtual {v11, v13}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/io/OutputStream;)V

    .line 2006
    invoke-virtual {v13}, Lvy;->flush()V

    .line 2008
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v4, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    .local v4, "bodyEntity":Lorg/apache/http/entity/StringEntity;
    const-string/jumbo v21, "message/rfc822"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 2011
    move-object/from16 v0, p0

    iget-object v12, v0, Lwh$e;->c:Ljava/lang/String;

    .line 2012
    .local v12, "messageURL":Ljava/lang/String;
    const-string/jumbo v21, "/"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 2014
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2016
    :cond_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ".eml"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2018
    sget-object v21, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "Uploading message as "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    new-instance v7, Lwh$c;

    move-object/from16 v0, p0

    iget-object v0, v0, Lwh$e;->e:Lwh;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v7, v0, v12}, Lwh$c;-><init>(Lwh;Ljava/lang/String;)V

    .line 2021
    .local v7, "httpmethod":Lwh$c;
    const-string/jumbo v21, "PUT"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lwh$c;->a(Ljava/lang/String;)V

    .line 2022
    invoke-virtual {v7, v4}, Lwh$c;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 2024
    move-object/from16 v0, p0

    iget-object v0, v0, Lwh$e;->e:Lwh;

    move-object/from16 v21, v0

    .line 10046
    move-object/from16 v0, v21

    iget-object v10, v0, Lwh;->c:Ljava/lang/String;

    .line 2026
    .local v10, "mAuthString":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 2028
    const-string/jumbo v21, "Authorization"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v10}, Lwh$c;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lwh$e;->e:Lwh;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lwh;->d(Lwh;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v7, v0}, Lwh$g;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 2032
    .local v15, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 2034
    .local v18, "statusCode":I
    const/16 v21, 0xc8

    move/from16 v0, v18

    move/from16 v1, v21

    if-lt v0, v1, :cond_2

    const/16 v21, 0x12c

    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    .line 2037
    :cond_2
    new-instance v19, Ljava/io/IOException;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "Error with status code "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " while sending/appending message.  Response = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 2039
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " for message "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2046
    .end local v4    # "bodyEntity":Lorg/apache/http/entity/StringEntity;
    .end local v7    # "httpmethod":Lwh$c;
    .end local v10    # "mAuthString":Ljava/lang/String;
    .end local v12    # "messageURL":Ljava/lang/String;
    .end local v13    # "msgOut":Lvy;
    .end local v14    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "statusCode":I
    :catch_0
    move-exception v5

    move v8, v9

    .line 2048
    .end local v9    # "ind":I
    .local v5, "e":Ljava/lang/Exception;
    .restart local v8    # "ind":I
    :goto_1
    new-instance v19, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v20, Lcom/alibaba/alimei/framework/SDKError;->WEBDAV_COMMAND_EXECUTE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v21, "Unable to append"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v5}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 2041
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "ind":I
    .restart local v4    # "bodyEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v7    # "httpmethod":Lwh$c;
    .restart local v9    # "ind":I
    .restart local v10    # "mAuthString":Ljava/lang/String;
    .restart local v12    # "messageURL":Ljava/lang/String;
    .restart local v13    # "msgOut":Lvy;
    .restart local v14    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "statusCode":I
    :cond_3
    :try_start_1
    new-instance v16, Lwh$h;

    move-object/from16 v0, p0

    iget-object v0, v0, Lwh$e;->e:Lwh;

    move-object/from16 v21, v0

    invoke-virtual {v11}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lwh$h;-><init>(Lwh;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    .line 2043
    .local v16, "retMessage":Lwh$h;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lwh$h;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2044
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "ind":I
    .restart local v8    # "ind":I
    :try_start_2
    aput-object v16, v17, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1989
    add-int/lit8 v19, v19, 0x1

    move v9, v8

    .end local v8    # "ind":I
    .restart local v9    # "ind":I
    goto/16 :goto_0

    .line 2051
    .end local v4    # "bodyEntity":Lorg/apache/http/entity/StringEntity;
    .end local v7    # "httpmethod":Lwh$c;
    .end local v10    # "mAuthString":Ljava/lang/String;
    .end local v11    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v12    # "messageURL":Ljava/lang/String;
    .end local v13    # "msgOut":Lvy;
    .end local v14    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "retMessage":Lwh$h;
    .end local v18    # "statusCode":I
    :cond_4
    return-object v17

    .line 2046
    .end local v9    # "ind":I
    .restart local v4    # "bodyEntity":Lorg/apache/http/entity/StringEntity;
    .restart local v7    # "httpmethod":Lwh$c;
    .restart local v8    # "ind":I
    .restart local v10    # "mAuthString":Ljava/lang/String;
    .restart local v11    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .restart local v12    # "messageURL":Ljava/lang/String;
    .restart local v13    # "msgOut":Lvy;
    .restart local v14    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "response":Lorg/apache/http/HttpResponse;
    .restart local v16    # "retMessage":Lwh$h;
    .restart local v18    # "statusCode":I
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public final c()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 1363
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {p0, v0}, Lwh$e;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 3335
    const/4 v0, 0x0

    .line 3336
    new-instance v1, Lwh$b;

    iget-object v2, p0, Lwh$e;->e:Lwh;

    invoke-direct {v1, v2}, Lwh$b;-><init>(Lwh;)V

    .line 3337
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3342
    const-string/jumbo v2, "True"

    .line 3349
    iget-object v3, p0, Lwh$e;->e:Lwh;

    invoke-static {v3, v2}, Lwh;->a(Lwh;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3350
    const-string/jumbo v3, "Brief"

    const-string/jumbo v4, "t"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3351
    iget-object v3, p0, Lwh$e;->e:Lwh;

    iget-object v4, p0, Lwh$e;->c:Ljava/lang/String;

    const-string/jumbo v5, "SEARCH"

    invoke-static {v3, v4, v5, v2, v1}, Lwh;->a(Lwh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lwh$b;

    move-result-object v1

    .line 3352
    if-eqz v1, :cond_0

    .line 3354
    invoke-virtual {v1}, Lwh$b;->d()I

    move-result v0

    .line 1364
    :cond_0
    iput v0, p0, Lwh$e;->h:I

    .line 1365
    iget v0, p0, Lwh$e;->h:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lwh$e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2057
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 2063
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1409
    iput v0, p0, Lwh$e;->h:I

    .line 1410
    iput v0, p0, Lwh$e;->i:I

    .line 1411
    iput-boolean v0, p0, Lwh$e;->g:Z

    .line 1412
    return-void
.end method
