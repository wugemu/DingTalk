.class public final Lhpt;
.super Ljava/lang/Object;
.source "CardReader.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhpt$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lhpt$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lhpt;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lhpt$a;)V
    .locals 1
    .param p1, "accountCallback"    # Lhpt$a;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lhpt;->c:I

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lhpt;->d:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhpt;->b:Ljava/lang/ref/WeakReference;

    .line 57
    return-void
.end method

.method private declared-synchronized a()I
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lhpt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/nfc/NdefRecord;)Ljava/lang/String;
    .locals 9
    .param p1, "record"    # Landroid/nfc/NdefRecord;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 163
    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_0

    move-object v2, v5

    .line 188
    :goto_0
    return-object v2

    .line 166
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v4

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 168
    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    .line 170
    .local v1, "payload":[B
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_1

    .line 171
    const-string/jumbo v3, "UTF-8"

    .line 176
    .local v3, "textEncoding":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    and-int/lit8 v0, v4, 0x3f

    .line 178
    .local v0, "languageCodeLength":I
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    array-length v6, v1

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v2, v1, v4, v6, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 181
    .local v2, "text":Ljava/lang/String;
    goto :goto_0

    .line 173
    .end local v0    # "languageCodeLength":I
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "textEncoding":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "UTF-16"

    .restart local v3    # "textEncoding":Ljava/lang/String;
    goto :goto_1

    .line 182
    .end local v1    # "payload":[B
    .end local v3    # "textEncoding":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v4

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 186
    :catch_0
    move-exception v4

    iget-object v4, p0, Lhpt;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhpt$a;

    const-string/jumbo v6, "The encoding format of this card may not be supported!"

    invoke-direct {p0}, Lhpt;->a()I

    move-result v7

    iget-object v8, p0, Lhpt;->d:Ljava/lang/String;

    invoke-interface {v4, v6, v7, v8}, Lhpt$a;->onAccountFailReceived(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    move-object v2, v5

    .line 188
    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/nfc/tech/Ndef;Ljava/lang/String;)Z
    .locals 13
    .param p1, "ndef"    # Landroid/nfc/tech/Ndef;
    .param p2, "writeString"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    monitor-enter p0

    :try_start_0
    sput-object p2, Lhpt;->a:Ljava/lang/String;

    .line 194
    new-instance v1, Landroid/nfc/NdefMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v6, 0x0

    sget-object v7, Lhpt;->a:Ljava/lang/String;

    .line 1226
    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "US-ASCII"

    .line 1227
    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    .line 1226
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 1228
    const-string/jumbo v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    .line 1231
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 1234
    array-length v9, v8

    add-int/lit8 v9, v9, 0x0

    int-to-char v9, v9

    .line 1236
    array-length v10, v8

    add-int/lit8 v10, v10, 0x1

    array-length v11, v7

    add-int/2addr v10, v11

    new-array v10, v10, [B

    .line 1238
    const/4 v11, 0x0

    int-to-byte v9, v9

    aput-byte v9, v10, v11

    .line 1240
    const/4 v9, 0x0

    const/4 v11, 0x1

    array-length v12, v8

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1242
    const/4 v9, 0x0

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    array-length v11, v7

    invoke-static {v7, v9, v10, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1245
    new-instance v7, Landroid/nfc/NdefRecord;

    const/4 v8, 0x1

    sget-object v9, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    const/4 v11, 0x0

    new-array v11, v11, [B

    invoke-direct {v7, v8, v9, v11, v10}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 195
    aput-object v7, v3, v6

    invoke-direct {v1, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 196
    .local v1, "ndefMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v3

    array-length v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .local v2, "size":I
    if-eqz p1, :cond_2

    .line 201
    :try_start_1
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->connect()V

    .line 202
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    iget-object v3, p0, Lhpt;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhpt$a;

    const-string/jumbo v5, "NFC write failed!"

    invoke-direct {p0}, Lhpt;->a()I

    move-result v6

    iget-object v7, p0, Lhpt;->d:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v7}, Lhpt$a;->onAccountFailReceived(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 220
    :goto_0
    monitor-exit p0

    return v3

    .line 206
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 207
    iget-object v3, p0, Lhpt;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhpt$a;

    const-string/jumbo v5, "Insufficient card capacity\uff01"

    invoke-direct {p0}, Lhpt;->a()I

    move-result v6

    iget-object v7, p0, Lhpt;->d:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v7}, Lhpt$a;->onAccountFailReceived(Ljava/lang/String;ILjava/lang/String;)V

    move v3, v4

    .line 208
    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p1, v1}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 212
    const/4 v3, 0x0

    sput-object v3, Lhpt;->a:Ljava/lang/String;

    .line 213
    iget-object v3, p0, Lhpt;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhpt$a;

    const-string/jumbo v6, "Write successfully\uff01"

    invoke-direct {p0}, Lhpt;->a()I

    move-result v7

    iget-object v8, p0, Lhpt;->d:Ljava/lang/String;

    invoke-interface {v3, v6, v7, v8}, Lhpt$a;->onAccountSuccessReceived(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v5

    .line 214
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lhpt;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhpt$a;

    const-string/jumbo v5, "Write failed!"

    invoke-direct {p0}, Lhpt;->a()I

    move-result v6

    iget-object v7, p0, Lhpt;->d:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v7}, Lhpt$a;->onAccountFailReceived(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v3, v4

    .line 220
    goto :goto_0

    .line 192
    .end local v1    # "ndefMessage":Landroid/nfc/NdefMessage;
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lhpt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 13
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "techList":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "techListString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    move-result-object v6

    .line 1096
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 1098
    array-length v8, v6

    move v4, v5

    :goto_0
    if-ge v4, v8, :cond_1

    aget-byte v3, v6, v4

    .line 1099
    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1100
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getIdString: x:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v11, :cond_0

    .line 1102
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "0"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1104
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v9, 0x3a

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1098
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 1106
    :cond_1
    invoke-virtual {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v7, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->deleteCharAt(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1107
    invoke-virtual {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    iput-object v3, p0, Lhpt;->d:Ljava/lang/String;

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "New tag discovered  tagid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lhpt;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string/jumbo v3, "Ndef"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 72
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v0

    .line 73
    .local v0, "ndef":Landroid/nfc/tech/Ndef;
    invoke-direct {p0}, Lhpt;->a()I

    move-result v3

    if-ne v3, v11, :cond_5

    .line 1132
    if-eqz v0, :cond_4

    .line 1134
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1136
    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->connect()V

    .line 1138
    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 1139
    invoke-virtual {v3}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lhpt;->a(Landroid/nfc/NdefRecord;)Ljava/lang/String;

    move-result-object v4

    .line 1140
    if-nez v4, :cond_2

    .line 1141
    iget-object v3, p0, Lhpt;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhpt$a;

    const-string/jumbo v8, "Data format is not supported!"

    invoke-direct {p0}, Lhpt;->a()I

    move-result v9

    iget-object v10, p0, Lhpt;->d:Ljava/lang/String;

    invoke-interface {v3, v8, v9, v10}, Lhpt$a;->onAccountFailReceived(Ljava/lang/String;ILjava/lang/String;)V

    .line 1144
    :cond_2
    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->close()V

    .line 1145
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "tagID"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lhpt;->d:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    iget-object v3, p0, Lhpt;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhpt$a;

    invoke-direct {p0}, Lhpt;->a()I

    move-result v8

    iget-object v9, p0, Lhpt;->d:Ljava/lang/String;

    invoke-interface {v3, v4, v8, v9}, Lhpt$a;->onAccountSuccessReceived(Ljava/lang/String;ILjava/lang/String;)V

    .line 1147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    .line 1149
    const-wide/16 v8, 0xbb8

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    .line 1150
    const-string/jumbo v3, "JsApi"

    const-string/jumbo v8, "nfc_read"

    const-string/jumbo v9, "nfc tag discovered"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "read time "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 1151
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v11

    const/4 v6, 0x2

    const-string/jumbo v7, " data length "

    aput-object v7, v10, v6

    const/4 v6, 0x3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v6

    .line 1150
    invoke-static {v3, v8, v9, v10}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "ndef":Landroid/nfc/tech/Ndef;
    :cond_3
    :goto_1
    invoke-virtual {p0, v5}, Lhpt;->a(I)V

    .line 93
    return-void

    .line 1153
    .restart local v0    # "ndef":Landroid/nfc/tech/Ndef;
    :catch_0
    move-exception v3

    move-object v4, v3

    .line 1154
    iget-object v3, p0, Lhpt;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhpt$a;

    const-string/jumbo v6, "NFC connection is lost"

    invoke-direct {p0}, Lhpt;->a()I

    move-result v7

    iget-object v8, p0, Lhpt;->d:Ljava/lang/String;

    invoke-interface {v3, v6, v7, v8}, Lhpt$a;->onAccountFailReceived(Ljava/lang/String;ILjava/lang/String;)V

    .line 1155
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1158
    :cond_4
    iget-object v3, p0, Lhpt;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhpt$a;

    const-string/jumbo v4, "No data to be read!"

    invoke-direct {p0}, Lhpt;->a()I

    move-result v6

    iget-object v7, p0, Lhpt;->d:Ljava/lang/String;

    invoke-interface {v3, v4, v6, v7}, Lhpt$a;->onAccountFailReceived(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_5
    invoke-direct {p0}, Lhpt;->a()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    .line 76
    sget-object v3, Lhpt;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lhpt;->a(Landroid/nfc/tech/Ndef;Ljava/lang/String;)Z

    goto :goto_1

    .line 79
    .end local v0    # "ndef":Landroid/nfc/tech/Ndef;
    :cond_6
    iget-object v3, p0, Lhpt;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhpt$a;

    const-string/jumbo v4, "Card type is not supported!"

    invoke-direct {p0}, Lhpt;->a()I

    move-result v6

    iget-object v7, p0, Lhpt;->d:Ljava/lang/String;

    invoke-interface {v3, v4, v6, v7}, Lhpt$a;->onAccountFailReceived(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1
.end method
