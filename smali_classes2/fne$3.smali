.class final Lfne$3;
.super Ljava/lang/Object;
.source "LocalContactDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfne;->c(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lfne;


# direct methods
.method constructor <init>(Lfne;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lfne;

    .prologue
    .line 119
    iput-object p1, p0, Lfne$3;->c:Lfne;

    iput-object p2, p0, Lfne$3;->a:Ljava/util/List;

    iput-object p3, p0, Lfne$3;->b:Ljava/util/concurrent/atomic/AtomicInteger;

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
    .line 122
    const/4 v3, 0x0

    .line 124
    .local v3, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v4, p0, Lfne$3;->c:Lfne;

    invoke-static {v4}, Lfne;->f(Lfne;)Lcom/alibaba/bee/DBManager;

    move-result-object v4

    iget-object v5, p0, Lfne$3;->c:Lfne;

    invoke-static {v5}, Lfne;->e(Lfne;)Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/user/entry/LocalContactEntry;

    const-class v7, Lcom/alibaba/android/user/entry/LocalContactEntry;

    const-string/jumbo v8, "tb_local_contact"

    invoke-static {v7, v8}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v3

    .line 125
    iget-object v4, p0, Lfne$3;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 126
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    invoke-static {v2}, Lcom/alibaba/android/user/entry/LocalContactEntry;->toDBEntry(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Lcom/alibaba/android/user/entry/LocalContactEntry;

    move-result-object v1

    .line 128
    .local v1, "entry":Lcom/alibaba/android/user/entry/LocalContactEntry;
    iget-object v5, p0, Lfne$3;->c:Lfne;

    invoke-static {v5, v1}, Lfne;->a(Lfne;Lcom/alibaba/android/user/entry/LocalContactEntry;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 132
    iget-object v5, v1, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 133
    iget-object v5, v1, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    const-string/jumbo v6, " "

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    .line 136
    :cond_1
    iget-object v5, v1, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 137
    iget-object v5, v1, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-static {v5}, Lfxg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    .line 140
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/alibaba/android/user/entry/LocalContactEntry;->modifyTime:J

    .line 141
    invoke-virtual {v1, v3}, Lcom/alibaba/android/user/entry/LocalContactEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 142
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 143
    invoke-interface {v3}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 144
    iget-object v5, p0, Lfne$3;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    .end local v1    # "entry":Lcom/alibaba/android/user/entry/LocalContactEntry;
    .end local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    invoke-static {v3}, Lfne;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 149
    :cond_3
    invoke-static {v3}, Lfne;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v3}, Lfne;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v4
.end method
