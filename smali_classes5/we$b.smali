.class final Lwe$b;
.super Lcom/alibaba/alimei/emailcommon/mail/Folder;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Lwe;

.field private d:Ljava/net/Socket;

.field private e:Ljava/io/InputStream;

.field private f:Ljava/io/OutputStream;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lwe$c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lwe$c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method public constructor <init>(Lwe;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lwe;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lwe$b;->c:Lwe;

    .line 237
    invoke-static {p1}, Lwe;->a(Lwe;)Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/emailcommon/mail/Folder;-><init>(Lcom/alibaba/alimei/emailcommon/Account;)V

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lwe$b;->g:Ljava/util/HashMap;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lwe$b;->h:Ljava/util/HashMap;

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lwe$b;->i:Ljava/util/HashMap;

    .line 238
    iput-object p2, p0, Lwe$b;->j:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lwe$b;->j:Ljava/lang/String;

    const-string/jumbo v1, "INBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const-string/jumbo v0, "INBOX"

    iput-object v0, p0, Lwe$b;->j:Ljava/lang/String;

    .line 243
    :cond_0
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 616
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 617
    .local v6, "unindexedUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 619
    .local v4, "uid":Ljava/lang/String;
    iget-object v8, p0, Lwe$b;->g:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    .line 621
    sget-boolean v8, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 623
    sget-object v8, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Need to index UID "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    :cond_1
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 628
    .end local v4    # "uid":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 667
    :cond_3
    return-void

    .line 637
    :cond_4
    const-string/jumbo v7, "UIDL"

    .line 5091
    invoke-virtual {p0, v7, v10}, Lwe$b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 638
    :cond_5
    :goto_1
    invoke-direct {p0}, Lwe$b;->k()Ljava/lang/String;

    move-result-object v3

    .local v3, "response":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 640
    const-string/jumbo v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 644
    const-string/jumbo v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 647
    .local v5, "uidParts":[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x2

    if-lt v7, v8, :cond_5

    .line 649
    aget-object v7, v5, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 650
    .local v1, "msgNum":Ljava/lang/Integer;
    const/4 v7, 0x1

    aget-object v2, v5, v7

    .line 651
    .local v2, "msgUid":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 653
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_6

    .line 655
    sget-object v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Got msgNum "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :cond_6
    iget-object v7, p0, Lwe$b;->g:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwe$c;

    .line 659
    .local v0, "message":Lwe$c;
    if-nez v0, :cond_7

    .line 661
    new-instance v0, Lwe$c;

    .end local v0    # "message":Lwe$c;
    invoke-direct {v0, v2, p0}, Lwe$c;-><init>(Ljava/lang/String;Lwe$b;)V

    .line 663
    .restart local v0    # "message":Lwe$c;
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 5671
    sget-boolean v8, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v8, :cond_8

    .line 5673
    sget-object v8, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Adding index for UID "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lwe$c;->o()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to msgNum "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5675
    :cond_8
    iget-object v8, p0, Lwe$b;->h:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5676
    iget-object v8, p0, Lwe$b;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Lwe$c;->o()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5677
    iget-object v8, p0, Lwe$b;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Lwe$c;->o()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method private a(Lwe$c;I)V
    .locals 9
    .param p1, "message"    # Lwe$c;
    .param p2, "lines"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 885
    if-eq p2, v7, :cond_0

    iget-object v2, p0, Lwe$b;->c:Lwe;

    invoke-static {v2}, Lwe;->e(Lwe;)Lwe$a;

    move-result-object v2

    iget-boolean v2, v2, Lwe$a;->b:Z

    if-nez v2, :cond_3

    .line 887
    :cond_0
    const-string/jumbo v2, "RETR %d"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lwe$b;->i:Ljava/util/HashMap;

    .line 888
    invoke-virtual {p1}, Lwe$c;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v6

    .line 887
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 8091
    invoke-virtual {p0, v2, v6}, Lwe$b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, "response":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    .line 900
    :try_start_0
    new-instance v2, Lwe$d;

    iget-object v3, p0, Lwe$b;->e:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Lwe$d;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v2}, Lwe$c;->a(Ljava/io/InputStream;)V

    .line 901
    if-eq p2, v7, :cond_1

    iget-object v2, p0, Lwe$b;->c:Lwe;

    invoke-static {v2}, Lwe;->e(Lwe;)Lwe$a;

    move-result-object v2

    iget-boolean v2, v2, Lwe$a;->b:Z

    if-nez v2, :cond_2

    .line 903
    :cond_1
    sget-object v2, Lcom/alibaba/alimei/emailcommon/mail/Flag;->X_DOWNLOADED_FULL:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lwe$c;->a(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    :cond_2
    return-void

    .line 892
    .end local v1    # "response":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "TOP %d %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lwe$b;->i:Ljava/util/HashMap;

    .line 893
    invoke-virtual {p1}, Lwe$c;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v6

    .line 894
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 892
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 9091
    invoke-virtual {p0, v2, v6}, Lwe$b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 892
    .restart local v1    # "response":Ljava/lang/String;
    goto :goto_0

    .line 906
    :catch_0
    move-exception v0

    .line 914
    .local v0, "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    if-ne p2, v7, :cond_2

    .line 916
    throw v0
.end method

.method private a([Lcom/alibaba/alimei/emailcommon/mail/Message;Luu;)V
    .locals 16
    .param p1, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "listener"    # Luu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 794
    const/4 v10, 0x0

    .line 795
    .local v10, "unsizedMessages":I
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_1

    aget-object v4, p1, v11

    .line 797
    .local v4, "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/Message;->f()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    .line 799
    add-int/lit8 v10, v10, 0x1

    .line 795
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 802
    .end local v4    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :cond_1
    if-nez v10, :cond_3

    .line 870
    :cond_2
    return-void

    .line 806
    :cond_3
    const/16 v11, 0x32

    if-ge v10, v11, :cond_7

    move-object/from16 v0, p0

    iget v11, v0, Lwe$b;->k:I

    const/16 v12, 0x1388

    if-le v11, v12, :cond_7

    .line 812
    const/4 v2, 0x0

    .local v2, "i":I
    move-object/from16 v0, p1

    array-length v1, v0

    .local v1, "count":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 814
    aget-object v4, p1, v2

    .line 815
    .restart local v4    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    instance-of v11, v4, Lwe$c;

    if-nez v11, :cond_4

    .line 817
    new-instance v11, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v12, Lcom/alibaba/alimei/framework/SDKError;->FETCH_NON_POP3_MESSAGE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v13, "Pop3Store.fetch called with non-Pop3 Message"

    invoke-direct {v11, v12, v13}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v11

    :cond_4
    move-object v8, v4

    .line 819
    check-cast v8, Lwe$c;

    .line 820
    .local v8, "pop3Message":Lwe$c;
    if-eqz p2, :cond_5

    .line 822
    invoke-virtual {v8}, Lwe$c;->o()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v2, v1}, Luu;->messageStarted(Ljava/lang/String;II)V

    .line 824
    :cond_5
    const-string/jumbo v11, "LIST %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lwe$b;->i:Ljava/util/HashMap;

    .line 825
    invoke-virtual {v8}, Lwe$c;->o()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    .line 824
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 6091
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lwe$b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 826
    .local v9, "response":Ljava/lang/String;
    const-string/jumbo v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, "listParts":[Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 829
    .local v6, "msgSize":I
    invoke-virtual {v8, v6}, Lwe$c;->a(I)V

    .line 830
    if-eqz p2, :cond_6

    .line 832
    move-object/from16 v0, p2

    invoke-interface {v0, v8, v2, v1}, Luu;->messageFinished(Lcom/alibaba/alimei/emailcommon/mail/Message;II)V

    .line 812
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 838
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "listParts":[Ljava/lang/String;
    .end local v4    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v6    # "msgSize":I
    .end local v8    # "pop3Message":Lwe$c;
    .end local v9    # "response":Ljava/lang/String;
    :cond_7
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 839
    .local v7, "msgUidIndex":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v12, :cond_8

    aget-object v4, p1, v11

    .line 841
    .restart local v4    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 839
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 843
    .end local v4    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "i":I
    move-object/from16 v0, p1

    array-length v1, v0

    .line 844
    .restart local v1    # "count":I
    const-string/jumbo v11, "LIST"

    .line 7091
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lwe$b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 845
    :cond_9
    :goto_3
    invoke-direct/range {p0 .. p0}, Lwe$b;->k()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "response":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 847
    const-string/jumbo v11, "."

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 851
    const-string/jumbo v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 852
    .restart local v3    # "listParts":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 853
    .local v5, "msgNum":I
    const/4 v11, 0x1

    aget-object v11, v3, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 854
    .restart local v6    # "msgSize":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lwe$b;->h:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lwe$c;

    .line 855
    .restart local v8    # "pop3Message":Lwe$c;
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lwe$c;->o()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 857
    if-eqz p2, :cond_a

    .line 859
    invoke-virtual {v8}, Lwe$c;->o()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v2, v1}, Luu;->messageStarted(Ljava/lang/String;II)V

    .line 861
    :cond_a
    invoke-virtual {v8, v6}, Lwe$c;->a(I)V

    .line 862
    if-eqz p2, :cond_b

    .line 864
    move-object/from16 v0, p2

    invoke-interface {v0, v8, v2, v1}, Luu;->messageFinished(Lcom/alibaba/alimei/emailcommon/mail/Message;II)V

    .line 866
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 1039
    iget-object v0, p0, Lwe$b;->f:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1040
    iget-object v0, p0, Lwe$b;->f:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1041
    iget-object v0, p0, Lwe$b;->f:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1042
    iget-object v0, p0, Lwe$b;->f:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1043
    return-void
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lwe$b;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwe$b;->f:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwe$b;->d:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwe$b;->d:Ljava/net/Socket;

    .line 362
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwe$b;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v5, -0x1

    .line 1007
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1008
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lwe$b;->e:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1009
    .local v0, "d":I
    if-ne v0, v5, :cond_0

    .line 1011
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "End of stream reached while trying to read line."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1015
    :cond_0
    int-to-char v3, v0

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    .line 1019
    int-to-char v3, v0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    .line 1025
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1028
    :cond_1
    iget-object v3, p0, Lwe$b;->e:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1029
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1030
    .local v1, "ret":Ljava/lang/String;
    sget-boolean v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 1032
    sget-object v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "<<< "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    :cond_3
    return-object v1
.end method

.method private l()Lwe$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 1047
    new-instance v0, Lwe$a;

    invoke-direct {v0}, Lwe$a;-><init>()V

    .line 1050
    .local v0, "capabilities":Lwe$a;
    :try_start_0
    const-string/jumbo v2, "CAPA"

    .line 11091
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lwe$b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1051
    :cond_0
    :goto_0
    invoke-direct {p0}, Lwe$b;->k()Ljava/lang/String;

    move-result-object v1

    .local v1, "response":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1053
    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1057
    const-string/jumbo v2, "STLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1059
    const/4 v2, 0x1

    iput-boolean v2, v0, Lwe$a;->a:Z

    goto :goto_0

    .end local v1    # "response":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1086
    :cond_1
    return-object v0

    .line 1061
    .restart local v1    # "response":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "UIDL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1063
    const/4 v2, 0x1

    iput-boolean v2, v0, Lwe$a;->d:Z

    goto :goto_0

    .line 1065
    :cond_3
    const-string/jumbo v2, "PIPELINING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1067
    const/4 v2, 0x1

    iput-boolean v2, v0, Lwe$a;->e:Z

    goto :goto_0

    .line 1069
    :cond_4
    const-string/jumbo v2, "USER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1071
    const/4 v2, 0x1

    iput-boolean v2, v0, Lwe$a;->c:Z

    goto :goto_0

    .line 1073
    :cond_5
    const-string/jumbo v2, "TOP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1075
    const/4 v2, 0x1

    iput-boolean v2, v0, Lwe$a;->b:Z
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
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
    .line 464
    iget-object v1, p0, Lwe$b;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwe$c;

    .line 465
    .local v0, "message":Lwe$c;
    if-nez v0, :cond_0

    .line 467
    new-instance v0, Lwe$c;

    .end local v0    # "message":Lwe$c;
    invoke-direct {v0, p1, p0}, Lwe$c;-><init>(Ljava/lang/String;Lwe$b;)V

    .line 469
    .restart local v0    # "message":Lwe$c;
    :cond_0
    return-object v0
.end method

.method a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sensitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 1098
    :try_start_0
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {p0, v3}, Lwe$b;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 1100
    if-eqz p1, :cond_1

    .line 1102
    sget-boolean v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1104
    if-eqz p2, :cond_2

    sget-boolean v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-nez v3, :cond_2

    .line 1106
    sget-object v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    .line 1115
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lwe$b;->b(Ljava/lang/String;)V

    .line 1118
    :cond_1
    invoke-direct {p0}, Lwe$b;->k()Ljava/lang/String;

    move-result-object v2

    .line 1119
    .local v2, "response":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_3

    .line 1121
    new-instance v3, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->PARSE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v3, v4, v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1126
    .end local v2    # "response":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1128
    .local v1, "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    throw v1

    .line 1111
    .end local v1    # "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :cond_2
    :try_start_1
    sget-object v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ">>> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1130
    :catch_1
    move-exception v0

    .line 1132
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lwe$b;->i()V

    .line 1133
    new-instance v3, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->POP3_COMMAND_EXECUTE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v5, "Unable to execute POP3 command"

    invoke-direct {v3, v4, v5, v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1124
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "response":Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method public final declared-synchronized a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V
    .locals 14
    .param p1, "mode"    # Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lwe$b;->j()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_0

    .line 356
    :goto_0
    monitor-exit p0

    return-void

    .line 253
    :cond_0
    :try_start_1
    iget-object v9, p0, Lwe$b;->j:Ljava/lang/String;

    const-string/jumbo v10, "INBOX"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 255
    new-instance v9, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v10, Lcom/alibaba/alimei/framework/SDKError;->FOLDER_NOT_EXISTED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v11, "Folder does not exist"

    invoke-direct {v9, v10, v11}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 260
    :cond_1
    :try_start_2
    new-instance v7, Ljava/net/InetSocketAddress;

    iget-object v9, p0, Lwe$b;->c:Lwe;

    invoke-static {v9}, Lwe;->b(Lwe;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lwe$b;->c:Lwe;

    invoke-static {v10}, Lwe;->c(Lwe;)I

    move-result v10

    invoke-direct {v7, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 261
    .local v7, "socketAddress":Ljava/net/SocketAddress;
    iget-object v9, p0, Lwe$b;->c:Lwe;

    invoke-static {v9}, Lwe;->d(Lwe;)I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lwe$b;->c:Lwe;

    .line 262
    invoke-static {v9}, Lwe;->d(Lwe;)I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    .line 264
    :cond_2
    const-string/jumbo v9, "TLS"

    invoke-static {v9}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v8

    .line 265
    .local v8, "sslContext":Ljavax/net/ssl/SSLContext;
    iget-object v9, p0, Lwe$b;->c:Lwe;

    invoke-static {v9}, Lwe;->d(Lwe;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    const/4 v6, 0x1

    .line 266
    .local v6, "secure":Z
    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljavax/net/ssl/TrustManager;

    const/4 v11, 0x0

    iget-object v12, p0, Lwe$b;->c:Lwe;

    .line 268
    invoke-static {v12}, Lwe;->b(Lwe;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v6}, Lwg;->a(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;

    move-result-object v12

    aput-object v12, v10, v11

    new-instance v11, Ljava/security/SecureRandom;

    invoke-direct {v11}, Ljava/security/SecureRandom;-><init>()V

    .line 266
    invoke-virtual {v8, v9, v10, v11}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 270
    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v9

    iput-object v9, p0, Lwe$b;->d:Ljava/net/Socket;

    .line 271
    iget-object v9, p0, Lwe$b;->d:Ljava/net/Socket;

    const/16 v10, 0x7530

    invoke-virtual {v9, v7, v10}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 272
    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v10, p0, Lwe$b;->d:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const/16 v11, 0x400

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v9, p0, Lwe$b;->e:Ljava/io/InputStream;

    .line 273
    new-instance v9, Ljava/io/BufferedOutputStream;

    iget-object v10, p0, Lwe$b;->d:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const/16 v11, 0x200

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v9, p0, Lwe$b;->f:Ljava/io/OutputStream;

    .line 283
    .end local v6    # "secure":Z
    .end local v8    # "sslContext":Ljavax/net/ssl/SSLContext;
    :goto_2
    iget-object v9, p0, Lwe$b;->d:Ljava/net/Socket;

    const v10, 0xea60

    invoke-virtual {v9, v10}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 284
    invoke-direct {p0}, Lwe$b;->j()Z

    move-result v9

    if-nez v9, :cond_5

    .line 286
    new-instance v9, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v10, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v11, "Unable to connect socket"

    invoke-direct {v9, v10, v11}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    .end local v7    # "socketAddress":Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljavax/net/ssl/SSLException;
    :try_start_3
    new-instance v9, Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;

    sget-object v10, Lcom/alibaba/alimei/framework/SDKError;->SSL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11, v0}, Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    .restart local v7    # "socketAddress":Ljava/net/SocketAddress;
    .restart local v8    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 277
    .end local v8    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_4
    :try_start_4
    new-instance v9, Ljava/net/Socket;

    invoke-direct {v9}, Ljava/net/Socket;-><init>()V

    iput-object v9, p0, Lwe$b;->d:Ljava/net/Socket;

    .line 278
    iget-object v9, p0, Lwe$b;->d:Ljava/net/Socket;

    const/16 v10, 0x7530

    invoke-virtual {v9, v7, v10}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 279
    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v10, p0, Lwe$b;->d:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const/16 v11, 0x400

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v9, p0, Lwe$b;->e:Ljava/io/InputStream;

    .line 280
    new-instance v9, Ljava/io/BufferedOutputStream;

    iget-object v10, p0, Lwe$b;->d:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const/16 v11, 0x200

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v9, p0, Lwe$b;->f:Ljava/io/OutputStream;
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 339
    .end local v7    # "socketAddress":Ljava/net/SocketAddress;
    :catch_1
    move-exception v1

    .line 341
    .local v1, "gse":Ljava/security/GeneralSecurityException;
    :try_start_5
    new-instance v9, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v10, Lcom/alibaba/alimei/framework/SDKError;->GENERNAL_SECURITY_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v11, "Unable to open connection to POP server due to security error."

    invoke-direct {v9, v10, v11, v1}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 290
    .end local v1    # "gse":Ljava/security/GeneralSecurityException;
    .restart local v7    # "socketAddress":Ljava/net/SocketAddress;
    :cond_5
    const/4 v9, 0x0

    .line 2091
    const/4 v10, 0x0

    :try_start_6
    invoke-virtual {p0, v9, v10}, Lwe$b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 292
    iget-object v9, p0, Lwe$b;->c:Lwe;

    invoke-static {v9}, Lwe;->d(Lwe;)I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6

    iget-object v9, p0, Lwe$b;->c:Lwe;

    .line 293
    invoke-static {v9}, Lwe;->d(Lwe;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_9

    .line 295
    :cond_6
    iget-object v9, p0, Lwe$b;->c:Lwe;

    invoke-direct {p0}, Lwe$b;->l()Lwe$a;

    move-result-object v10

    invoke-static {v9, v10}, Lwe;->a(Lwe;Lwe$a;)Lwe$a;

    .line 297
    iget-object v9, p0, Lwe$b;->c:Lwe;

    invoke-static {v9}, Lwe;->e(Lwe;)Lwe$a;

    move-result-object v9

    iget-boolean v9, v9, Lwe$a;->a:Z

    if-eqz v9, :cond_8

    .line 299
    const-string/jumbo v9, "STLS"

    invoke-direct {p0, v9}, Lwe$b;->b(Ljava/lang/String;)V

    .line 301
    const-string/jumbo v9, "TLS"

    invoke-static {v9}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v8

    .line 302
    .restart local v8    # "sslContext":Ljavax/net/ssl/SSLContext;
    iget-object v9, p0, Lwe$b;->c:Lwe;

    invoke-static {v9}, Lwe;->d(Lwe;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    const/4 v6, 0x1

    .line 303
    .restart local v6    # "secure":Z
    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljavax/net/ssl/TrustManager;

    const/4 v11, 0x0

    iget-object v12, p0, Lwe$b;->c:Lwe;

    .line 305
    invoke-static {v12}, Lwe;->b(Lwe;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v6}, Lwg;->a(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;

    move-result-object v12

    aput-object v12, v10, v11

    new-instance v11, Ljava/security/SecureRandom;

    invoke-direct {v11}, Ljava/security/SecureRandom;-><init>()V

    .line 303
    invoke-virtual {v8, v9, v10, v11}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 307
    invoke-virtual {v8}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    iget-object v10, p0, Lwe$b;->d:Ljava/net/Socket;

    iget-object v11, p0, Lwe$b;->c:Lwe;

    invoke-static {v11}, Lwe;->b(Lwe;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lwe$b;->c:Lwe;

    invoke-static {v12}, Lwe;->c(Lwe;)I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v9

    iput-object v9, p0, Lwe$b;->d:Ljava/net/Socket;

    .line 309
    iget-object v9, p0, Lwe$b;->d:Ljava/net/Socket;

    const v10, 0xea60

    invoke-virtual {v9, v10}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 310
    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v10, p0, Lwe$b;->d:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const/16 v11, 0x400

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v9, p0, Lwe$b;->e:Ljava/io/InputStream;

    .line 311
    new-instance v9, Ljava/io/BufferedOutputStream;

    iget-object v10, p0, Lwe$b;->d:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const/16 v11, 0x200

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v9, p0, Lwe$b;->f:Ljava/io/OutputStream;

    .line 312
    invoke-direct {p0}, Lwe$b;->j()Z

    move-result v9

    if-nez v9, :cond_9

    .line 314
    new-instance v9, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v10, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v11, "Unable to connect socket"

    invoke-direct {v9, v10, v11}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v9
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 344
    .end local v6    # "secure":Z
    .end local v7    # "socketAddress":Ljava/net/SocketAddress;
    .end local v8    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_2
    move-exception v2

    .line 346
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_7
    new-instance v9, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v10, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v11, "Unable to open connection to POP server."

    invoke-direct {v9, v10, v11, v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 302
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v7    # "socketAddress":Ljava/net/SocketAddress;
    .restart local v8    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 317
    .end local v8    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_8
    :try_start_8
    iget-object v9, p0, Lwe$b;->c:Lwe;

    invoke-static {v9}, Lwe;->d(Lwe;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_9

    .line 319
    new-instance v9, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v10, Lcom/alibaba/alimei/framework/SDKError;->TLS_NOT_SUPPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v11, "TLS not supported but required"

    invoke-direct {v9, v10, v11}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v9
    :try_end_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 325
    :cond_9
    :try_start_9
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "USER "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lwe$b;->c:Lwe;

    invoke-static {v10}, Lwe;->f(Lwe;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3091
    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lwe$b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 326
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "PASS "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lwe$b;->c:Lwe;

    invoke-static {v10}, Lwe;->g(Lwe;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lwe$b;->a(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_9
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 333
    :try_start_a
    iget-object v9, p0, Lwe$b;->c:Lwe;

    invoke-direct {p0}, Lwe$b;->l()Lwe$a;

    move-result-object v10

    invoke-static {v9, v10}, Lwe;->a(Lwe;Lwe$a;)Lwe$a;
    :try_end_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 349
    :try_start_b
    const-string/jumbo v9, "STAT"

    .line 4091
    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lwe$b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, "response":Ljava/lang/String;
    const-string/jumbo v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, "parts":[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lwe$b;->k:I

    .line 353
    iget-object v9, p0, Lwe$b;->g:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 354
    iget-object v9, p0, Lwe$b;->h:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 355
    iget-object v9, p0, Lwe$b;->i:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 328
    .end local v4    # "parts":[Ljava/lang/String;
    .end local v5    # "response":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 330
    .local v3, "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :try_start_c
    new-instance v9, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;

    iget-object v10, p0, Lwe$b;->c:Lwe;

    invoke-static {v10}, Lwe;->f(Lwe;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12, v3}, Lcom/alibaba/alimei/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_c
    .catch Ljavax/net/ssl/SSLException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0
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
    .line 931
    return-void
.end method

.method public final a([Lcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;Luu;)V
    .locals 11
    .param p1, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "fp"    # Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;
    .param p3, "listener"    # Luu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 710
    if-eqz p1, :cond_0

    array-length v7, p1

    if-nez v7, :cond_1

    .line 789
    :cond_0
    return-void

    .line 714
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v5, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v8, p1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v3, p1, v7

    .line 717
    .local v3, "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    invoke-virtual {v3}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 721
    .end local v3    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :cond_2
    :try_start_0
    invoke-direct {p0, v5}, Lwe$b;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :try_start_1
    sget-object v7, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v7}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 737
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->size()I

    move-result v7

    if-ne v7, v10, :cond_3

    move-object v6, p3

    :cond_3
    invoke-direct {p0, p1, v6}, Lwe$b;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;Luu;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 744
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, p1

    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 746
    aget-object v3, p1, v1

    .line 747
    .restart local v3    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    instance-of v6, v3, Lwe$c;

    if-nez v6, :cond_5

    .line 749
    new-instance v6, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v7, Lcom/alibaba/alimei/framework/SDKError;->FETCH_NON_POP3_MESSAGE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v8, "Pop3Store.fetch called with non-Pop3 Message"

    invoke-direct {v6, v7, v8}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v6

    .line 723
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :catch_0
    move-exception v2

    .line 725
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v6, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v7, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v8, "fetch"

    invoke-direct {v6, v7, v8, v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 740
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 742
    .restart local v2    # "ioe":Ljava/io/IOException;
    new-instance v6, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v7, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v8, "fetch"

    invoke-direct {v6, v7, v8, v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :cond_5
    move-object v4, v3

    .line 751
    check-cast v4, Lwe$c;

    .line 754
    .local v4, "pop3Message":Lwe$c;
    :try_start_2
    sget-object v6, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v6}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 756
    invoke-virtual {v4}, Lwe$c;->o()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6, v1, v0}, Luu;->messageStarted(Ljava/lang/String;II)V

    .line 758
    :cond_6
    sget-object v6, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v6}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 760
    const/4 v6, -0x1

    invoke-direct {p0, v4, v6}, Lwe$b;->a(Lwe$c;I)V

    .line 779
    :cond_7
    :goto_2
    sget-object v6, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v6}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->size()I

    move-result v6

    if-eq v6, v10, :cond_9

    .line 781
    :cond_8
    invoke-interface {p3, v3, v1, v0}, Luu;->messageFinished(Lcom/alibaba/alimei/emailcommon/mail/Message;II)V

    .line 744
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 762
    :cond_a
    sget-object v6, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v6}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 768
    iget-object v6, p0, Lwe$b;->a:Lcom/alibaba/alimei/emailcommon/Account;

    .line 769
    invoke-virtual {v6}, Lcom/alibaba/alimei/emailcommon/Account;->n()I

    move-result v6

    div-int/lit8 v6, v6, 0x4c

    .line 768
    invoke-direct {p0, v4, v6}, Lwe$b;->a(Lwe$c;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 784
    :catch_2
    move-exception v2

    .line 786
    .restart local v2    # "ioe":Ljava/io/IOException;
    new-instance v6, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v7, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v8, "Unable to fetch message"

    invoke-direct {v6, v7, v8, v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 771
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_b
    :try_start_3
    sget-object v6, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v6}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 777
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lwe$c;->a(Lvp;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2
.end method

.method public final a([Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/String;)V
    .locals 4
    .param p1, "msgs"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 941
    new-array v0, v3, [Lcom/alibaba/alimei/emailcommon/mail/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/alimei/emailcommon/mail/Flag;->DELETED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0, v3}, Lwe$b;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;[Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 942
    return-void
.end method

.method public final a([Lcom/alibaba/alimei/emailcommon/mail/Message;[Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V
    .locals 11
    .param p1, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "flags"    # [Lcom/alibaba/alimei/emailcommon/mail/Flag;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 962
    if-eqz p3, :cond_0

    sget-object v5, Lcom/alibaba/alimei/emailcommon/mail/Flag;->DELETED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    invoke-static {p2, v5}, Lva;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 996
    :cond_0
    return-void

    .line 969
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 972
    .local v4, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    array-length v7, p1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v2, p1, v5

    .line 974
    .local v2, "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 977
    .end local v2    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :cond_2
    invoke-direct {p0, v4}, Lwe$b;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    array-length v7, p1

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v2, p1, v5

    .line 986
    .restart local v2    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    iget-object v8, p0, Lwe$b;->i:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 987
    .local v3, "msgNum":Ljava/lang/Integer;
    if-nez v3, :cond_3

    .line 989
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v5, Lcom/alibaba/alimei/framework/SDKError;->MESSAGE_NOT_FOUND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Could not delete message "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " because no msgNum found; permanent error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    .line 991
    .local v1, "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v1, v10}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->setPermanentFailure(Z)V

    .line 992
    throw v1

    .line 979
    .end local v1    # "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .end local v2    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v3    # "msgNum":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 981
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v5, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v6, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Could not get message number for uid "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 994
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v2    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .restart local v3    # "msgNum":Ljava/lang/Integer;
    :cond_3
    const-string/jumbo v8, "DELE %s"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v3, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 10091
    invoke-virtual {p0, v8, v6}, Lwe$b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 983
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public final a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 435
    const/4 v0, 0x0

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
    .line 482
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
    .line 475
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Z
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
    .line 441
    iget-object v0, p0, Lwe$b;->j:Ljava/lang/String;

    const-string/jumbo v1, "INBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lwe$b;->k:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lwe$b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 1146
    instance-of v0, p1, Lwe$b;

    if-eqz v0, :cond_0

    .line 1148
    check-cast p1, Lwe$b;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lwe$b;->j:Ljava/lang/String;

    iget-object v1, p0, Lwe$b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1150
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 1140
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lwe$b;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 393
    :try_start_0
    iget-object v0, p0, Lwe$b;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 403
    :goto_0
    :try_start_1
    iget-object v0, p0, Lwe$b;->f:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 413
    :goto_1
    :try_start_2
    iget-object v0, p0, Lwe$b;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 421
    :goto_2
    iput-object v1, p0, Lwe$b;->e:Ljava/io/InputStream;

    .line 422
    iput-object v1, p0, Lwe$b;->f:Ljava/io/OutputStream;

    .line 423
    iput-object v1, p0, Lwe$b;->d:Ljava/net/Socket;

    .line 424
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
