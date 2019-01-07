.class public final Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;
.super Ljava/lang/Object;
.source "CalendarCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/alibaba/alimei/orm/IDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "key"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/orm/IDatabase;)V
    .locals 0
    .param p1, "sqliteDatabase"    # Lcom/alibaba/alimei/orm/IDatabase;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->b:Lcom/alibaba/alimei/orm/IDatabase;

    .line 75
    return-void
.end method

.method private static a(Lcom/alibaba/alimei/orm/IDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "db"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 222
    if-nez p0, :cond_0

    .line 223
    new-instance v0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;

    const-string/jumbo v1, "Database cannot be null"

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    if-nez p1, :cond_1

    .line 226
    new-instance v0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;

    const-string/jumbo v1, "Cannot use null key for read"

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_1
    const/4 v9, 0x0

    .line 231
    .local v9, "rowValue":Ljava/lang/String;
    const-string/jumbo v1, "CalendarCache"

    sget-object v2, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->a:[Ljava/lang/String;

    const-string/jumbo v3, "key=?"

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/alimei/orm/IDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 234
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 243
    :cond_2
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 246
    return-object v9

    .line 238
    :cond_3
    :try_start_1
    const-string/jumbo v0, "CalendarCache"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Could not find key = [ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 244
    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->b:Lcom/alibaba/alimei/orm/IDatabase;

    .line 148
    .local v0, "db":Lcom/alibaba/alimei/orm/IDatabase;
    if-nez v0, :cond_0

    .line 149
    new-instance v1, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;

    const-string/jumbo v2, "Database cannot be null"

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    if-nez p1, :cond_1

    .line 152
    new-instance v1, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;

    const-string/jumbo v2, "Cannot use null key for write"

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/alimei/orm/IDatabase;->beginTransaction()V

    .line 1178
    if-nez v0, :cond_2

    .line 1179
    :try_start_0
    new-instance v1, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;

    const-string/jumbo v2, "Database cannot be null"

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    throw v1

    .line 1181
    :cond_2
    if-nez p1, :cond_3

    .line 1182
    :try_start_1
    new-instance v1, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;

    const-string/jumbo v2, "Cannot use null key for write"

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1191
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1192
    const-string/jumbo v2, "_id"

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1193
    const-string/jumbo v2, "key"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    const-string/jumbo v2, "CalendarCache"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/alimei/orm/IDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 158
    invoke-interface {v0}, Lcom/alibaba/alimei/orm/IDatabase;->setTransactionSuccessful()V

    .line 159
    const-string/jumbo v1, "CalendarCache"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Wrote (key, value) = [ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :cond_4
    invoke-interface {v0}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    .line 164
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->b:Lcom/alibaba/alimei/orm/IDatabase;

    .line 208
    .local v0, "db":Lcom/alibaba/alimei/orm/IDatabase;
    invoke-static {v0, p1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->a(Lcom/alibaba/alimei/orm/IDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 96
    :try_start_0
    const-string/jumbo v1, "timezoneType"

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;
    const-string/jumbo v1, "CalendarCache"

    const-string/jumbo v2, "Cannot read timezone type from CalendarCache - using AUTO as default"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    const-string/jumbo v1, "auto"

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezone"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 105
    :try_start_0
    const-string/jumbo v0, "timezoneInstances"

    invoke-direct {p0, v0, p1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    const-string/jumbo v0, "CalendarCache"

    const-string/jumbo v1, "Cannot write instances timezone to CalendarCache"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 113
    :try_start_0
    const-string/jumbo v2, "timezoneInstances"

    invoke-direct {p0, v2}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 118
    :goto_0
    return-object v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "localTimezone":Ljava/lang/String;
    const-string/jumbo v2, "CalendarCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot read instances timezone from CalendarCache - using device one: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezone"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 124
    :try_start_0
    const-string/jumbo v0, "timezoneInstancesPrevious"

    invoke-direct {p0, v0, p1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    const-string/jumbo v0, "CalendarCache"

    const-string/jumbo v1, "Cannot write previous instance timezone to CalendarCache"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 132
    :try_start_0
    const-string/jumbo v1, "timezoneInstancesPrevious"

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 136
    :goto_0
    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lcom/alibaba/alimei/sdk/calendar/helper/CalendarCache$CacheException;
    const-string/jumbo v1, "CalendarCache"

    const-string/jumbo v2, "Cannot read previous instances timezone from CalendarCache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    const/4 v1, 0x0

    goto :goto_0
.end method
