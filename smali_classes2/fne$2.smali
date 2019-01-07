.class final Lfne$2;
.super Ljava/lang/Object;
.source "LocalContactDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfne;->b(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lfne;


# direct methods
.method constructor <init>(Lfne;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lfne;

    .prologue
    .line 82
    iput-object p1, p0, Lfne$2;->b:Lfne;

    iput-object p2, p0, Lfne$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v11, 0x1

    .line 85
    const/4 v1, 0x0

    .line 87
    .local v1, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v3, p0, Lfne$2;->b:Lfne;

    invoke-static {v3}, Lfne;->d(Lfne;)Lcom/alibaba/bee/DBManager;

    move-result-object v3

    iget-object v4, p0, Lfne$2;->b:Lfne;

    invoke-static {v4}, Lfne;->c(Lfne;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/user/entry/LocalContactEntry;

    const-string/jumbo v6, "tb_local_contact"

    const-string/jumbo v7, "phonenumber"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "uid"

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lfne;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v1

    .line 90
    iget-object v3, p0, Lfne$2;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 91
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v2, :cond_0

    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 94
    iget v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->numberType:I

    if-eq v4, v11, :cond_0

    .line 97
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 98
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v4}, Lfxg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 101
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-interface {v1, v4}, Lcom/alibaba/bee/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 102
    invoke-interface {v1}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 103
    invoke-interface {v1}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 105
    .end local v2    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-static {v1}, Lfne;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 108
    :cond_2
    invoke-static {v1}, Lfne;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v1}, Lfne;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v3
.end method
