.class public final Lkph;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    sput-object v0, Lkph;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 2031
    .local v1, "times":I
    :try_start_0
    const-string/jumbo v2, "Agoo_AppStore"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "agoo_UnReport_times"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 145
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "times"    # I

    .prologue
    .line 101
    .line 1031
    :try_start_0
    const-string/jumbo v3, "Agoo_AppStore"

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 102
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 103
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "agoo_UnReport_times"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 104
    .local v0, "currentTime":I
    add-int/lit8 v0, v0, 0x1

    .line 105
    const-string/jumbo v3, "agoo_UnReport_times"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0    # "currentTime":I
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 3031
    .local v0, "flag":Z
    :try_start_0
    const-string/jumbo v2, "Agoo_AppStore"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 189
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "agoo_enable_daemonserver"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 193
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method
