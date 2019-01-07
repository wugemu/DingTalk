.class final Lfne$1;
.super Ljava/lang/Object;
.source "LocalContactDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfne;->a(Ljava/util/List;)V
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
    .line 45
    iput-object p1, p0, Lfne$1;->b:Lfne;

    iput-object p2, p0, Lfne$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 48
    const/4 v2, 0x0

    .line 50
    .local v2, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v3, p0, Lfne$1;->b:Lfne;

    invoke-static {v3}, Lfne;->b(Lfne;)Lcom/alibaba/bee/DBManager;

    move-result-object v3

    iget-object v4, p0, Lfne$1;->b:Lfne;

    invoke-static {v4}, Lfne;->a(Lfne;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/user/entry/LocalContactEntry;

    const-string/jumbo v6, "tb_local_contact"

    const-string/jumbo v7, "phonenumber"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "uid"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "tag"

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lfne;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v2

    .line 53
    iget-object v3, p0, Lfne$1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/PhonebookObject;

    .line 55
    .local v1, "phonebookObject":Lcom/alibaba/android/user/model/PhonebookObject;
    iget-object v4, v1, Lcom/alibaba/android/user/model/PhonebookObject;->mobile:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    iget-object v4, v1, Lcom/alibaba/android/user/model/PhonebookObject;->mobile:Ljava/lang/String;

    invoke-static {v4}, Lfxg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/user/model/PhonebookObject;->mobile:Ljava/lang/String;

    .line 59
    :cond_0
    iget-boolean v4, v1, Lcom/alibaba/android/user/model/PhonebookObject;->isDelete:Z

    if-eqz v4, :cond_1

    .line 60
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, v1, Lcom/alibaba/android/user/model/PhonebookObject;->mobile:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-interface {v2, v4}, Lcom/alibaba/bee/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 65
    :goto_1
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 66
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    .end local v1    # "phonebookObject":Lcom/alibaba/android/user/model/PhonebookObject;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    invoke-static {v2}, Lfne;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 62
    .restart local v1    # "phonebookObject":Lcom/alibaba/android/user/model/PhonebookObject;
    :cond_1
    const/4 v4, 0x3

    :try_start_2
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, v1, Lcom/alibaba/android/user/model/PhonebookObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v1, Lcom/alibaba/android/user/model/PhonebookObject;->tag:I

    .line 63
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, v1, Lcom/alibaba/android/user/model/PhonebookObject;->mobile:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 62
    invoke-interface {v2, v4}, Lcom/alibaba/bee/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 71
    .end local v1    # "phonebookObject":Lcom/alibaba/android/user/model/PhonebookObject;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lfne;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v3

    :cond_2
    invoke-static {v2}, Lfne;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_2
.end method
