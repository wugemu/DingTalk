.class public Lcom/alibaba/alimei/contact/model/ContactModelGroup;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "ContactModelGroup.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModelGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private addContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;"
        }
    .end annotation
.end field

.field private changedContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;"
        }
    .end annotation
.end field

.field private deletedContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/alibaba/alimei/contact/model/ContactModelGroup$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/model/ContactModelGroup$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->addContacts:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->changedContacts:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->deletedContacts:Ljava/util/List;

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alibaba/alimei/contact/model/ContactModelGroup;-><init>()V

    .line 76
    const-class v1, Lcom/alibaba/alimei/contact/model/ContactModelGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 77
    .local v0, "loader":Ljava/lang/ClassLoader;
    iget-object v1, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->addContacts:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 78
    iget-object v1, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->changedContacts:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 79
    iget-object v1, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->deletedContacts:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/contact/model/ContactModelGroup$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/contact/model/ContactModelGroup$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/contact/model/ContactModelGroup;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addAddedContact(Lcom/alibaba/alimei/contact/model/ContactModel;)V
    .locals 1
    .param p1, "contact"    # Lcom/alibaba/alimei/contact/model/ContactModel;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->addContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->addContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    return-void
.end method

.method public addChangedContact(Lcom/alibaba/alimei/contact/model/ContactModel;)V
    .locals 1
    .param p1, "contact"    # Lcom/alibaba/alimei/contact/model/ContactModel;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->changedContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->changedContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-void
.end method

.method public addDeletedContact(Lcom/alibaba/alimei/contact/model/ContactModel;)V
    .locals 1
    .param p1, "contact"    # Lcom/alibaba/alimei/contact/model/ContactModel;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->deletedContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->deletedContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    return-void
.end method

.method public getAddContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->addContacts:Ljava/util/List;

    return-object v0
.end method

.method public getChangedContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->changedContacts:Ljava/util/List;

    return-object v0
.end method

.method public getDeletedContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->deletedContacts:Ljava/util/List;

    return-object v0
.end method

.method public setAddContacts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "addContacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/model/ContactModel;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->addContacts:Ljava/util/List;

    .line 34
    return-void
.end method

.method public setChangedContacts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "changedContacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/model/ContactModel;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->changedContacts:Ljava/util/List;

    .line 47
    return-void
.end method

.method public setDeletedContacts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/contact/model/ContactModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "deletedContacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/contact/model/ContactModel;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->deletedContacts:Ljava/util/List;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ContactModelGroup [addContacts="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->addContacts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", changedContacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->changedContacts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deletedContacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->deletedContacts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->getAddContacts()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->getChangedContacts()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/alimei/contact/model/ContactModelGroup;->getDeletedContacts()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 72
    return-void
.end method
