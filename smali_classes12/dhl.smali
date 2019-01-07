.class public Ldhl;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "GroupThemeDataSourceImpl.java"

# interfaces
.implements Ldhk;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Ldhl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldhl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;)J
    .locals 5
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 20
    .line 1058
    if-nez p1, :cond_0

    .line 1059
    const/4 v0, 0x0

    .line 21
    .local v0, "values":Landroid/content/ContentValues;
    :goto_0
    if-nez v0, :cond_1

    .line 22
    const-wide/16 v2, -0x1

    .line 23
    :goto_1
    return-wide v2

    .line 1061
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1062
    const-string/jumbo v1, "themeId"

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->themeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string/jumbo v1, "version"

    iget v2, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->version:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1064
    const-string/jumbo v1, "content"

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    .restart local v0    # "values":Landroid/content/ContentValues;
    :cond_1
    iget-object v1, p0, Ldhl;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Ldhl;->k()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/dingtalkim/db/GroupThemeEntry;

    const-string/jumbo v4, "tb_group_theme"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/alibaba/bee/DBManager;->replace(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;
    .locals 10
    .param p1, "themeId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v7

    .line 31
    :cond_1
    iget-object v0, p0, Ldhl;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Ldhl;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/dingtalkim/db/GroupThemeEntry;

    const-string/jumbo v3, "tb_group_theme"

    const-class v4, Lcom/alibaba/android/dingtalkim/db/GroupThemeEntry;

    .line 32
    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "themeId=?"

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    const-string/jumbo v8, "0, 1"

    .line 31
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 34
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 36
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 1069
    if-nez v9, :cond_2

    .line 40
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1072
    :cond_2
    const/4 v0, 0x3

    :try_start_1
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1073
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->parseContent(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;

    move-result-object v7

    .line 1074
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->themeId:Ljava/lang/String;

    .line 1075
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/alibaba/android/dingtalkim/chat/grouptheme/GroupThemeObject;->version:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 7
    .param p1, "themeId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 51
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ldhl;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Ldhl;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/dingtalkim/db/GroupThemeEntry;

    const-string/jumbo v3, "tb_group_theme"

    const-string/jumbo v4, "themeId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
