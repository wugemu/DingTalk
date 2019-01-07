.class public abstract Lcom/alibaba/alimei/emailcommon/mail/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/emailcommon/mail/Folder$FolderType;,
        Lcom/alibaba/alimei/emailcommon/mail/Folder$FolderClass;,
        Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;
    }
.end annotation


# instance fields
.field protected final a:Lcom/alibaba/alimei/emailcommon/Account;

.field protected final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J


# direct methods
.method protected constructor <init>(Lcom/alibaba/alimei/emailcommon/Account;)V
    .locals 4
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/Folder;->c:Ljava/lang/String;

    .line 21
    iput-wide v2, p0, Lcom/alibaba/alimei/emailcommon/mail/Folder;->d:J

    .line 22
    iput-wide v2, p0, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e:J

    .line 43
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a:Lcom/alibaba/alimei/emailcommon/Account;

    .line 44
    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/Folder;->b:Ljava/util/List;

    .line 45
    return-void
.end method

.method protected constructor <init>(Lcom/alibaba/alimei/emailcommon/Account;Ljava/util/List;)V
    .locals 4
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/Folder;->c:Ljava/lang/String;

    .line 21
    iput-wide v2, p0, Lcom/alibaba/alimei/emailcommon/mail/Folder;->d:J

    .line 22
    iput-wide v2, p0, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e:J

    .line 49
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a:Lcom/alibaba/alimei/emailcommon/Account;

    .line 50
    iput-object p2, p0, Lcom/alibaba/alimei/emailcommon/mail/Folder;->b:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .locals 3
    .param p1, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Flag;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Flag;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 276
    .local p2, "requiredFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/alimei/emailcommon/mail/Flag;>;"
    .local p3, "forbiddenFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/alimei/emailcommon/mail/Flag;>;"
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->SEARCH_NOT_SUPPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v2, "does not support searches on this folder type"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v0
.end method

.method public abstract a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public a(Lcom/alibaba/alimei/emailcommon/mail/Message;Lvs;Luu;)V
    .locals 1
    .param p1, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "part"    # Lvs;
    .param p3, "listener"    # Luu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 178
    sget-boolean v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    .line 180
    :cond_0
    return-void
.end method

.method public abstract a([Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract a([Lcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;Luu;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public a([Lcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/emailcommon/mail/Folder;)V
    .locals 0
    .param p1, "msgs"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "folder"    # Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 138
    return-void
.end method

.method public a([Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/String;)V
    .locals 5
    .param p1, "msgs"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 142
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 144
    .local v0, "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v1

    .line 145
    .local v1, "myMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    invoke-virtual {v1, p2}, Lcom/alibaba/alimei/emailcommon/mail/Message;->d(Ljava/lang/String;)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v1    # "myMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :cond_0
    return-void
.end method

.method public abstract a([Lcom/alibaba/alimei/emailcommon/mail/Message;[Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract a()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract a(IIILuu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract a(IILuu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract b()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract c()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public d()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 157
    return-void
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Lcom/alibaba/alimei/emailcommon/Account;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a:Lcom/alibaba/alimei/emailcommon/Account;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/Folder;->b:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
