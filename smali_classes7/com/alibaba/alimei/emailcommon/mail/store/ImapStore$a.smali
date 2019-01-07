.class final Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$a;
.super Ljava/lang/Object;
.source "ImapStore.java"

# interfaces
.implements Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4142
    .local p1, "mesageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4143
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$a;->a:Ljava/util/HashMap;

    .line 4144
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;Lvz;)Ljava/lang/Object;
    .locals 6
    .param p1, "response"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .param p2, "literal"    # Lvz;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 4150
    iget-object v3, p1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 4151
    invoke-virtual {p1, v5}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "FETCH"

    invoke-static {v3, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4153
    const-string/jumbo v3, "FETCH"

    invoke-virtual {p1, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    .line 4154
    .local v0, "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    const-string/jumbo v3, "UID"

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getKeyedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4156
    .local v2, "uid":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$a;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;

    .line 4158
    .local v1, "message":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    invoke-virtual {v1, p2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->a(Ljava/io/InputStream;)V

    .line 4162
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 4164
    .end local v0    # "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v1    # "message":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    .end local v2    # "uid":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
