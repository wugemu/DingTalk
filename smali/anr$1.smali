.class final Lanr$1;
.super Ljava/lang/Object;
.source "AdsPositionDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanr;->a(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lanr;


# direct methods
.method constructor <init>(Lanr;Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lanr;

    .prologue
    .line 122
    iput-object p1, p0, Lanr$1;->c:Lanr;

    iput-object p2, p0, Lanr$1;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    iput-object p3, p0, Lanr$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 125
    const/4 v2, 0x0

    .line 127
    .local v2, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v3, p0, Lanr$1;->c:Lanr;

    invoke-static {v3}, Lanr;->b(Lanr;)Lcom/alibaba/bee/DBManager;

    move-result-object v3

    iget-object v4, p0, Lanr$1;->c:Lanr;

    invoke-static {v4}, Lanr;->a(Lanr;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/ads/db/AdsPositionEntry;

    const-class v6, Lcom/alibaba/android/ads/db/AdsPositionEntry;

    const-string/jumbo v7, "tb_ads_position"

    invoke-static {v6, v7}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v2

    .line 128
    iget-object v3, p0, Lanr$1;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;

    invoke-static {v3}, Lcom/alibaba/android/ads/db/AdsPositionEntry;->toDBEntry(Lcom/alibaba/android/dingtalk/ads/base/models/AdsPositionObject;)Lcom/alibaba/android/ads/db/AdsPositionEntry;

    move-result-object v1

    .line 129
    .local v1, "entry":Lcom/alibaba/android/ads/db/AdsPositionEntry;
    invoke-virtual {v1, v2}, Lcom/alibaba/android/ads/db/AdsPositionEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 130
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 131
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 132
    iget-object v3, p0, Lanr$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-static {v2}, Lanr;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 137
    .end local v1    # "entry":Lcom/alibaba/android/ads/db/AdsPositionEntry;
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-static {v2}, Lanr;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lanr;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v3
.end method
