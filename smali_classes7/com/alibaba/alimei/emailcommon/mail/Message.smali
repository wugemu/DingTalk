.class public abstract Lcom/alibaba/alimei/emailcommon/mail/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lvp;
.implements Lvs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;
    }
.end annotation


# static fields
.field private static final a:[Lcom/alibaba/alimei/emailcommon/mail/Flag;


# instance fields
.field private b:Lcom/alibaba/alimei/emailcommon/mail/MessageReference;

.field protected n:I

.field protected o:Ljava/lang/String;

.field protected p:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Flag;",
            ">;"
        }
    .end annotation
.end field

.field protected q:Ljava/util/Date;

.field protected r:Lcom/alibaba/alimei/emailcommon/mail/Folder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/alimei/emailcommon/mail/Flag;

    sput-object v0, Lcom/alibaba/alimei/emailcommon/mail/Message;->a:[Lcom/alibaba/alimei/emailcommon/mail/Flag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->b:Lcom/alibaba/alimei/emailcommon/mail/MessageReference;

    .line 17
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->n:I

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->p:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V
    .locals 1
    .param p1, "flag"    # Lcom/alibaba/alimei/emailcommon/mail/Flag;
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 178
    if-eqz p2, :cond_0

    .line 180
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->p:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->p:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public abstract a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;[Lvo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/mail/Flag;)Z
    .locals 1
    .param p1, "flag"    # Lcom/alibaba/alimei/emailcommon/mail/Flag;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->p:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract a(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/alibaba/alimei/emailcommon/mail/Message$RecipientType;)[Lvo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public final b(Ljava/util/Date;)V
    .locals 0
    .param p1, "internalDate"    # Ljava/util/Date;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->q:Ljava/util/Date;

    .line 102
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->b:Lcom/alibaba/alimei/emailcommon/mail/MessageReference;

    .line 82
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->o:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .param p1, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 158
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 52
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/alibaba/alimei/emailcommon/mail/Message;

    if-nez v2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 56
    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/Message;

    .line 57
    .local v0, "other":Lcom/alibaba/alimei/emailcommon/mail/Message;
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->r:Lcom/alibaba/alimei/emailcommon/mail/Folder;

    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e()Ljava/lang/String;

    move-result-object v2

    .line 1087
    iget-object v3, v0, Lcom/alibaba/alimei/emailcommon/mail/Message;->r:Lcom/alibaba/alimei/emailcommon/mail/Folder;

    .line 57
    invoke-virtual {v3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->r:Lcom/alibaba/alimei/emailcommon/mail/Folder;

    .line 58
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->g()Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v2

    .line 1466
    iget-object v2, v2, Lcom/alibaba/alimei/emailcommon/Account;->a:Ljava/lang/String;

    .line 2087
    iget-object v3, v0, Lcom/alibaba/alimei/emailcommon/mail/Message;->r:Lcom/alibaba/alimei/emailcommon/mail/Folder;

    .line 58
    invoke-virtual {v3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->g()Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v3

    .line 2466
    iget-object v3, v3, Lcom/alibaba/alimei/emailcommon/Account;->a:Ljava/lang/String;

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->o:Ljava/lang/String;

    .line 3076
    iget-object v3, v0, Lcom/alibaba/alimei/emailcommon/mail/Message;->o:Ljava/lang/String;

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public abstract h()Ljava/util/Date;
.end method

.method public hashCode()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 68
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->r:Lcom/alibaba/alimei/emailcommon/mail/Folder;

    invoke-virtual {v1}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x1f

    .line 69
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->r:Lcom/alibaba/alimei/emailcommon/mail/Folder;

    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->g()Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v2

    .line 3466
    iget-object v2, v2, Lcom/alibaba/alimei/emailcommon/Account;->a:Ljava/lang/String;

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 70
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 71
    return v0
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()[Lvo;
.end method

.method public abstract k()[Lvo;
.end method

.method public abstract l()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract n()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->r:Lcom/alibaba/alimei/emailcommon/mail/Folder;

    return-object v0
.end method

.method public final q()Ljava/util/Date;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->q:Ljava/util/Date;

    return-object v0
.end method

.method public final r()[Lcom/alibaba/alimei/emailcommon/mail/Flag;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->p:Ljava/util/HashSet;

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/Message;->a:[Lcom/alibaba/alimei/emailcommon/mail/Flag;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/emailcommon/mail/Flag;

    return-object v0
.end method

.method public final s()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v0, 0x3e8

    .line 234
    iget v1, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->n:I

    if-ge v1, v0, :cond_0

    .line 237
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alibaba/alimei/emailcommon/mail/Message;->n:I

    goto :goto_0
.end method
