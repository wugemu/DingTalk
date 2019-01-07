.class Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "DentryAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->searchDentryFromLocal(Ljava/lang/String;Ljava/util/List;IIJILjava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

.field final synthetic val$folderId:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$offset:I

.field final synthetic val$orgId:J

.field final synthetic val$pageSize:I

.field final synthetic val$searchType:I

.field final synthetic val$spaceIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;JILjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    iput-object p3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$key:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$pageSize:I

    iput p5, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$offset:I

    iput-object p6, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$spaceIds:Ljava/util/List;

    iput-wide p7, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$orgId:J

    iput p9, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$searchType:I

    iput-object p10, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$folderId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 10
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1185
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$key:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1186
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 1202
    :goto_0
    return-void

    .line 1190
    :cond_0
    iget v4, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$pageSize:I

    .line 1191
    .local v4, "size":I
    iget v3, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$offset:I

    .line 1192
    .local v3, "index":I
    iget v1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$pageSize:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$pageSize:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_2

    .line 1193
    :cond_1
    const/16 v4, 0xa

    .line 1196
    :cond_2
    iget v1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$offset:I

    if-gez v1, :cond_3

    .line 1197
    const/4 v3, 0x0

    .line 1200
    :cond_3
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v0

    .line 1201
    .local v0, "dentryDatasource":Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    iget-object v1, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->this$0:Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-static {v1}, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;->access$3900(Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$key:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$spaceIds:Ljava/util/List;

    iget-wide v6, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$orgId:J

    iget v8, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$searchType:I

    iget-object v9, p0, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl$24;->val$folderId:Ljava/lang/String;

    invoke-interface/range {v0 .. v9}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->searchDentry(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;JILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0
.end method
