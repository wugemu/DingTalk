.class public Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;
.super Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
.source "MailSearchHistoryGroupModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountId:J

.field private addedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;"
        }
    .end annotation
.end field

.field private changedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;"
        }
    .end annotation
.end field

.field private deletedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "accountId"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/DataGroupModel;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->accountId:J

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->addedList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->changedList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->deletedList:Ljava/util/List;

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/DataGroupModel;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->accountId:J

    .line 45
    const-class v1, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 46
    .local v0, "loader":Ljava/lang/ClassLoader;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->addedList:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 47
    iget-object v1, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->changedList:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 48
    iget-object v1, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->deletedList:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addToAddList(Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;)V
    .locals 1
    .param p1, "historyModel"    # Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    .prologue
    .line 71
    if-nez p1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->addedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->addedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addToChangeList(Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;)V
    .locals 1
    .param p1, "historyModel"    # Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    .prologue
    .line 88
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->changedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->changedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addToDeleteList(Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;)V
    .locals 1
    .param p1, "historyModel"    # Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    .prologue
    .line 105
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->deletedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->deletedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAccountId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->accountId:J

    return-wide v0
.end method

.method public getAddedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->addedList:Ljava/util/List;

    return-object v0
.end method

.method public getChangedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->changedList:Ljava/util/List;

    return-object v0
.end method

.method public getDeletedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->deletedList:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->addedList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->addedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->changedList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->changedList:Ljava/util/List;

    .line 128
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->deletedList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->deletedList:Ljava/util/List;

    .line 129
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddedList(Ljava/util/List;)V
    .locals 1
    .param p1, "addedList"    # Ljava/util/List;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->addedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->addedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    :cond_0
    return-void
.end method

.method public setChangedList(Ljava/util/List;)V
    .locals 1
    .param p1, "changedList"    # Ljava/util/List;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->changedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->changedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    :cond_0
    return-void
.end method

.method public setDeletedList(Ljava/util/List;)V
    .locals 1
    .param p1, "deletedList"    # Ljava/util/List;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->deletedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->deletedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->accountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->addedList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->changedList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryGroupModel;->deletedList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 57
    return-void
.end method
