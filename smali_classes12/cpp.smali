.class public final Lcpp;
.super Ljava/lang/Object;
.source "ShortCutUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ZLandroid/content/Intent$ShortcutIconResource;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionIntent"    # Landroid/content/Intent;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "allowRepeat"    # Z
    .param p4, "iconRes"    # Landroid/content/Intent$ShortcutIconResource;

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "addShortcutIntent":Landroid/content/Intent;
    const-string/jumbo v1, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    const-string/jumbo v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string/jumbo v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    const-string/jumbo v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    const/4 v1, 0x1

    return v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 148
    const/4 v8, 0x0

    .line 150
    .local v8, "result":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1170
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1171
    invoke-static {p0}, Lcpb;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1172
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1174
    :cond_0
    invoke-static {p0}, Lcpb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1175
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1176
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v3, v9

    const/4 v5, 0x1

    const-string/jumbo v9, ".permission.READ_SETTINGS"

    aput-object v9, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1178
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1179
    invoke-static {p0, v3}, Lcpb;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1182
    :cond_2
    const-string/jumbo v3, "content://"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1184
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1185
    const/16 v3, 0x8

    if-ge v2, v3, :cond_5

    .line 1186
    const-string/jumbo v2, "com.android.launcher.settings"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    :goto_0
    const-string/jumbo v2, "/favorites?notify=true"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 152
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "intent"

    aput-object v4, v2, v3

    const-string/jumbo v3, "title=?  and intent=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 153
    invoke-virtual {p2, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    .line 152
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 154
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 155
    const/4 v8, 0x1

    .line 157
    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 158
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 165
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_4
    :goto_1
    return v8

    .line 1187
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_5
    const/16 v3, 0x13

    if-ge v2, v3, :cond_6

    .line 1188
    const-string/jumbo v2, "com.android.launcher2.settings"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    .line 161
    .local v7, "ex":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 162
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1190
    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_6
    :try_start_1
    const-string/jumbo v2, "com.android.launcher3.settings"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1193
    :cond_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
