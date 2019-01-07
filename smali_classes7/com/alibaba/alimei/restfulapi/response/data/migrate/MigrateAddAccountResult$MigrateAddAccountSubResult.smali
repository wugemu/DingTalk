.class public Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult$MigrateAddAccountSubResult;
.super Ljava/lang/Object;
.source "MigrateAddAccountResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MigrateAddAccountSubResult"
.end annotation


# instance fields
.field private migrateFolderId:Ljava/lang/String;

.field private sourceAccunt:Ljava/lang/String;

.field private sourcePasword:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult$MigrateAddAccountSubResult;->this$0:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMigrateFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult$MigrateAddAccountSubResult;->migrateFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceAccunt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult$MigrateAddAccountSubResult;->sourceAccunt:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePasword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult$MigrateAddAccountSubResult;->sourcePasword:Ljava/lang/String;

    return-object v0
.end method

.method public setMigrateFolderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "migrateFolderId"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult$MigrateAddAccountSubResult;->migrateFolderId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setSourceAccunt(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceAccunt"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult$MigrateAddAccountSubResult;->sourceAccunt:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setSourcePasword(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourcePasword"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddAccountResult$MigrateAddAccountSubResult;->sourcePasword:Ljava/lang/String;

    .line 56
    return-void
.end method
