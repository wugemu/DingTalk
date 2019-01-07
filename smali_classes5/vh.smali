.class public Lvh;
.super Lcom/alibaba/alimei/emailcommon/mail/Message;
.source "MimeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvh$a;
    }
.end annotation


# instance fields
.field protected a:Lvg;

.field protected b:[Lvo;

.field protected c:[Lvo;

.field protected d:[Lvo;

.field protected e:[Lvo;

.field protected f:[Lvo;

.field protected g:Ljava/lang/String;

.field protected h:[Ljava/lang/String;

.field protected i:[Ljava/lang/String;

.field protected j:Ljava/util/Date;

.field protected k:Ljava/text/SimpleDateFormat;

.field protected l:Lvp;

.field protected m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/Message;-><init>()V

    .line 50
    new-instance v0, Lvg;

    invoke-direct {v0}, Lvg;-><init>()V

    iput-object v0, p0, Lvh;->a:Lvg;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/Message;-><init>()V

    .line 50
    new-instance v0, Lvg;

    invoke-direct {v0}, Lvg;-><init>()V

    iput-object v0, p0, Lvh;->a:Lvg;

    .line 81
    invoke-virtual {p0, p1}, Lvh;->a(Ljava/io/InputStream;)V

    .line 82
    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 514
    iget-object v0, p0, Lvh;->a:Lvg;

    invoke-virtual {v0, p1}, Lvg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 544
    iget-object v0, p0, Lvh;->a:Lvg;

    invoke-virtual {v0, p1}, Lvg;->c(Ljava/lang/String;)V

    .line 545
    return-void
.end method

.method private t()Ljava/util/Date;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 133
    const-string/jumbo v5, "Received"

    invoke-direct {p0, v5}, Lvh;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lvj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "received":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-object v4

    .line 137
    :cond_1
    const-string/jumbo v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 138
    .local v3, "start":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 142
    add-int/lit8 v5, v3, 0x1

    :try_start_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "date":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Date: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkqv;->a(Ljava/lang/String;)Lkqn;

    move-result-object v1

    check-cast v1, Lkqj;

    .line 147
    .local v1, "field":Lkqj;
    invoke-interface {v1}, Lkqj;->a()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 151
    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "field":Lkqj;
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public final a()Lvp;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lvh;->l:Lvp;

    return-object v0
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;[Lvo;)V
    .locals 3
    .param p1, "type"    # Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;
    .param p2, "addresses"    # [Lvo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 264
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->TO:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_2

    .line 266
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 268
    :cond_0
    const-string/jumbo v0, "To"

    invoke-direct {p0, v0}, Lvh;->f(Ljava/lang/String;)V

    .line 269
    iput-object v1, p0, Lvh;->c:[Lvo;

    .line 300
    :goto_0
    return-void

    .line 273
    :cond_1
    const-string/jumbo v0, "To"

    invoke-static {p2}, Lvo;->b([Lvo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iput-object p2, p0, Lvh;->c:[Lvo;

    goto :goto_0

    .line 277
    :cond_2
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->CC:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_5

    .line 279
    if-eqz p2, :cond_3

    array-length v0, p2

    if-nez v0, :cond_4

    .line 281
    :cond_3
    const-string/jumbo v0, "CC"

    invoke-direct {p0, v0}, Lvh;->f(Ljava/lang/String;)V

    .line 282
    iput-object v1, p0, Lvh;->d:[Lvo;

    goto :goto_0

    .line 286
    :cond_4
    const-string/jumbo v0, "CC"

    invoke-static {p2}, Lvo;->b([Lvo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iput-object p2, p0, Lvh;->d:[Lvo;

    goto :goto_0

    .line 290
    :cond_5
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->BCC:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_8

    .line 292
    if-eqz p2, :cond_6

    array-length v0, p2

    if-nez v0, :cond_7

    .line 294
    :cond_6
    const-string/jumbo v0, "BCC"

    invoke-direct {p0, v0}, Lvh;->f(Ljava/lang/String;)V

    .line 295
    iput-object v1, p0, Lvh;->e:[Lvo;

    goto :goto_0

    .line 299
    :cond_7
    const-string/jumbo v0, "BCC"

    invoke-static {p2}, Lvo;->b([Lvo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iput-object p2, p0, Lvh;->e:[Lvo;

    goto :goto_0

    .line 305
    :cond_8
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->UNRECOGNIZED_RECIPIENT_TYPE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v2, "Unrecognized recipient type."

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v1, p0, Lvh;->a:Lvg;

    invoke-virtual {v1}, Lvg;->a()V

    .line 87
    iput-object v2, p0, Lvh;->b:[Lvo;

    .line 88
    iput-object v2, p0, Lvh;->c:[Lvo;

    .line 89
    iput-object v2, p0, Lvh;->d:[Lvo;

    .line 90
    iput-object v2, p0, Lvh;->e:[Lvo;

    .line 91
    iput-object v2, p0, Lvh;->f:[Lvo;

    .line 93
    iput-object v2, p0, Lvh;->g:Ljava/lang/String;

    .line 94
    iput-object v2, p0, Lvh;->h:[Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lvh;->i:[Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lvh;->j:Ljava/util/Date;

    .line 99
    iput-object v2, p0, Lvh;->l:Lvp;

    .line 101
    new-instance v0, Lksj;

    invoke-direct {v0}, Lksj;-><init>()V

    .line 102
    .local v0, "parser":Lksj;
    new-instance v1, Lvh$a;

    invoke-direct {v1, p0}, Lvh$a;-><init>(Lvh;)V

    .line 1243
    iput-object v1, v0, Lksj;->a:Lksi;

    .line 105
    :try_start_0
    new-instance v1, Lksb;

    invoke-direct {v1, p1}, Lksb;-><init>(Ljava/io/InputStream;)V

    .line 2116
    iget-object v2, v0, Lksj;->b:Lksr;

    .line 2123
    iget-object v2, v0, Lksj;->c:Lkss;

    invoke-virtual {v2, v1}, Lkss;->a(Ljava/io/InputStream;)V

    .line 2126
    :goto_0
    iget-object v1, v0, Lksj;->c:Lkss;

    .line 4254
    iget v1, v1, Lkss;->b:I

    .line 2127
    packed-switch v1, :pswitch_data_0

    .line 2177
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v1

    .line 112
    :pswitch_0
    return-void

    .line 2129
    :pswitch_1
    iget-object v1, v0, Lksj;->c:Lkss;

    invoke-virtual {v1}, Lkss;->b()Lksl;

    move-result-object v1

    .line 2134
    iget-object v2, v0, Lksj;->c:Lkss;

    invoke-virtual {v2}, Lkss;->a()Ljava/io/InputStream;

    move-result-object v2

    .line 2136
    iget-object v3, v0, Lksj;->a:Lksi;

    invoke-interface {v3, v1, v2}, Lksi;->a(Lksl;Ljava/io/InputStream;)V

    .line 2179
    :goto_1
    iget-object v1, v0, Lksj;->c:Lkss;

    invoke-virtual {v1}, Lkss;->c()I

    goto :goto_0

    .line 2139
    :pswitch_2
    iget-object v1, v0, Lksj;->a:Lksi;

    invoke-interface {v1}, Lksi;->h()V

    goto :goto_1

    .line 2142
    :pswitch_3
    iget-object v1, v0, Lksj;->a:Lksi;

    invoke-interface {v1}, Lksi;->d()V

    goto :goto_1

    .line 2145
    :pswitch_4
    iget-object v1, v0, Lksj;->a:Lksi;

    invoke-interface {v1}, Lksi;->b()V

    goto :goto_1

    .line 2148
    :pswitch_5
    iget-object v1, v0, Lksj;->a:Lksi;

    invoke-interface {v1}, Lksi;->f()V

    goto :goto_1

    .line 2153
    :pswitch_6
    iget-object v1, v0, Lksj;->a:Lksi;

    iget-object v2, v0, Lksj;->c:Lkss;

    invoke-virtual {v2}, Lkss;->a()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v1, v2}, Lksi;->a(Ljava/io/InputStream;)V

    goto :goto_1

    .line 2156
    :pswitch_7
    iget-object v1, v0, Lksj;->a:Lksi;

    iget-object v2, v0, Lksj;->c:Lkss;

    .line 4338
    iget-object v2, v2, Lkss;->c:Lkso;

    invoke-interface {v2}, Lkso;->f()Lksw;

    move-result-object v2

    .line 2156
    invoke-interface {v1, v2}, Lksi;->a(Lksw;)V

    goto :goto_1

    .line 2159
    :pswitch_8
    iget-object v1, v0, Lksj;->a:Lksi;

    iget-object v2, v0, Lksj;->c:Lkss;

    invoke-virtual {v2}, Lkss;->a()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v1, v2}, Lksi;->b(Ljava/io/InputStream;)V

    goto :goto_1

    .line 2162
    :pswitch_9
    iget-object v1, v0, Lksj;->a:Lksi;

    iget-object v2, v0, Lksj;->c:Lkss;

    invoke-virtual {v2}, Lkss;->a()Ljava/io/InputStream;

    invoke-interface {v1}, Lksi;->i()V

    goto :goto_1

    .line 2165
    :pswitch_a
    iget-object v1, v0, Lksj;->a:Lksi;

    invoke-interface {v1}, Lksi;->g()V

    goto :goto_1

    .line 2168
    :pswitch_b
    iget-object v1, v0, Lksj;->a:Lksi;

    invoke-interface {v1}, Lksi;->c()V

    goto :goto_1

    .line 2171
    :pswitch_c
    iget-object v1, v0, Lksj;->a:Lksi;

    invoke-interface {v1}, Lksi;->a()V

    goto :goto_1

    .line 2174
    :pswitch_d
    iget-object v1, v0, Lksj;->a:Lksi;

    iget-object v2, v0, Lksj;->c:Lkss;

    invoke-virtual {v2}, Lkss;->b()Lksl;

    invoke-interface {v1}, Lksi;->e()V
    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2127
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_c
        :pswitch_4
        :pswitch_9
        :pswitch_b
        :pswitch_7
        :pswitch_3
        :pswitch_d
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_a
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 556
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 557
    .local v0, "writer":Ljava/io/BufferedWriter;
    iget-object v1, p0, Lvh;->a:Lvg;

    invoke-virtual {v1, p1}, Lvg;->a(Ljava/io/OutputStream;)V

    .line 558
    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 560
    iget-object v1, p0, Lvh;->l:Lvp;

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, p0, Lvh;->l:Lvp;

    invoke-interface {v1, p1}, Lvp;->a(Ljava/io/OutputStream;)V

    .line 564
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lvh;->a:Lvg;

    invoke-virtual {v0, p1, p2}, Lvg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public final a(Ljava/util/Date;)V
    .locals 3
    .param p1, "sentDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 164
    iget-object v0, p0, Lvh;->k:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lvh;->k:Ljava/text/SimpleDateFormat;

    .line 168
    :cond_0
    const-string/jumbo v0, "Date"

    iget-object v1, p0, Lvh;->k:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5181
    iput-object p1, p0, Lvh;->j:Ljava/util/Date;

    .line 170
    return-void
.end method

.method public final a(Lvo;)V
    .locals 2
    .param p1, "from"    # Lvo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 349
    const-string/jumbo v0, "From"

    invoke-virtual {p1}, Lvo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v0, 0x1

    new-array v0, v0, [Lvo;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lvh;->b:[Lvo;

    .line 359
    return-void
.end method

.method public final a(Lvp;)V
    .locals 6
    .param p1, "body"    # Lvp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 496
    iput-object p1, p0, Lvh;->l:Lvp;

    .line 497
    const-string/jumbo v1, "MIME-Version"

    const-string/jumbo v2, "1.0"

    invoke-virtual {p0, v1, v2}, Lvh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    instance-of v1, p1, Lvr;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 500
    check-cast v0, Lvr;

    .line 501
    .local v0, "multipart":Lvr;
    invoke-virtual {v0, p0}, Lvr;->a(Lvs;)V

    .line 502
    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0}, Lvr;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lvh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .end local v0    # "multipart":Lvr;
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    instance-of v1, p1, Lvn;

    if-eqz v1, :cond_0

    .line 506
    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "%s;\n charset=utf-8"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 507
    invoke-virtual {p0}, Lvh;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 506
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lvh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string/jumbo v1, "Content-Transfer-Encoding"

    const-string/jumbo v2, "quoted-printable"

    invoke-virtual {p0, v1, v2}, Lvh;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a([Lvo;)V
    .locals 2
    .param p1, "replyTo"    # [Lvo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 381
    const-string/jumbo v0, "Reply-to"

    invoke-static {p1}, Lvo;->b([Lvo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lvh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iput-object p1, p0, Lvh;->f:[Lvo;

    .line 384
    return-void
.end method

.method public final a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lvh;->a:Lvg;

    invoke-virtual {v0, p1}, Lvg;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;)[Lvo;
    .locals 3
    .param p1, "type"    # Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 231
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->TO:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_1

    .line 233
    iget-object v0, p0, Lvh;->c:[Lvo;

    if-nez v0, :cond_0

    .line 235
    const-string/jumbo v0, "To"

    invoke-direct {p0, v0}, Lvh;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvo;->a(Ljava/lang/String;)[Lvo;

    move-result-object v0

    iput-object v0, p0, Lvh;->c:[Lvo;

    .line 237
    :cond_0
    iget-object v0, p0, Lvh;->c:[Lvo;

    .line 253
    :goto_0
    return-object v0

    .line 239
    :cond_1
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->CC:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_3

    .line 241
    iget-object v0, p0, Lvh;->d:[Lvo;

    if-nez v0, :cond_2

    .line 243
    const-string/jumbo v0, "CC"

    invoke-direct {p0, v0}, Lvh;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvo;->a(Ljava/lang/String;)[Lvo;

    move-result-object v0

    iput-object v0, p0, Lvh;->d:[Lvo;

    .line 245
    :cond_2
    iget-object v0, p0, Lvh;->d:[Lvo;

    goto :goto_0

    .line 247
    :cond_3
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;->BCC:Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;

    if-ne p1, v0, :cond_5

    .line 249
    iget-object v0, p0, Lvh;->e:[Lvo;

    if-nez v0, :cond_4

    .line 251
    const-string/jumbo v0, "BCC"

    invoke-direct {p0, v0}, Lvh;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvo;->a(Ljava/lang/String;)[Lvo;

    move-result-object v0

    iput-object v0, p0, Lvh;->e:[Lvo;

    .line 253
    :cond_4
    iget-object v0, p0, Lvh;->e:[Lvo;

    goto :goto_0

    .line 257
    :cond_5
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->UNRECOGNIZED_RECIPIENT_TYPE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v2, "Unrecognized recipient type."

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v0
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/store/UnavailableStorageException;
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lvh;->l:Lvp;

    instance-of v0, v0, Lvr;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lvh;->l:Lvp;

    check-cast v0, Lvr;

    invoke-virtual {v0, p1}, Lvr;->a_(Ljava/lang/String;)V

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v0, p0, Lvh;->l:Lvp;

    instance-of v0, v0, Lvn;

    if-eqz v0, :cond_0

    .line 580
    const-string/jumbo v0, "Content-Transfer-Encoding"

    invoke-virtual {p0, v0, p1}, Lvh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lvh;->l:Lvp;

    check-cast v0, Lvn;

    invoke-virtual {v0, p1}, Lvn;->a_(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 187
    const-string/jumbo v1, "Content-Type"

    invoke-direct {p0, v1}, Lvh;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "contentType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 190
    const-string/jumbo v1, "text/plain"

    .line 194
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\r"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\n"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lvh;->l:Lvp;

    instance-of v0, v0, Lvr;

    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Lvh;->l:Lvp;

    check-cast v0, Lvr;

    invoke-virtual {v0, p1}, Lvr;->d(Ljava/lang/String;)V

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lvh;->l:Lvp;

    instance-of v0, v0, Lvn;

    if-eqz v0, :cond_0

    .line 594
    invoke-static {p1, p0}, Lvj;->a(Ljava/lang/String;Lvs;)V

    .line 595
    iget-object v0, p0, Lvh;->l:Lvp;

    check-cast v0, Lvn;

    .line 8095
    iput-object p1, v0, Lvn;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/store/UnavailableStorageException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/16 v5, 0x1f40

    const/16 v4, 0x1770

    const/16 v3, 0xfa0

    const/16 v2, 0x7d0

    const/16 v1, 0x3e8

    .line 525
    if-nez p2, :cond_0

    .line 533
    :goto_0
    return-void

    .line 528
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v0, v6, 0x64

    .line 529
    .local v0, "len":I
    iget v6, p0, Lvh;->n:I

    if-le v0, v6, :cond_1

    .line 7816
    if-ge v0, v1, :cond_2

    .line 530
    :goto_1
    iput v1, p0, Lvh;->n:I

    .line 532
    :cond_1
    iget-object v1, p0, Lvh;->a:Lvg;

    invoke-virtual {v1, p1, p2}, Lvg;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7818
    :cond_2
    if-ge v0, v2, :cond_3

    move v1, v2

    .line 7819
    goto :goto_1

    .line 7820
    :cond_3
    if-ge v0, v3, :cond_4

    move v1, v3

    .line 7821
    goto :goto_1

    .line 7822
    :cond_4
    if-ge v0, v4, :cond_5

    move v1, v4

    .line 7823
    goto :goto_1

    .line 7824
    :cond_5
    if-ge v0, v5, :cond_6

    move v1, v5

    .line 7825
    goto :goto_1

    .line 7826
    :cond_6
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_7

    .line 7827
    const/16 v1, 0x2710

    goto :goto_1

    .line 7829
    :cond_7
    const/16 v1, 0x2ee0

    goto :goto_1
.end method

.method public final c()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 200
    const-string/jumbo v1, "Content-Disposition"

    invoke-direct {p0, v1}, Lvh;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "contentDisposition":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 207
    .end local v0    # "contentDisposition":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 216
    invoke-virtual {p0}, Lvh;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lvh;->m:I

    return v0
.end method

.method public final f_()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 568
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 777
    const-string/jumbo v1, "Content-Type"

    invoke-direct {p0, v1}, Lvh;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "type":Ljava/lang/String;
    iget-object v1, p0, Lvh;->l:Lvp;

    instance-of v1, v1, Lwd;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "multipart/signed"

    invoke-static {v0, v1}, Lvj;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 784
    const-string/jumbo v1, "7bit"

    invoke-virtual {p0, v1}, Lvh;->a_(Ljava/lang/String;)V

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    const-string/jumbo v1, "8bit"

    const-string/jumbo v2, "Content-Transfer-Encoding"

    .line 788
    invoke-direct {p0, v2}, Lvh;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    if-eqz v0, :cond_3

    const-string/jumbo v1, "multipart/signed"

    .line 791
    invoke-static {v0, v1}, Lvj;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lvj;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 808
    :cond_2
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->USE_7BIT_TRANSPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v3, "Unable to convert 8bit body part to 7bit"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v1

    .line 811
    :cond_3
    const-string/jumbo v1, "quoted-printable"

    invoke-virtual {p0, v1}, Lvh;->a_(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final h()Ljava/util/Date;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 116
    invoke-direct {p0}, Lvh;->t()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lvh;->j:Ljava/util/Date;

    .line 117
    iget-object v1, p0, Lvh;->j:Ljava/util/Date;

    if-nez v1, :cond_0

    .line 119
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Date: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Date"

    .line 120
    invoke-direct {p0, v2}, Lvh;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lvj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v1}, Lkqv;->a(Ljava/lang/String;)Lkqn;

    move-result-object v0

    check-cast v0, Lkqj;

    .line 121
    .local v0, "field":Lkqj;
    invoke-interface {v0}, Lkqj;->a()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lvh;->j:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "field":Lkqj;
    :goto_0
    iget-object v1, p0, Lvh;->j:Ljava/util/Date;

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lvh;->q:Ljava/util/Date;

    iput-object v1, p0, Lvh;->j:Ljava/util/Date;

    .line 129
    :cond_0
    iget-object v1, p0, Lvh;->j:Ljava/util/Date;

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 315
    const-string/jumbo v1, "Subject"

    invoke-direct {p0, v1}, Lvh;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lvj;->a(Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "subject":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "?="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 320
    :cond_0
    return-object v0
.end method

.method public final j()[Lvo;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 332
    iget-object v1, p0, Lvh;->b:[Lvo;

    if-nez v1, :cond_2

    .line 334
    const-string/jumbo v1, "From"

    invoke-direct {p0, v1}, Lvh;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lvj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "list":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 337
    :cond_0
    const-string/jumbo v1, "Sender"

    invoke-direct {p0, v1}, Lvh;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lvj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_1
    invoke-static {v0}, Lvo;->a(Ljava/lang/String;)[Lvo;

    move-result-object v1

    iput-object v1, p0, Lvh;->b:[Lvo;

    .line 341
    .end local v0    # "list":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lvh;->b:[Lvo;

    return-object v1
.end method

.method public final k()[Lvo;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lvh;->f:[Lvo;

    if-nez v0, :cond_0

    .line 366
    const-string/jumbo v0, "Reply-to"

    invoke-direct {p0, v0}, Lvh;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvo;->a(Ljava/lang/String;)[Lvo;

    move-result-object v0

    iput-object v0, p0, Lvh;->f:[Lvo;

    .line 368
    :cond_0
    iget-object v0, p0, Lvh;->f:[Lvo;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lvh;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 391
    const-string/jumbo v0, "Message-ID"

    invoke-direct {p0, v0}, Lvh;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvh;->g:Ljava/lang/String;

    .line 393
    :cond_0
    iget-object v0, p0, Lvh;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 395
    invoke-virtual {p0}, Lvh;->m()V

    .line 397
    :cond_1
    iget-object v0, p0, Lvh;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final m()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 401
    const/4 v0, 0x0

    .line 403
    .local v0, "hostname":Ljava/lang/String;
    iget-object v2, p0, Lvh;->b:[Lvo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lvh;->b:[Lvo;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 404
    iget-object v2, p0, Lvh;->b:[Lvo;

    aget-object v2, v2, v3

    .line 6075
    iget-object v0, v2, Lvo;->a:Ljava/lang/String;

    .line 407
    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lvh;->f:[Lvo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lvh;->f:[Lvo;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 408
    iget-object v2, p0, Lvh;->f:[Lvo;

    aget-object v2, v2, v3

    .line 7075
    iget-object v0, v2, Lvo;->a:Ljava/lang/String;

    .line 411
    :cond_1
    if-nez v0, :cond_2

    .line 412
    const-string/jumbo v0, "@email.android.com"

    .line 415
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7422
    .local v1, "messageId":Ljava/lang/String;
    const-string/jumbo v2, "Message-ID"

    invoke-virtual {p0, v2, v1}, Lvh;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7423
    iput-object v1, p0, Lvh;->g:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public final n()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lvh;->h:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 437
    const-string/jumbo v0, "References"

    invoke-virtual {p0, v0}, Lvh;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvh;->h:[Ljava/lang/String;

    .line 439
    :cond_0
    iget-object v0, p0, Lvh;->h:[Ljava/lang/String;

    return-object v0
.end method
