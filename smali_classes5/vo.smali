.class public final Lvo;
.super Ljava/lang/Object;
.source "Address.java"


# static fields
.field private static final c:[Lvo;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [Lvo;

    sput-object v0, Lvo;->c:[Lvo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lvo;->a:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lvo;->a:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 p2, 0x0

    .line 61
    :cond_0
    if-eqz p2, :cond_1

    .line 63
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 65
    :cond_1
    iput-object p2, p0, Lvo;->b:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static a([Lvo;)Ljava/lang/String;
    .locals 3
    .param p0, "addresses"    # [Lvo;

    .prologue
    .line 399
    if-nez p0, :cond_0

    .line 401
    const/4 v2, 0x0

    .line 412
    :goto_0
    return-object v2

    .line 403
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 404
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 406
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lvo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 409
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 412
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[Lvo;
    .locals 13
    .param p0, "addressList"    # Ljava/lang/String;

    .prologue
    .line 137
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 138
    :cond_0
    sget-object v10, Lvo;->c:[Lvo;

    .line 221
    :goto_0
    return-object v10

    .line 140
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Lvo;>;"
    :try_start_0
    sget-object v10, Lkqa;->a:Lkqa;

    invoke-static {p0, v10}, Lkrm;->a(Ljava/lang/String;Lkqa;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v10

    .line 144
    invoke-virtual {v10}, Lorg/apache/james/mime4j/dom/address/AddressList;->flatten()Lorg/apache/james/mime4j/dom/address/MailboxList;

    move-result-object v9

    .line 146
    .local v9, "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual {v9}, Lorg/apache/james/mime4j/dom/address/MailboxList;->size()I

    move-result v3

    .local v3, "count":I
    :goto_1
    if-ge v6, v3, :cond_a

    .line 148
    invoke-virtual {v9, v6}, Lorg/apache/james/mime4j/dom/address/MailboxList;->get(I)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v1

    .line 149
    .local v1, "address":Lorg/apache/james/mime4j/dom/address/Address;
    instance-of v10, v1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    if-eqz v10, :cond_8

    .line 150
    move-object v0, v1

    check-cast v0, Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-object v7, v0

    .line 151
    .local v7, "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    invoke-virtual {v7}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 153
    .local v8, "name":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 154
    :try_start_1
    invoke-static {v8}, Lvj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "decodeTxt":Ljava/lang/String;
    move-object v8, v4

    .line 157
    .end local v4    # "decodeTxt":Ljava/lang/String;
    :cond_2
    new-instance v10, Lvo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 158
    invoke-virtual {v7}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v8}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 146
    .end local v7    # "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    .end local v8    # "name":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 161
    .restart local v7    # "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    .restart local v8    # "name":Ljava/lang/String;
    :catch_0
    move-exception v10

    :try_start_2
    new-instance v10, Lvo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 162
    invoke-virtual {v7}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v8}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 171
    .end local v1    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    .end local v3    # "count":I
    .end local v6    # "i":I
    .end local v7    # "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    :catch_1
    move-exception v5

    .line 174
    .local v5, "e":Lorg/apache/james/mime4j/field/address/parser/ParseException;
    :try_start_3
    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/address/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "doesn\'t have a corresponding Java charset"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 176
    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/address/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "Words in local part must be separated by"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 178
    :cond_4
    invoke-static {p0}, Lvj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3070
    :cond_5
    sget-object v10, Lkqa;->a:Lkqa;

    invoke-static {p0, v10}, Lkrm;->a(Ljava/lang/String;Lkqa;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v10

    .line 183
    invoke-virtual {v10}, Lorg/apache/james/mime4j/dom/address/AddressList;->flatten()Lorg/apache/james/mime4j/dom/address/MailboxList;

    move-result-object v9

    .line 185
    .restart local v9    # "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    invoke-virtual {v9}, Lorg/apache/james/mime4j/dom/address/MailboxList;->size()I

    move-result v3

    .restart local v3    # "count":I
    :goto_3
    if-ge v6, v3, :cond_a

    .line 187
    invoke-virtual {v9, v6}, Lorg/apache/james/mime4j/dom/address/MailboxList;->get(I)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v1

    .line 188
    .restart local v1    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    instance-of v10, v1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    if-eqz v10, :cond_9

    .line 189
    move-object v0, v1

    check-cast v0, Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-object v7, v0

    .line 190
    .restart local v7    # "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    invoke-virtual {v7}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getName()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v8

    .line 192
    .restart local v8    # "name":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 193
    :try_start_4
    invoke-static {v8}, Lvj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .restart local v4    # "decodeTxt":Ljava/lang/String;
    move-object v8, v4

    .line 196
    .end local v4    # "decodeTxt":Ljava/lang/String;
    :cond_6
    new-instance v10, Lvo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 197
    invoke-virtual {v7}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v8}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 185
    .end local v7    # "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    .end local v8    # "name":Ljava/lang/String;
    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 165
    .end local v5    # "e":Lorg/apache/james/mime4j/field/address/parser/ParseException;
    :cond_8
    :try_start_5
    sget-boolean v10, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 166
    sget-object v10, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Unknown address type from Mime4J: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 166
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 219
    .end local v1    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    .end local v3    # "count":I
    .end local v6    # "i":I
    .end local v9    # "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    :catch_2
    move-exception v10

    invoke-static {p0}, Lvo;->b(Ljava/lang/String;)[Lvo;

    move-result-object v10

    goto/16 :goto_0

    .line 200
    .restart local v1    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    .restart local v3    # "count":I
    .restart local v5    # "e":Lorg/apache/james/mime4j/field/address/parser/ParseException;
    .restart local v6    # "i":I
    .restart local v7    # "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    :catch_3
    move-exception v10

    :try_start_6
    new-instance v10, Lvo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 201
    invoke-virtual {v7}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v8}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 214
    .end local v1    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    .end local v3    # "count":I
    .end local v6    # "i":I
    .end local v7    # "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    :catch_4
    move-exception v10

    invoke-static {p0}, Lvo;->b(Ljava/lang/String;)[Lvo;

    move-result-object v10

    goto/16 :goto_0

    .line 204
    .restart local v1    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    .restart local v3    # "count":I
    .restart local v6    # "i":I
    .restart local v9    # "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    :cond_9
    :try_start_7
    sget-boolean v10, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v10, :cond_7

    .line 205
    sget-object v10, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Unknown address type from Mime4J: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 205
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_4

    .line 221
    .end local v1    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    .end local v5    # "e":Lorg/apache/james/mime4j/field/address/parser/ParseException;
    :cond_a
    sget-object v10, Lvo;->c:[Lvo;

    invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lvo;

    goto/16 :goto_0
.end method

.method public static b([Lvo;)Ljava/lang/String;
    .locals 3
    .param p0, "addresses"    # [Lvo;

    .prologue
    .line 429
    if-nez p0, :cond_0

    .line 431
    const/4 v2, 0x0

    .line 442
    :goto_0
    return-object v2

    .line 433
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 434
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 436
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lvo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 439
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 434
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 442
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)[Lvo;
    .locals 13
    .param p0, "addressListStr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v12, -0x1

    .line 235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Lvo;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    sget-object v4, Lvo;->c:[Lvo;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvo;

    .line 257
    :goto_0
    return-object v4

    .line 239
    :cond_0
    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "addressList":[Ljava/lang/String;
    array-length v8, v1

    move v6, v7

    :goto_1
    if-ge v6, v8, :cond_7

    aget-object v3, v1, v6

    .line 242
    .local v3, "string":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 243
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 244
    const-string/jumbo v4, "\"=?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3261
    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 3262
    const/16 v5, 0x3e

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 3264
    if-eq v4, v12, :cond_4

    .line 3265
    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3266
    if-eqz v5, :cond_1

    .line 3267
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "\""

    const-string/jumbo v11, ""

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 3273
    :cond_1
    :goto_2
    if-eq v9, v12, :cond_5

    .line 3274
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3275
    if-eqz v4, :cond_2

    .line 3276
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 3282
    :cond_2
    :goto_3
    new-instance v0, Lvo;

    invoke-direct {v0, v4, v5}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v0, "address":Lvo;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v0    # "address":Lvo;
    :cond_3
    :goto_4
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1

    :cond_4
    move-object v5, v3

    .line 3270
    goto :goto_2

    :cond_5
    move-object v4, v5

    .line 3279
    goto :goto_3

    .line 250
    :cond_6
    invoke-static {v3}, Lvo;->c(Ljava/lang/String;)Lvo;

    move-result-object v0

    .line 251
    .restart local v0    # "address":Lvo;
    if-eqz v0, :cond_3

    .line 252
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 257
    .end local v0    # "address":Lvo;
    .end local v3    # "string":Ljava/lang/String;
    :cond_7
    sget-object v4, Lvo;->c:[Lvo;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvo;

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Lvo;
    .locals 13
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 287
    .line 4070
    :try_start_0
    sget-object v9, Lkqa;->a:Lkqa;

    invoke-static {p0, v9}, Lkrm;->a(Ljava/lang/String;Lkqa;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v9

    .line 288
    invoke-virtual {v9}, Lorg/apache/james/mime4j/dom/address/AddressList;->flatten()Lorg/apache/james/mime4j/dom/address/MailboxList;

    move-result-object v8

    .line 290
    .local v8, "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v8}, Lorg/apache/james/mime4j/dom/address/MailboxList;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v5, v2, :cond_8

    .line 292
    invoke-virtual {v8, v5}, Lorg/apache/james/mime4j/dom/address/MailboxList;->get(I)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v1

    .line 293
    .local v1, "address":Lorg/apache/james/mime4j/dom/address/Address;
    instance-of v9, v1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    if-eqz v9, :cond_4

    .line 294
    move-object v0, v1

    check-cast v0, Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-object v6, v0

    .line 295
    .local v6, "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    invoke-virtual {v6}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v7

    .line 297
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 298
    :try_start_1
    invoke-static {v7}, Lvj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "decodeTxt":Ljava/lang/String;
    move-object v7, v3

    .line 301
    .end local v3    # "decodeTxt":Ljava/lang/String;
    :cond_0
    new-instance v9, Lvo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 302
    invoke-virtual {v6}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11, v7}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 365
    .end local v1    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    .end local v2    # "count":I
    .end local v5    # "i":I
    .end local v6    # "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    :goto_1
    return-object v9

    .line 305
    .restart local v1    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    .restart local v2    # "count":I
    .restart local v5    # "i":I
    .restart local v6    # "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    :catch_0
    move-exception v9

    :try_start_2
    new-instance v9, Lvo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 306
    invoke-virtual {v6}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11, v7}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 315
    .end local v1    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    .end local v2    # "count":I
    .end local v5    # "i":I
    .end local v6    # "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    :catch_1
    move-exception v4

    .line 318
    .local v4, "e":Lorg/apache/james/mime4j/field/address/parser/ParseException;
    :try_start_3
    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/address/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "doesn\'t have a corresponding Java charset"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 320
    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/address/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "Words in local part must be separated by"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 322
    :cond_1
    invoke-static {p0}, Lvj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6070
    :cond_2
    sget-object v9, Lkqa;->a:Lkqa;

    invoke-static {p0, v9}, Lkrm;->a(Ljava/lang/String;Lkqa;)Lorg/apache/james/mime4j/dom/address/AddressList;

    move-result-object v9

    .line 327
    invoke-virtual {v9}, Lorg/apache/james/mime4j/dom/address/AddressList;->flatten()Lorg/apache/james/mime4j/dom/address/MailboxList;

    move-result-object v8

    .line 329
    .restart local v8    # "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    invoke-virtual {v8}, Lorg/apache/james/mime4j/dom/address/MailboxList;->size()I

    move-result v2

    .restart local v2    # "count":I
    :goto_2
    if-ge v5, v2, :cond_8

    .line 331
    invoke-virtual {v8, v5}, Lorg/apache/james/mime4j/dom/address/MailboxList;->get(I)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v1

    .line 332
    .restart local v1    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    instance-of v9, v1, Lorg/apache/james/mime4j/dom/address/Mailbox;

    if-eqz v9, :cond_6

    .line 333
    move-object v0, v1

    check-cast v0, Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-object v6, v0

    .line 334
    .restart local v6    # "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    invoke-virtual {v6}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getName()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    .line 336
    .restart local v7    # "name":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 337
    :try_start_4
    invoke-static {v7}, Lvj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    .restart local v3    # "decodeTxt":Ljava/lang/String;
    move-object v7, v3

    .line 340
    .end local v3    # "decodeTxt":Ljava/lang/String;
    :cond_3
    new-instance v9, Lvo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 341
    invoke-virtual {v6}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11, v7}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 344
    :catch_2
    move-exception v9

    :try_start_5
    new-instance v9, Lvo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 345
    invoke-virtual {v6}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11, v7}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 358
    .end local v1    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    .end local v2    # "count":I
    .end local v5    # "i":I
    .end local v6    # "mailbox":Lorg/apache/james/mime4j/dom/address/Mailbox;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    :catch_3
    move-exception v9

    new-instance v9, Lvo;

    invoke-direct {v9, v10, p0}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 309
    .end local v4    # "e":Lorg/apache/james/mime4j/field/address/parser/ParseException;
    .restart local v1    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    .restart local v2    # "count":I
    .restart local v5    # "i":I
    .restart local v8    # "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    :cond_4
    :try_start_6
    sget-boolean v9, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v9, :cond_5

    .line 310
    sget-object v9, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Unknown address type from Mime4J: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 310
    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 290
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 348
    .restart local v4    # "e":Lorg/apache/james/mime4j/field/address/parser/ParseException;
    :cond_6
    :try_start_7
    sget-boolean v9, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 349
    sget-object v9, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Unknown address type from Mime4J: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 349
    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 329
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 363
    .end local v1    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    .end local v2    # "count":I
    .end local v4    # "e":Lorg/apache/james/mime4j/field/address/parser/ParseException;
    .end local v5    # "i":I
    .end local v8    # "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    :catch_4
    move-exception v9

    new-instance v9, Lvo;

    invoke-direct {v9, v10, p0}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v2    # "count":I
    .restart local v5    # "i":I
    .restart local v8    # "parsedList":Lorg/apache/james/mime4j/dom/address/MailboxList;
    :cond_8
    move-object v9, v10

    .line 365
    goto/16 :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 417
    iget-object v0, p0, Lvo;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvo;->b:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lvo;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 371
    instance-of v0, p1, Lvo;

    if-eqz v0, :cond_0

    .line 7075
    iget-object v0, p0, Lvo;->a:Ljava/lang/String;

    .line 373
    check-cast p1, Lvo;

    .line 8075
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lvo;->a:Ljava/lang/String;

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 375
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 381
    .line 9075
    iget-object v0, p0, Lvo;->a:Ljava/lang/String;

    .line 381
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 387
    iget-object v0, p0, Lvo;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvo;->b:Ljava/lang/String;

    invoke-static {v1}, Lva;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lvo;->a:Ljava/lang/String;

    goto :goto_0
.end method
