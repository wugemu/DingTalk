.class public Lcom/alibaba/alimei/contact/db/InitialContactMigration;
.super Ljava/lang/Object;
.source "InitialContactMigration.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/migration/Migration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private initContactMimeTypes(Lcom/alibaba/alimei/orm/IDatabase;)V
    .locals 9
    .param p1, "db"    # Lcom/alibaba/alimei/orm/IDatabase;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v1, "mimeTypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    const-string/jumbo v4, "vnd.android.cursor.item/im"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    const-string/jumbo v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const-string/jumbo v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    const-string/jumbo v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    const-string/jumbo v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    const-string/jumbo v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    const-string/jumbo v4, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    const-string/jumbo v4, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const-string/jumbo v4, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const-string/jumbo v4, "vnd.android.cursor.item/community"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/contact/db/entry/Mimetypes;

    const-string/jumbo v5, "contacts2.db"

    const-string/jumbo v6, "mimetypes"

    invoke-direct {v2, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    aput-object v5, v4, v7

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 46
    invoke-interface {p1}, Lcom/alibaba/alimei/orm/IDatabase;->beginTransaction()V

    .line 47
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 48
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    .local v0, "mimeType":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 50
    const-string/jumbo v5, "mimetype=?"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v5

    if-nez v5, :cond_0

    .line 56
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 57
    const-string/jumbo v5, "mimetype"

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v5, "mimetypes"

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6, v3}, Lcom/alibaba/alimei/orm/IDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 60
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/alimei/orm/IDatabase;->setTransactionSuccessful()V

    .line 61
    invoke-interface {p1}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    .line 62
    return-void
.end method


# virtual methods
.method public getMigrationUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "2014122301"

    return-object v0
.end method

.method public up(Lcom/alibaba/alimei/orm/IDatabase;II)V
    .locals 0
    .param p1, "db"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/contact/db/InitialContactMigration;->initContactMimeTypes(Lcom/alibaba/alimei/orm/IDatabase;)V

    .line 26
    return-void
.end method
