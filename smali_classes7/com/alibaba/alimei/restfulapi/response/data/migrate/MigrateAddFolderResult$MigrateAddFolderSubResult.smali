.class public Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult$MigrateAddFolderSubResult;
.super Ljava/lang/Object;
.source "MigrateAddFolderResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MigrateAddFolderSubResult"
.end annotation


# instance fields
.field private folderId:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult$MigrateAddFolderSubResult;->this$0:Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult$MigrateAddFolderSubResult;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public setFolderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderId"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/migrate/MigrateAddFolderResult$MigrateAddFolderSubResult;->folderId:Ljava/lang/String;

    .line 40
    return-void
.end method
