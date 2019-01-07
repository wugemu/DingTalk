.class public Lcom/alibaba/alimei/orm/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field private enableWAL:Z

.field private isCipher:Z

.field private final mDatabaseName:Ljava/lang/String;

.field private mGenerator:Lcom/alibaba/alimei/orm/CipherGenerator;

.field private final mInitDatabaseVersion:I

.field private mMigrations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/orm/migration/Migration;",
            ">;"
        }
    .end annotation
.end field

.field private mTableEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTriggerEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TriggerEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mVersionIncrement:I

.field private mViewEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/ViewEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "initDatabaseVersion"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/alimei/orm/Configuration;-><init>(Ljava/lang/String;IZ)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "initDatabaseVersion"    # I
    .param p3, "isCipher"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mVersionIncrement:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mGenerator:Lcom/alibaba/alimei/orm/CipherGenerator;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/orm/Configuration;->enableWAL:Z

    .line 43
    iput-object p1, p0, Lcom/alibaba/alimei/orm/Configuration;->mDatabaseName:Ljava/lang/String;

    .line 44
    iput p2, p0, Lcom/alibaba/alimei/orm/Configuration;->mInitDatabaseVersion:I

    .line 45
    iput-boolean p3, p0, Lcom/alibaba/alimei/orm/Configuration;->isCipher:Z

    .line 46
    return-void
.end method


# virtual methods
.method public addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V
    .locals 1
    .param p1, "migration"    # Lcom/alibaba/alimei/orm/migration/Migration;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mMigrations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mMigrations:Ljava/util/ArrayList;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mMigrations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mMigrations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mVersionIncrement:I

    .line 143
    return-void
.end method

.method public addTableEntry(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/String;Ljava/lang/Class;)V

    .line 54
    return-void
.end method

.method public addTableEntry(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mTableEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mTableEntries:Ljava/util/ArrayList;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mTableEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/Configuration;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/alibaba/alimei/orm/internal/d;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public addTriggerEntry(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TriggerEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "triggerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TriggerEntry;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mTriggerEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mTriggerEntries:Ljava/util/ArrayList;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mTriggerEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public addViewEntry(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/ViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/ViewEntry;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mViewEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mViewEntries:Ljava/util/ArrayList;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mViewEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/Configuration;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/alimei/orm/internal/d;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public genCipherKey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/Configuration;->isCipher()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    const/4 v1, 0x0

    .line 213
    :goto_0
    return-object v1

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/orm/Configuration;->mGenerator:Lcom/alibaba/alimei/orm/CipherGenerator;

    if-nez v1, :cond_1

    .line 210
    new-instance v0, Lcom/alibaba/alimei/orm/internal/f;

    invoke-direct {v0}, Lcom/alibaba/alimei/orm/internal/f;-><init>()V

    .line 211
    .local v0, "key":Lcom/alibaba/alimei/orm/internal/f;
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/internal/f;->genCipherKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 213
    .end local v0    # "key":Lcom/alibaba/alimei/orm/internal/f;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/orm/Configuration;->mGenerator:Lcom/alibaba/alimei/orm/CipherGenerator;

    invoke-interface {v1}, Lcom/alibaba/alimei/orm/CipherGenerator;->genCipherKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDatabaseVersion()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 164
    iget v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mInitDatabaseVersion:I

    iget v1, p0, Lcom/alibaba/alimei/orm/Configuration;->mVersionIncrement:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMigrations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/orm/migration/Migration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mMigrations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTableMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TableEntry;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    iget-object v2, p0, Lcom/alibaba/alimei/orm/Configuration;->mDatabaseName:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/alimei/orm/internal/d;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 78
    .local v1, "tableMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/orm/Configuration;->mTableEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/alimei/orm/Configuration;->mTableEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/orm/Configuration;->mTableEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 80
    .local v0, "tableEntry":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    invoke-virtual {p0}, Lcom/alibaba/alimei/orm/Configuration;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/alimei/orm/internal/d;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v0    # "tableEntry":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/orm/TableEntry;>;"
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/orm/Configuration;->mDatabaseName:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/alimei/orm/internal/d;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 83
    if-nez v1, :cond_2

    .line 84
    new-instance v2, Lcom/alibaba/alimei/orm/AlimeiOrmException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u672a\u83b7\u53d6\u5230database["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/alimei/orm/Configuration;->mDatabaseName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]\u7684\u914d\u7f6e\u4fe1\u606f\uff0c\u8bf7\u68c0\u67e5\u914d\u7f6e\u4ee3\u7801"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/alimei/orm/AlimeiOrmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_2
    return-object v1
.end method

.method public getTriggerEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/TriggerEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mTriggerEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/orm/ViewEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mViewEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCipher()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/alibaba/alimei/orm/Configuration;->isCipher:Z

    return v0
.end method

.method public isEnableWAL()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/alibaba/alimei/orm/Configuration;->enableWAL:Z

    return v0
.end method

.method public releaseUnusedResource()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mMigrations:Ljava/util/ArrayList;

    .line 176
    iput-object v0, p0, Lcom/alibaba/alimei/orm/Configuration;->mTriggerEntries:Ljava/util/ArrayList;

    .line 177
    return-void
.end method

.method public setCipher(Z)V
    .locals 0
    .param p1, "isCipher"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/alibaba/alimei/orm/Configuration;->isCipher:Z

    .line 189
    return-void
.end method

.method public setCipherGenerator(Lcom/alibaba/alimei/orm/CipherGenerator;)V
    .locals 1
    .param p1, "generator"    # Lcom/alibaba/alimei/orm/CipherGenerator;

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/alibaba/alimei/orm/Configuration;->isCipher:Z

    if-eqz v0, :cond_0

    .line 197
    iput-object p1, p0, Lcom/alibaba/alimei/orm/Configuration;->mGenerator:Lcom/alibaba/alimei/orm/CipherGenerator;

    .line 199
    :cond_0
    return-void
.end method

.method public setEnableWAL(Z)V
    .locals 0
    .param p1, "enableWAL"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/alibaba/alimei/orm/Configuration;->enableWAL:Z

    .line 229
    return-void
.end method
