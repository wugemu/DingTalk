.class public final Lou;
.super Ljava/lang/Object;
.source "PrefsTools.java"


# static fields
.field private static a:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lou;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 65
    .line 2069
    invoke-static {}, Lou;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2070
    if-nez v2, :cond_0

    .line 2071
    :goto_0
    return-wide v0

    .line 2073
    :cond_0
    invoke-interface {v2, p0, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static a()Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    if-nez v1, :cond_0

    .line 21
    sput-object v0, Lou;->a:Landroid/content/SharedPreferences;

    .line 29
    :goto_0
    return-object v0

    .line 24
    :cond_0
    sget-object v0, Lou;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 25
    sget-object v0, Lou;->a:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 29
    sput-object v0, Lou;->a:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 55
    invoke-static {}, Lou;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 56
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 1127
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2017
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    .line 1126
    :goto_1
    if-eqz v2, :cond_2

    .line 1127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 2017
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1129
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
