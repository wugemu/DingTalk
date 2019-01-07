.class public Lcom/alibaba/alimei/contact/db/ContactConfigure;
.super Ljava/lang/Object;
.source "ContactConfigure.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "contacts2.db"

.field public static final DATABASE_VERSION:I = 0x3

.field private static sConfigurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/orm/Configuration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/alimei/contact/db/ContactConfigure;->sConfigurations:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static addMiniDatabaseTables(Lcom/alibaba/alimei/orm/Configuration;)V
    .locals 1
    .param p0, "configuration"    # Lcom/alibaba/alimei/orm/Configuration;

    .prologue
    .line 54
    const-class v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 55
    new-instance v0, Lcom/alibaba/alimei/contact/db/ContactConfigure$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/db/ContactConfigure$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 77
    new-instance v0, Lcom/alibaba/alimei/contact/db/ContactConfigure$2;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/db/ContactConfigure$2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 103
    new-instance v0, Lcom/alibaba/alimei/contact/db/entry/ContactEntry$ContactExtendMigrate;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/db/entry/ContactEntry$ContactExtendMigrate;-><init>()V

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 104
    return-void
.end method

.method private static addWholeDatabaseTables(Lcom/alibaba/alimei/orm/Configuration;)V
    .locals 1
    .param p0, "configuration"    # Lcom/alibaba/alimei/orm/Configuration;

    .prologue
    .line 107
    const-class v0, Lcom/alibaba/alimei/contact/db/entry/ContactExtendEntry;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 110
    const-class v0, Lcom/alibaba/alimei/contact/db/entry/CallLog;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 111
    const-class v0, Lcom/alibaba/alimei/contact/db/entry/Mimetypes;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 114
    const-class v0, Lcom/alibaba/alimei/contact/db/views/ViewContactExtent;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/orm/Configuration;->addViewEntry(Ljava/lang/Class;)V

    .line 116
    const-class v0, Lcom/alibaba/alimei/contact/db/trigger/contacts_delete;

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/orm/Configuration;->addTriggerEntry(Ljava/lang/Class;)V

    .line 119
    new-instance v0, Lcom/alibaba/alimei/contact/db/InitialContactMigration;

    invoke-direct {v0}, Lcom/alibaba/alimei/contact/db/InitialContactMigration;-><init>()V

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 121
    return-void
.end method

.method public static getDatabaseConfigs(Z)Ljava/util/List;
    .locals 3
    .param p0, "isMiniContact"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/orm/Configuration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    sget-object v1, Lcom/alibaba/alimei/contact/db/ContactConfigure;->sConfigurations:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Lcom/alibaba/alimei/contact/db/ContactConfigure;->sConfigurations:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/alibaba/alimei/orm/Configuration;

    const-string/jumbo v1, "contacts2.db"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/orm/Configuration;-><init>(Ljava/lang/String;I)V

    .line 44
    .local v0, "configuration":Lcom/alibaba/alimei/orm/Configuration;
    invoke-static {v0}, Lcom/alibaba/alimei/contact/db/ContactConfigure;->addMiniDatabaseTables(Lcom/alibaba/alimei/orm/Configuration;)V

    .line 45
    if-nez p0, :cond_0

    .line 46
    invoke-static {v0}, Lcom/alibaba/alimei/contact/db/ContactConfigure;->addWholeDatabaseTables(Lcom/alibaba/alimei/orm/Configuration;)V

    .line 48
    :cond_0
    sget-object v1, Lcom/alibaba/alimei/contact/db/ContactConfigure;->sConfigurations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v0    # "configuration":Lcom/alibaba/alimei/orm/Configuration;
    :cond_1
    sget-object v1, Lcom/alibaba/alimei/contact/db/ContactConfigure;->sConfigurations:Ljava/util/ArrayList;

    return-object v1
.end method
