.class final Lcom/alibaba/android/search/impls/SearchInterfaceImpl$1;
.super Ljava/lang/Object;
.source "SearchInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/impls/SearchInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/impls/SearchInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/impls/SearchInterfaceImpl;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alibaba/android/search/impls/SearchInterfaceImpl$1;->a:Lcom/alibaba/android/search/impls/SearchInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v12, 0xe

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 226
    new-instance v2, Lesw;

    invoke-direct {v2}, Lesw;-><init>()V

    .line 1060
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1061
    if-eqz v3, :cond_1

    .line 1064
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1065
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1066
    :goto_0
    invoke-static {}, Lesw;->a()J

    move-result-wide v4

    .line 1068
    const-string/jumbo v6, "hasInitFunctionTable"

    invoke-interface {v3, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1069
    invoke-virtual {v2, v1}, Lesw;->a(Z)Z

    move-result v1

    .line 1079
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 1080
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "hasInitFunctionTable"

    invoke-interface {v1, v2, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "function_table_version"

    .line 1081
    invoke-interface {v1, v2, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "function_table_lang"

    .line 1082
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "function_server_data_version"

    .line 1083
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1084
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    :cond_1
    return-void

    .line 1065
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1071
    :cond_3
    const-string/jumbo v6, "function_table_version"

    invoke-interface {v3, v6, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1072
    const-string/jumbo v7, "function_server_data_version"

    const-wide/16 v8, 0x0

    invoke-interface {v3, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1073
    const-string/jumbo v7, "function_table_lang"

    const-string/jumbo v10, ""

    invoke-interface {v3, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1074
    if-lt v6, v12, :cond_4

    cmp-long v6, v8, v4

    if-ltz v6, :cond_4

    .line 1075
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1076
    :cond_4
    invoke-virtual {v2, v11}, Lesw;->a(Z)Z

    move-result v1

    goto :goto_1
.end method
