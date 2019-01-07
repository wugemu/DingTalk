.class public Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
.super Ljava/util/ArrayList;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImapList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->this$0:Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 730
    :try_start_0
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b()Ljava/text/SimpleDateFormat;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :try_start_1
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->b()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    monitor-exit v1

    .line 748
    :goto_0
    return-object v0

    .line 733
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 739
    :try_start_3
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->c()Ljava/text/SimpleDateFormat;

    move-result-object v1

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 741
    :try_start_4
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->c()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 742
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 746
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->d()Ljava/text/SimpleDateFormat;

    move-result-object v1

    monitor-enter v1

    .line 748
    :try_start_6
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->d()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 749
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 697
    if-nez p1, :cond_1

    .line 709
    :cond_0
    :goto_0
    return v2

    .line 702
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 704
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 706
    const/4 v2, 0x1

    goto :goto_0

    .line 702
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 628
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 630
    :catch_0
    move-exception v0

    .line 632
    .local v0, "pe":Ljava/text/ParseException;
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->PARSE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v3, "Unable to parse IMAP datetime"

    invoke-direct {v1, v2, v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getKeyIndex(Ljava/lang/Object;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 714
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 716
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    return v1

    .line 714
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 722
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "getKeyIndex() only works for keys that are in the collection."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getKeyedDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 682
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getKeyedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 685
    const/4 v2, 0x0

    .line 687
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 689
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 691
    .local v0, "pe":Ljava/text/ParseException;
    new-instance v2, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->PARSE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v4, "Unable to parse IMAP datetime"

    invoke-direct {v2, v3, v4, v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getKeyedList(Ljava/lang/Object;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 650
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 651
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    if-eqz v1, :cond_0

    .line 652
    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    .line 654
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyedLiteral(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 670
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getKeyedNumber(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 675
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getKeyedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getKeyedString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 660
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 661
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 662
    check-cast v0, Ljava/lang/String;

    .line 664
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 638
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 640
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 645
    :goto_1
    return-object v2

    .line 638
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 645
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getList(I)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    return-object v0
.end method

.method public getLiteral(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 616
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getNumber(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 606
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 611
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
