.class final Lfng$1;
.super Ljava/lang/Object;
.source "OrgEmployeeClosestDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfng;->a(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:[I

.field final synthetic c:Lfng;


# direct methods
.method constructor <init>(Lfng;Ljava/util/List;[I)V
    .locals 0
    .param p1, "this$0"    # Lfng;

    .prologue
    .line 30
    iput-object p1, p0, Lfng$1;->c:Lfng;

    iput-object p2, p0, Lfng$1;->a:Ljava/util/List;

    iput-object p3, p0, Lfng$1;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 33
    const/4 v3, 0x0

    .line 35
    .local v3, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v4, p0, Lfng$1;->c:Lfng;

    invoke-static {v4}, Lfng;->b(Lfng;)Lcom/alibaba/bee/DBManager;

    move-result-object v4

    iget-object v5, p0, Lfng$1;->c:Lfng;

    invoke-static {v5}, Lfng;->a(Lfng;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;

    const-class v7, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;

    const-string/jumbo v8, "tb_org_employee_closest"

    invoke-static {v7, v8}, Lcom/alibaba/bee/DatabaseUtils;->getInsertStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v3

    .line 36
    iget-object v4, p0, Lfng$1;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;

    .line 37
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;
    if-eqz v2, :cond_0

    .line 38
    invoke-static {v2}, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->fromOrgEmployeeClosestObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;)Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;

    move-result-object v1

    .line 39
    .local v1, "entry":Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;
    invoke-virtual {v1, v3}, Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 40
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 41
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 42
    iget-object v5, p0, Lfng$1;->b:[I

    const/4 v6, 0x0

    iget-object v7, p0, Lfng$1;->b:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 45
    .end local v1    # "entry":Lcom/alibaba/android/user/entry/OrgEmployeeClosestEntry;
    .end local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    invoke-static {v3}, Lfng;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 48
    :cond_1
    invoke-static {v3}, Lfng;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v3}, Lfng;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v4
.end method
