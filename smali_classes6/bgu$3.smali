.class final Lbgu$3;
.super Ljava/lang/Object;
.source "DataSourceDingImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbgu;->a(Ljava/util/List;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lbgu;


# direct methods
.method constructor <init>(Lbgu;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Lbgu;

    .prologue
    .line 1111
    iput-object p1, p0, Lbgu$3;->c:Lbgu;

    iput-object p2, p0, Lbgu$3;->a:Ljava/util/List;

    iput p3, p0, Lbgu$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1115
    :try_start_0
    iget-object v4, p0, Lbgu$3;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1116
    .local v2, "id":J
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1117
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "dingOperationStatus"

    iget v6, p0, Lbgu$3;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1118
    const-string/jumbo v4, "notifyCommentCount"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1119
    iget-object v4, p0, Lbgu$3;->c:Lbgu;

    const-string/jumbo v6, "tbdinglist"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "dingId"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "=?"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v6, v1, v7, v8}, Lbgu;->a(Lbgu;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1121
    .end local v1    # "values":Landroid/content/ContentValues;
    .end local v2    # "id":J
    :catch_0
    move-exception v0

    .line 1122
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "update ding operation status failed"

    invoke-static {v4, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1124
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method
