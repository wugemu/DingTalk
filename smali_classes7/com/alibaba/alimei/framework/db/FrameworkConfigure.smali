.class public Lcom/alibaba/alimei/framework/db/FrameworkConfigure;
.super Ljava/lang/Object;
.source "FrameworkConfigure.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "almfwork.db"

.field public static final DATABASE_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FrameworkConfigure"

.field public static sConfiguration:Lcom/alibaba/alimei/orm/Configuration;

.field public static final sDBLocker:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 23
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sput-object v6, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sDBLocker:Ljava/lang/Object;

    .line 30
    new-instance v6, Lcom/alibaba/alimei/orm/Configuration;

    const-string/jumbo v7, "almfwork.db"

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/alibaba/alimei/orm/Configuration;-><init>(Ljava/lang/String;I)V

    .line 32
    sput-object v6, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    const-class v7, Lcom/alibaba/alimei/framework/db/Account;

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 33
    sget-object v6, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    const-class v7, Lcom/alibaba/alimei/framework/db/HostAuth;

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 34
    sget-object v6, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    const-class v7, Lcom/alibaba/alimei/framework/db/AutoTryTaskEntry;

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/Class;)V

    .line 36
    new-instance v0, Lcom/alibaba/alimei/framework/db/FrameworkConfigure$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/framework/db/FrameworkConfigure$1;-><init>()V

    .line 63
    .local v0, "encryptMigration":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v6, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 68
    new-instance v4, Lcom/alibaba/alimei/framework/db/FrameworkConfigure$2;

    invoke-direct {v4}, Lcom/alibaba/alimei/framework/db/FrameworkConfigure$2;-><init>()V

    .line 88
    .local v4, "migrationUpdateUnreadCount":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v6, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    invoke-virtual {v6, v4}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 93
    new-instance v3, Lcom/alibaba/alimei/framework/db/FrameworkConfigure$3;

    invoke-direct {v3}, Lcom/alibaba/alimei/framework/db/FrameworkConfigure$3;-><init>()V

    .line 150
    .local v3, "migrationAddCommonColumns":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v6, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    invoke-virtual {v6, v3}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 152
    new-instance v5, Lcom/alibaba/alimei/framework/db/FrameworkConfigure$4;

    invoke-direct {v5}, Lcom/alibaba/alimei/framework/db/FrameworkConfigure$4;-><init>()V

    .line 170
    .local v5, "tagSyncKeyMigration":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v6, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    invoke-virtual {v6, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 173
    new-instance v2, Lcom/alibaba/alimei/framework/db/FrameworkConfigure$5;

    invoke-direct {v2}, Lcom/alibaba/alimei/framework/db/FrameworkConfigure$5;-><init>()V

    .line 191
    .local v2, "folderSyncKeyMigration":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v6, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    invoke-virtual {v6, v2}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 193
    new-instance v1, Lcom/alibaba/alimei/framework/db/FrameworkConfigure$6;

    invoke-direct {v1}, Lcom/alibaba/alimei/framework/db/FrameworkConfigure$6;-><init>()V

    .line 216
    .local v1, "extendMigration":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v6, Lcom/alibaba/alimei/framework/db/FrameworkConfigure;->sConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    invoke-virtual {v6, v1}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 217
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
