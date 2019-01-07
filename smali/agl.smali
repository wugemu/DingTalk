.class public final Lagl;
.super Ljava/lang/Object;
.source "MetaData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagl$a;
    }
.end annotation


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field public a:Lagl$a;

.field public final b:Lcom/alibaba/alimei/orm/IDatabase;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "localTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "minInstance"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "maxInstance"

    aput-object v2, v0, v1

    sput-object v0, Lagl;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/orm/IDatabase;)V
    .locals 1
    .param p1, "iDatabase"    # Lcom/alibaba/alimei/orm/IDatabase;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lagl$a;

    invoke-direct {v0, p0}, Lagl$a;-><init>(Lagl;)V

    iput-object v0, p0, Lagl;->a:Lagl$a;

    .line 71
    iput-object p1, p0, Lagl;->b:Lcom/alibaba/alimei/orm/IDatabase;

    .line 72
    return-void
.end method


# virtual methods
.method public final a()Lagl$a;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 111
    new-instance v1, Lagl$a;

    invoke-direct {v1, p0}, Lagl$a;-><init>(Lagl;)V

    .line 115
    .local v1, "fields":Lagl$a;
    iget-boolean v2, p0, Lagl;->c:Z

    if-nez v2, :cond_0

    .line 116
    iget-object v0, p0, Lagl;->b:Lcom/alibaba/alimei/orm/IDatabase;

    .line 117
    .local v0, "db":Lcom/alibaba/alimei/orm/IDatabase;
    invoke-virtual {p0, v0}, Lagl;->a(Lcom/alibaba/alimei/orm/IDatabase;)V

    .line 119
    .end local v0    # "db":Lcom/alibaba/alimei/orm/IDatabase;
    :cond_0
    iget-object v2, p0, Lagl;->a:Lagl$a;

    iget-object v2, v2, Lagl$a;->a:Ljava/lang/String;

    iput-object v2, v1, Lagl$a;->a:Ljava/lang/String;

    .line 120
    iget-object v2, p0, Lagl;->a:Lagl$a;

    iget-wide v2, v2, Lagl$a;->b:J

    iput-wide v2, v1, Lagl$a;->b:J

    .line 121
    iget-object v2, p0, Lagl;->a:Lagl$a;

    iget-wide v2, v2, Lagl$a;->c:J

    iput-wide v2, v1, Lagl$a;->c:J

    .line 122
    return-object v1
.end method

.method public a(Lcom/alibaba/alimei/orm/IDatabase;)V
    .locals 14
    .param p1, "db"    # Lcom/alibaba/alimei/orm/IDatabase;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 132
    const/4 v9, 0x0

    .line 133
    .local v9, "timezone":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .local v12, "minInstance":J
    const-wide/16 v10, 0x0

    .line 137
    .local v10, "maxInstance":J
    const-string/jumbo v1, "CalendarMetaData"

    sget-object v2, Lagl;->d:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/alimei/orm/IDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 140
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 142
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 143
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 146
    :cond_0
    if-eqz v8, :cond_1

    .line 147
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_1
    iget-object v0, p0, Lagl;->a:Lagl$a;

    iput-object v9, v0, Lagl$a;->a:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lagl;->a:Lagl$a;

    iput-wide v12, v0, Lagl$a;->b:J

    .line 154
    iget-object v0, p0, Lagl;->a:Lagl$a;

    iput-wide v10, v0, Lagl$a;->c:J

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lagl;->c:Z

    .line 158
    return-void

    .line 146
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 147
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "timezone"    # Ljava/lang/String;
    .param p2, "begin"    # J
    .param p4, "end"    # J

    .prologue
    const/4 v5, 0x0

    .line 174
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 175
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "_id"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string/jumbo v3, "localTimezone"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v3, "minInstance"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    const-string/jumbo v3, "maxInstance"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    :try_start_0
    iget-object v0, p0, Lagl;->b:Lcom/alibaba/alimei/orm/IDatabase;

    .line 183
    .local v0, "db":Lcom/alibaba/alimei/orm/IDatabase;
    const-string/jumbo v3, "CalendarMetaData"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v2}, Lcom/alibaba/alimei/orm/IDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    iget-object v3, p0, Lagl;->a:Lagl$a;

    iput-object p1, v3, Lagl$a;->a:Ljava/lang/String;

    .line 193
    iget-object v3, p0, Lagl;->a:Lagl$a;

    iput-wide p2, v3, Lagl$a;->b:J

    .line 194
    iget-object v3, p0, Lagl;->a:Lagl$a;

    iput-wide p4, v3, Lagl$a;->c:J

    .line 195
    return-void

    .line 184
    .end local v0    # "db":Lcom/alibaba/alimei/orm/IDatabase;
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lagl;->a:Lagl$a;

    iput-object v5, v3, Lagl$a;->a:Ljava/lang/String;

    .line 187
    iget-object v3, p0, Lagl;->a:Lagl$a;

    iget-object v4, p0, Lagl;->a:Lagl$a;

    const-wide/16 v6, 0x0

    iput-wide v6, v4, Lagl$a;->c:J

    iput-wide v6, v3, Lagl$a;->b:J

    .line 188
    throw v1
.end method
