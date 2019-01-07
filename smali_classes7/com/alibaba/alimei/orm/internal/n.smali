.class Lcom/alibaba/alimei/orm/internal/n;
.super Ljava/lang/Object;
.source "M00_Setup.java"

# interfaces
.implements Lcom/alibaba/alimei/orm/migration/Migration;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMigrationUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "201412010101"

    return-object v0
.end method

.method public up(Lcom/alibaba/alimei/orm/IDatabase;II)V
    .locals 1
    .param p1, "db"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 13
    const-class v0, Lcom/alibaba/alimei/orm/migration/DbMigration;

    invoke-static {p1, v0}, Lcom/alibaba/alimei/orm/migration/MigrationExecutor;->createTable(Lcom/alibaba/alimei/orm/IDatabase;Ljava/lang/Class;)V

    .line 14
    return-void
.end method
