.class public abstract Lvt;
.super Ljava/lang/Object;
.source "Store.java"


# static fields
.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lvt;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lvt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final a:Lcom/alibaba/alimei/emailcommon/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lvt;->b:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lvt;->c:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Lcom/alibaba/alimei/emailcommon/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lvt;->a:Lcom/alibaba/alimei/emailcommon/Account;

    .line 40
    return-void
.end method

.method public static declared-synchronized a(Lcom/alibaba/alimei/emailcommon/Account;)Lvt;
    .locals 2
    .param p0, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 120
    const-class v0, Lvt;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;Z)Lvt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Lcom/alibaba/alimei/emailcommon/Account;I)Lvt;
    .locals 7
    .param p0, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p1, "imapStoreType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    const-class v3, Lvt;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/Account;->a()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "uri":Ljava/lang/String;
    const-string/jumbo v2, "imap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "getRemoteImapInstance ,the uri must start with imap"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .end local v1    # "uri":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 48
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 49
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    :cond_1
    sget-object v2, Lvt;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvt;

    .line 52
    .local v0, "store":Lvt;
    if-nez v0, :cond_4

    .line 54
    const-string/jumbo v2, "imap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .end local v0    # "store":Lvt;
    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;-><init>(Lcom/alibaba/alimei/emailcommon/Account;I)V

    .line 59
    .restart local v0    # "store":Lvt;
    :cond_2
    if-eqz v0, :cond_3

    .line 61
    sget-object v2, Lvt;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_3
    :goto_0
    if-nez v0, :cond_5

    .line 69
    new-instance v2, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->LOCATE_STORE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unable to locate an applicable Store for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_4
    if-eqz v0, :cond_3

    .line 64
    invoke-virtual {v0, p0}, Lvt;->b(Lcom/alibaba/alimei/emailcommon/Account;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :cond_5
    monitor-exit v3

    return-object v0
.end method

.method public static declared-synchronized a(Lcom/alibaba/alimei/emailcommon/Account;Z)Lvt;
    .locals 7
    .param p0, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p1, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 76
    const-class v3, Lvt;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/Account;->a()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "uri":Ljava/lang/String;
    const-string/jumbo v2, "local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Asked to get non-local Store object but given LocalStore URI"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v1    # "uri":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 83
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v2, Lvt;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvt;

    .line 84
    .local v0, "store":Lvt;
    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    .line 86
    const-string/jumbo v2, "imap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .end local v0    # "store":Lvt;
    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;-><init>(Lcom/alibaba/alimei/emailcommon/Account;I)V

    .line 99
    .restart local v0    # "store":Lvt;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 101
    sget-object v2, Lvt;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_2
    :goto_1
    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    .line 109
    new-instance v2, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->LOCATE_STORE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unable to locate an applicable Store for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_3
    const-string/jumbo v2, "pop3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    new-instance v0, Lwe;

    .end local v0    # "store":Lvt;
    invoke-direct {v0, p0}, Lwe;-><init>(Lcom/alibaba/alimei/emailcommon/Account;)V

    .restart local v0    # "store":Lvt;
    goto :goto_0

    .line 94
    :cond_4
    const-string/jumbo v2, "webdav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    new-instance v0, Lwh;

    .end local v0    # "store":Lvt;
    invoke-direct {v0, p0}, Lwh;-><init>(Lcom/alibaba/alimei/emailcommon/Account;)V

    .restart local v0    # "store":Lvt;
    goto :goto_0

    .line 103
    :cond_5
    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {v0, p0}, Lvt;->b(Lcom/alibaba/alimei/emailcommon/Account;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 112
    :cond_6
    monitor-exit v3

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;
.end method

.method public abstract a(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<+",
            "Lcom/alibaba/alimei/emailcommon/mail/Folder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public b(Lcom/alibaba/alimei/emailcommon/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 162
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lcom/alibaba/alimei/emailcommon/Account;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lvt;->a:Lcom/alibaba/alimei/emailcommon/Account;

    return-object v0
.end method
