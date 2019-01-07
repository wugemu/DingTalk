.class final Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$c;
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
    name = "c"
.end annotation


# instance fields
.field private a:Lvs;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Luu;


# direct methods
.method constructor <init>(Lvs;Ljava/lang/String;JLuu;)V
    .locals 1
    .param p1, "part"    # Lvs;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "totalSize"    # J
    .param p5, "listener"    # Luu;

    .prologue
    .line 4178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4179
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$c;->a:Lvs;

    .line 4180
    iput-wide p3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$c;->b:J

    .line 4181
    iput-object p2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$c;->c:Ljava/lang/String;

    .line 4182
    iput-object p5, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$c;->d:Luu;

    .line 4183
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;Lvz;)Ljava/lang/Object;
    .locals 7
    .param p1, "response"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .param p2, "literal"    # Lvz;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 4189
    iget-object v3, p1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 4190
    invoke-virtual {p1, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "FETCH"

    invoke-static {v3, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4194
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$c;->a:Lvs;

    const-string/jumbo v4, "Content-Transfer-Encoding"

    invoke-interface {v3, v4}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4196
    .local v0, "header":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4197
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 4198
    .local v2, "contentTransferEncoding":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$c;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$c;->b:J

    iget-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$c;->d:Luu;

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lvj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;JLuu;)Lvp;

    move-result-object v1

    .line 4202
    .end local v0    # "header":[Ljava/lang/String;
    .end local v2    # "contentTransferEncoding":Ljava/lang/String;
    :cond_0
    return-object v1
.end method
