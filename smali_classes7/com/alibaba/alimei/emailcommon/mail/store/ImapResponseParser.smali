.class public final Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;
.super Ljava/lang/Object;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;,
        Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;,
        Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    }
.end annotation


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;

.field private static final b:Ljava/text/SimpleDateFormat;

.field private static final c:Ljava/text/SimpleDateFormat;


# instance fields
.field private d:Lwb;

.field private e:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

.field private f:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "dd-MMM-yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a:Ljava/text/SimpleDateFormat;

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b:Ljava/text/SimpleDateFormat;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "E, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->c:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lwb;)V
    .locals 0
    .param p1, "in"    # Lwb;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->d:Lwb;

    .line 43
    return-void
.end method

.method private a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;)Ljava/lang/Object;
    .locals 7
    .param p1, "parent"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v5, 0x9

    const/4 v2, 0x0

    const/16 v6, 0x22

    const/16 v4, 0xa

    const/4 v1, 0x0

    .line 294
    :goto_0
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->d:Lwb;

    invoke-virtual {v3}, Lwb;->a()I

    move-result v0

    .line 295
    .local v0, "ch":I
    const/16 v3, 0x28

    if-ne v0, v3, :cond_4

    .line 4369
    const/16 v2, 0x28

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b(C)I

    .line 4370
    new-instance v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;-><init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;)V

    .line 4371
    invoke-virtual {p1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->add(Ljava/lang/Object;)Z

    .line 4375
    :cond_0
    :goto_1
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;)Ljava/lang/Object;

    move-result-object v3

    .line 4376
    if-nez v3, :cond_2

    .line 4550
    :cond_1
    :goto_2
    return-object v1

    .line 4380
    :cond_2
    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4384
    instance-of v4, v3, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    if-nez v4, :cond_0

    .line 4390
    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 297
    goto :goto_2

    .line 299
    :cond_4
    const/16 v3, 0x5b

    if-ne v0, v3, :cond_7

    .line 4398
    const/16 v2, 0x5b

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b(C)I

    .line 4399
    new-instance v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;-><init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;)V

    .line 4400
    invoke-virtual {p1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->add(Ljava/lang/Object;)Z

    .line 4404
    :cond_5
    :goto_3
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;)Ljava/lang/Object;

    move-result-object v3

    .line 4405
    if-eqz v3, :cond_1

    .line 4409
    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 4413
    instance-of v4, v3, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    if-nez v4, :cond_5

    .line 4419
    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move-object v1, v2

    .line 301
    goto :goto_2

    .line 303
    :cond_7
    const/16 v3, 0x29

    if-ne v0, v3, :cond_8

    .line 305
    const/16 v1, 0x29

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b(C)I

    .line 306
    const-string/jumbo v1, ")"

    goto :goto_2

    .line 308
    :cond_8
    const/16 v3, 0x5d

    if-ne v0, v3, :cond_9

    .line 310
    const/16 v1, 0x5d

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b(C)I

    .line 311
    const-string/jumbo v1, "]"

    goto :goto_2

    .line 313
    :cond_9
    if-ne v0, v6, :cond_d

    .line 4535
    invoke-direct {p0, v6}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b(C)I

    .line 4537
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v2

    .line 4540
    :goto_4
    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->d:Lwb;

    invoke-virtual {v4}, Lwb;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    .line 4542
    if-nez v1, :cond_a

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_a

    .line 4545
    int-to-char v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4546
    const/4 v1, 0x1

    goto :goto_4

    .line 4548
    :cond_a
    if-nez v1, :cond_b

    if-ne v4, v6, :cond_b

    .line 4550
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 4554
    :cond_b
    int-to-char v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    .line 4555
    goto :goto_4

    .line 4558
    :cond_c
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "parseQuoted(): end of stream reached"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_d
    const/16 v3, 0x7b

    if-ne v0, v3, :cond_e

    .line 319
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->f()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 321
    :cond_e
    const/16 v3, 0x20

    if-ne v0, v3, :cond_f

    .line 323
    const/16 v3, 0x20

    invoke-direct {p0, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b(C)I

    goto/16 :goto_0

    .line 325
    :cond_f
    const/16 v3, 0xd

    if-ne v0, v3, :cond_10

    .line 327
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b(C)I

    .line 328
    invoke-direct {p0, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b(C)I

    goto/16 :goto_2

    .line 331
    :cond_10
    if-ne v0, v4, :cond_11

    .line 333
    invoke-direct {p0, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b(C)I

    goto/16 :goto_2

    .line 336
    :cond_11
    if-ne v0, v5, :cond_12

    .line 338
    invoke-direct {p0, v5}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b(C)I

    goto/16 :goto_0

    .line 342
    :cond_12
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->e()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method

.method private a(C)Ljava/lang/String;
    .locals 4
    .param p1, "end"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 563
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 565
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->d:Lwb;

    invoke-virtual {v2}, Lwb;->read()I

    move-result v0

    .local v0, "ch":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 567
    if-ne v0, p1, :cond_0

    .line 569
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 573
    :cond_0
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 576
    :cond_1
    sget-boolean v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 577
    sget-object v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "readStringUntil(): end of stream reached"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->clear()V

    .line 4282
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;)Ljava/lang/Object;

    move-result-object v0

    .line 4283
    if-eqz v0, :cond_1

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    .local v0, "token":Ljava/lang/Object;
    :cond_1
    if-eqz v0, :cond_2

    .line 251
    instance-of v1, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    if-nez v1, :cond_0

    .line 254
    invoke-virtual {p1, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    :cond_2
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->access$102(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;Z)Z

    .line 267
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;
    .param p1, "x1"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 809
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_0

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 811
    check-cast v0, Ljava/lang/String;

    .local v0, "s1":Ljava/lang/String;
    move-object v1, p1

    .line 812
    check-cast v1, Ljava/lang/String;

    .line 813
    .local v1, "s2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 826
    .end local v0    # "s1":Ljava/lang/String;
    .end local v1    # "s2":Ljava/lang/String;
    :goto_0
    return v2

    .line 815
    :cond_0
    if-eqz p0, :cond_1

    .line 817
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 819
    :cond_1
    if-eqz p1, :cond_2

    .line 821
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 826
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private b(C)I
    .locals 6
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 585
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->d:Lwb;

    invoke-virtual {v1}, Lwb;->read()I

    move-result v0

    .local v0, "d":I
    if-eq v0, p1, :cond_0

    .line 587
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Expected %04x (%c) but got %04x (%c)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 588
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    .line 587
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 590
    :cond_0
    return v0
.end method

.method static synthetic b()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic c()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic d()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->c:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 427
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 431
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->d:Lwb;

    invoke-virtual {v2}, Lwb;->a()I

    move-result v0

    .line 432
    .local v0, "ch":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 434
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "parseAtom(): end of stream reached"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 436
    :cond_0
    const/16 v2, 0x28

    if-eq v0, v2, :cond_2

    const/16 v2, 0x29

    if-eq v0, v2, :cond_2

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_2

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_2

    const/16 v2, 0x22

    if-eq v0, v2, :cond_2

    if-ltz v0, :cond_1

    const/16 v2, 0x1f

    if-le v0, v2, :cond_2

    :cond_1
    const/16 v2, 0x7f

    if-ne v0, v2, :cond_4

    .line 448
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 450
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "parseAtom(): (%04x %c)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 456
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->d:Lwb;

    invoke-virtual {v2}, Lwb;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private f()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 467
    const/16 v9, 0x7b

    invoke-direct {p0, v9}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b(C)I

    .line 468
    const/16 v9, 0x7d

    invoke-direct {p0, v9}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(C)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 469
    .local v8, "size":I
    const/16 v9, 0xd

    invoke-direct {p0, v9}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b(C)I

    .line 470
    const/16 v9, 0xa

    invoke-direct {p0, v9}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b(C)I

    .line 472
    if-nez v8, :cond_1

    .line 474
    const-string/jumbo v7, ""

    .line 530
    :cond_0
    :goto_0
    return-object v7

    .line 477
    :cond_1
    iget-object v9, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->e:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->e:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    invoke-static {v9}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->access$000(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 479
    new-instance v5, Lvz;

    iget-object v9, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->d:Lwb;

    invoke-direct {v5, v9, v8}, Lvz;-><init>(Ljava/io/InputStream;I)V

    .line 481
    .local v5, "fixed":Lvz;
    const/4 v7, 0x0

    .line 484
    .local v7, "result":Ljava/lang/Object;
    :try_start_0
    iget-object v9, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->e:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    invoke-static {v9}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->access$000(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->e:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    invoke-interface {v9, v10, v5}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;Lvz;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 499
    .end local v7    # "result":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v5}, Lvz;->available()I

    move-result v0

    .line 500
    .local v0, "available":I
    if-lez v0, :cond_2

    if-eq v0, v8, :cond_2

    .line 503
    :goto_2
    invoke-virtual {v5}, Lvz;->available()I

    move-result v9

    if-lez v9, :cond_2

    .line 505
    invoke-virtual {v5}, Lvz;->available()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v5, v10, v11}, Lvz;->skip(J)J

    goto :goto_2

    .line 486
    .end local v0    # "available":I
    .restart local v7    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 489
    .local v4, "e":Ljava/io/IOException;
    throw v4

    .line 491
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 494
    .local v4, "e":Ljava/lang/Exception;
    iput-object v4, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->f:Ljava/lang/Exception;

    goto :goto_1

    .line 509
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "result":Ljava/lang/Object;
    .restart local v0    # "available":I
    :cond_2
    if-nez v7, :cond_0

    .line 515
    .end local v0    # "available":I
    .end local v5    # "fixed":Lvz;
    :cond_3
    new-array v3, v8, [B

    .line 516
    .local v3, "data":[B
    const/4 v6, 0x0

    .line 517
    .local v6, "read":I
    :goto_3
    if-eq v6, v8, :cond_5

    .line 519
    iget-object v9, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->d:Lwb;

    sub-int v10, v8, v6

    invoke-virtual {v9, v3, v6, v10}, Lwb;->read([BII)I

    move-result v2

    .line 520
    .local v2, "count":I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_4

    .line 522
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "parseLiteral(): end of stream reached"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 524
    :cond_4
    add-int/2addr v6, v2

    .line 525
    goto :goto_3

    .line 526
    .end local v2    # "count":I
    :cond_5
    invoke-static {v3}, Lxd;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "charset":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 528
    const-string/jumbo v1, "UTF-8"

    .line 530
    :cond_6
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 47
    .line 1056
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;ZLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/Account;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v0

    .line 47
    return-object v0
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;ZLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/Account;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .locals 11
    .param p1, "callback"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    .param p2, "shouldBackup"    # Z
    .param p3, "folderName"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 166
    if-eqz p2, :cond_d

    .line 168
    :try_start_0
    sget-boolean v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 169
    sget-object v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "=========save file 1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_0
    const/16 v2, 0x200

    new-array v5, v2, [C

    .line 1066
    const/4 v4, -0x1

    .line 1067
    const/4 v3, 0x0

    .line 1068
    const/4 v2, 0x0

    move v10, v2

    move v2, v4

    move v4, v3

    move v3, v10

    .line 1070
    :cond_1
    :goto_0
    add-int/lit8 v3, v3, 0x1

    .line 1071
    iget-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->d:Lwb;

    invoke-virtual {v6}, Lwb;->read()I

    move-result v6

    .line 1072
    const/16 v7, 0x7b

    if-ne v6, v7, :cond_2

    .line 1073
    const/4 v4, 0x1

    goto :goto_0

    .line 1074
    :cond_2
    const/16 v7, 0x7d

    if-eq v6, v7, :cond_4

    .line 1078
    if-eqz v4, :cond_1

    .line 1079
    add-int/lit8 v2, v2, 0x1

    .line 1080
    int-to-char v6, v6

    aput-char v6, v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->e:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    if-eqz v3, :cond_3

    .line 238
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->e:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->access$002(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;

    .line 240
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->e:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .line 241
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->f:Ljava/lang/Exception;

    throw v2

    .line 1088
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->d:Lwb;

    invoke-virtual {v2}, Lwb;->read()I

    move-result v2

    .line 1089
    const/16 v4, 0xd

    if-eq v2, v4, :cond_4

    const/16 v4, 0x20

    if-eq v2, v4, :cond_4

    .line 1092
    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1093
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1095
    sget-boolean v5, Lzb;->b:Z

    if-eqz v5, :cond_5

    .line 1096
    sget-object v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "=========index : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1097
    sget-object v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "=========size : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    sget-object v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "=========real size : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1104
    :cond_5
    if-eqz p5, :cond_b

    .line 1106
    new-instance v3, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/alimei/emailcommon/Account;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3}, Lxa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1109
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1112
    :cond_6
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1113
    const/4 v2, 0x0

    .line 1115
    const/16 v6, 0x2000

    new-array v6, v6, [B

    .line 1117
    :cond_7
    iget-object v7, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->d:Lwb;

    const/4 v8, 0x0

    const/16 v9, 0x2000

    invoke-virtual {v7, v6, v8, v9}, Lwb;->read([BII)I

    move-result v7

    .line 1118
    add-int/2addr v2, v7

    .line 1119
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1121
    sget-boolean v7, Lzb;->b:Z

    if-eqz v7, :cond_8

    .line 1122
    sget-object v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "=========totalCount 11 :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1125
    :cond_8
    if-lt v2, v4, :cond_7

    .line 1140
    add-int/lit8 v2, v2, 0x0

    .line 1142
    sget-boolean v4, Lzb;->b:Z

    if-eqz v4, :cond_9

    .line 1143
    sget-object v4, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "=========totalCount 22 : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1672
    :cond_9
    :try_start_2
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1149
    :cond_a
    :goto_1
    :try_start_3
    sget-boolean v2, Lzb;->b:Z

    if-eqz v2, :cond_b

    .line 1150
    sget-object v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lkpt;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    :cond_b
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->e:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    if-eqz v2, :cond_c

    .line 238
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->e:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->access$002(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;

    .line 240
    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->e:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .line 241
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->f:Ljava/lang/Exception;

    const/4 v1, 0x0

    :goto_2
    return-object v1

    .line 1673
    :catch_0
    move-exception v2

    .line 1674
    :try_start_4
    sget-boolean v4, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 1675
    const-string/jumbo v4, "FileUtil"

    const-string/jumbo v5, "Could not close stream"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 197
    :cond_d
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;-><init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;)V

    .line 198
    .local v1, "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    iput-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->e:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .line 199
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->e:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    invoke-static {v2, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->access$002(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;

    .line 201
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->d:Lwb;

    invoke-virtual {v2}, Lwb;->a()I

    move-result v0

    .line 202
    .local v0, "ch":I
    const/16 v2, 0x2a

    if-ne v0, v2, :cond_e

    .line 2356
    const/16 v2, 0x2a

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b(C)I

    .line 2357
    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b(C)I

    .line 205
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)V

    .line 227
    :goto_3
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->f:Ljava/lang/Exception;

    if-eqz v2, :cond_12

    .line 229
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "readResponse(): Exception in callback method"

    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->f:Ljava/lang/Exception;

    invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 207
    :cond_e
    const/16 v2, 0x2b

    if-ne v0, v2, :cond_f

    .line 3349
    const/16 v2, 0x2b

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b(C)I

    .line 3350
    const/4 v2, 0x1

    .line 210
    iput-boolean v2, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mCommandContinuationRequested:Z

    .line 212
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)V

    goto :goto_3

    .line 216
    :cond_f
    sget-boolean v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v2, :cond_10

    .line 217
    const/4 v2, -0x1

    if-ne v0, v2, :cond_11

    .line 218
    sget-object v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "-----read -1 ---- \u8fde\u63a5\u88ab\u670d\u52a1\u7aef\u4e3b\u52a8\u65ad\u5f00"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    :cond_10
    :goto_4
    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(C)Ljava/lang/String;

    move-result-object v2

    .line 223
    iput-object v2, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    .line 224
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)V

    goto :goto_3

    .line 219
    :cond_11
    if-nez v0, :cond_10

    .line 220
    sget-object v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "-----read 0 ----"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 237
    :cond_12
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->e:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    if-eqz v2, :cond_13

    .line 238
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->e:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->access$002(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;

    .line 240
    :cond_13
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->e:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .line 241
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->f:Ljava/lang/Exception;

    goto/16 :goto_2
.end method
