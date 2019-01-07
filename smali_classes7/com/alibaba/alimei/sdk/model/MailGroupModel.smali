.class public Lcom/alibaba/alimei/sdk/model/MailGroupModel;
.super Lcom/alibaba/alimei/framework/datasource/DataGroupModel;
.source "MailGroupModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailGroupModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final ImapIncrement:I = 0x5

.field public static final ImapSync:I = 0x2

.field public static final Other:I = -0x9

.field public static final Push:I = 0x3

.field public static final Sync:I = 0x1


# instance fields
.field private addedMails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private changeReason:I

.field private changedMails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private deletedMails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAccountId:J

.field private mAccountName:Ljava/lang/String;

.field private mFolderId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 325
    new-instance v0, Lcom/alibaba/alimei/sdk/model/MailGroupModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;I)V
    .locals 1
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "reason"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/DataGroupModel;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changeReason:I

    .line 61
    iput p4, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changeReason:I

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addedMails:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changedMails:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->deletedMails:Ljava/util/Map;

    .line 65
    iput-wide p1, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->mAccountId:J

    .line 66
    iput-object p3, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->mAccountName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JI)V
    .locals 1
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "folderId"    # J
    .param p6, "reason"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/DataGroupModel;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changeReason:I

    .line 71
    iput p6, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changeReason:I

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addedMails:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changedMails:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->deletedMails:Ljava/util/Map;

    .line 75
    iput-wide p1, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->mAccountId:J

    .line 76
    iput-object p3, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->mAccountName:Ljava/lang/String;

    .line 77
    iput-wide p4, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->mFolderId:J

    .line 78
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/DataGroupModel;-><init>()V

    .line 57
    const/4 v1, 0x1

    iput v1, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changeReason:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changeReason:I

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->mAccountId:J

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->mAccountName:Ljava/lang/String;

    .line 319
    const-class v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 320
    .local v0, "loader":Ljava/lang/ClassLoader;
    invoke-direct {p0, v0, p1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->readMapFromParcel(Ljava/lang/ClassLoader;Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addedMails:Ljava/util/Map;

    .line 321
    invoke-direct {p0, v0, p1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->readMapFromParcel(Ljava/lang/ClassLoader;Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changedMails:Ljava/util/Map;

    .line 322
    invoke-direct {p0, v0, p1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->readMapFromParcel(Ljava/lang/ClassLoader;Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->deletedMails:Ljava/util/Map;

    .line 323
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/model/MailGroupModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/model/MailGroupModel$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readMapFromParcel(Ljava/lang/ClassLoader;Landroid/os/Parcel;)Ljava/util/Map;
    .locals 8
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 303
    .local v6, "size":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 304
    .local v1, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 306
    .local v2, "id":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 307
    .local v4, "modelSize":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 308
    .local v5, "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-virtual {p2, v5, p1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 309
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    .end local v2    # "id":J
    .end local v4    # "modelSize":I
    .end local v5    # "models":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    return-object v1
.end method

.method private writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 287
    .local p2, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-virtual {p0, p2}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    .line 288
    .local v3, "size":I
    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    if-lez v3, :cond_1

    .line 290
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 291
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 293
    .local v0, "id":Ljava/lang/Long;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 294
    .local v2, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 295
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_1

    .line 287
    .end local v0    # "id":Ljava/lang/Long;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v2    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v3    # "size":I
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    goto :goto_0

    .line 299
    .restart local v3    # "size":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addAddedMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 4
    .param p1, "mail"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 160
    .local v0, "folderId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addedMails:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 161
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-nez v1, :cond_1

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addedMails:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addChangedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 4
    .param p1, "mail"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 193
    .local v0, "folderId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changedMails:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 194
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-nez v1, :cond_1

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changedMails:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addDeletedMails(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 4
    .param p1, "mail"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 226
    .local v0, "folderId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->deletedMails:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 227
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-nez v1, :cond_1

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->deletedMails:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAccountId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->mAccountId:J

    return-wide v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAddedMails(J)Ljava/util/List;
    .locals 3
    .param p1, "folderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addedMails:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addedMails:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public getAddedMails()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addedMails:Ljava/util/Map;

    return-object v0
.end method

.method public getAllAddedMails()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 105
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addedMails:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 106
    const/4 v0, 0x0

    .line 118
    :cond_0
    return-object v0

    .line 109
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "addMails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addedMails:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 111
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 113
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 114
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getAllChangedMails()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 122
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changedMails:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 123
    const/4 v0, 0x0

    .line 135
    :cond_0
    return-object v0

    .line 126
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, "changeMails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changedMails:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 128
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 130
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 131
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getAllDeletedMails()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 139
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->deletedMails:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 140
    const/4 v0, 0x0

    .line 152
    :cond_0
    return-object v0

    .line 143
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "deleteMails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->deletedMails:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 145
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 147
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 148
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getChangeReason()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changeReason:I

    return v0
.end method

.method public getChangedMails(J)Ljava/util/List;
    .locals 3
    .param p1, "folderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changedMails:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changedMails:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public getChangedMails()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changedMails:Ljava/util/Map;

    return-object v0
.end method

.method public getDeletedMails(J)Ljava/util/List;
    .locals 3
    .param p1, "folderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->deletedMails:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->deletedMails:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public getDeletedMails()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->deletedMails:Ljava/util/Map;

    return-object v0
.end method

.method public hasValidFolder()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->mFolderId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addedMails:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changedMails:Ljava/util/Map;

    .line 252
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->deletedMails:Ljava/util/Map;

    .line 253
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "mails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddedMails(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "addedMails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addedMails:Ljava/util/Map;

    .line 170
    return-void
.end method

.method public setChangedMails(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "changedMails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changedMails:Ljava/util/Map;

    .line 203
    return-void
.end method

.method public setDeletedMails(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "deletedMails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->deletedMails:Ljava/util/Map;

    .line 236
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MailGroupModel [mAccountId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->mAccountId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAccountName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", addedMails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addedMails:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", changedMails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changedMails:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deletedMails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->deletedMails:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", changeReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changeReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 278
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changeReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->mAccountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 280
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->addedMails:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 282
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->changedMails:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 283
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->deletedMails:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->writeMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 284
    return-void
.end method
