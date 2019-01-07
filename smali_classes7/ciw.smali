.class public final Lciw;
.super Ljava/lang/Object;
.source "RemoteSharedPreferencesProxy.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lciw$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefName"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lciw;->a:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lciw;->b:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/bizframework/content/SharedPreferencesProvider;->a()V

    .line 34
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lciw;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid preference name or context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    return-void
.end method

.method static synthetic a(Lciw;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lciw;

    .prologue
    .line 25
    iget-object v0, p0, Lciw;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lciw;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lciw;

    .prologue
    .line 25
    iget-object v0, p0, Lciw;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 163
    new-instance v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    sget-object v4, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;->CONTAINS:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;

    invoke-direct {v1, v4}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;-><init>(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$Command;)V

    .line 165
    .local v1, "command":Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    :try_start_0
    iget-object v4, p0, Lciw;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dingtalkbase/bizframework/content/SharedPreferencesProvider;->b:Landroid/net/Uri;

    const-string/jumbo v6, "method_contains"

    iget-object v7, p0, Lciw;->b:Ljava/lang/String;

    .line 7086
    iget-object v8, v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    .line 165
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 166
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcja;->d()V

    .line 168
    const-string/jumbo v4, "key_value"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 176
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return v3

    .line 170
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-static {p1}, Lcja;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "remote sp failed:"

    aput-object v5, v4, v3

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lciz;->a(Ljava/lang/String;Z)V

    .line 175
    invoke-static {v2}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcja;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final edit()Landroid/content/SharedPreferences$Editor;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 182
    new-instance v0, Lciw$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lciw$a;-><init>(Lciw;B)V

    return-object v0
.end method

.method public final getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 144
    sget-object v3, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_BOOLEAN:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    invoke-static {v3, p1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    move-result-object v1

    .line 145
    .local v1, "command":Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(Z)V

    .line 147
    :try_start_0
    iget-object v3, p0, Lciw;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dingtalkbase/bizframework/content/SharedPreferencesProvider;->b:Landroid/net/Uri;

    const-string/jumbo v5, "method_get"

    iget-object v6, p0, Lciw;->b:Ljava/lang/String;

    .line 6086
    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    .line 147
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 148
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcja;->d()V

    .line 150
    const-string/jumbo v3, "key_value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 157
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local p2    # "defValue":Z
    :goto_0
    return p2

    .line 152
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local p2    # "defValue":Z
    :cond_0
    invoke-static {p1}, Lcja;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcja;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 125
    sget-object v3, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_FLOAT:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    invoke-static {v3, p1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    move-result-object v1

    .line 126
    .local v1, "command":Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(F)V

    .line 128
    :try_start_0
    iget-object v3, p0, Lciw;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dingtalkbase/bizframework/content/SharedPreferencesProvider;->b:Landroid/net/Uri;

    const-string/jumbo v5, "method_get"

    iget-object v6, p0, Lciw;->b:Ljava/lang/String;

    .line 5086
    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    .line 128
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 129
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcja;->d()V

    .line 131
    const-string/jumbo v3, "key_value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    .line 138
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local p2    # "defValue":F
    :goto_0
    return p2

    .line 133
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local p2    # "defValue":F
    :cond_0
    invoke-static {p1}, Lcja;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcja;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 87
    sget-object v3, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_INTEGER:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    invoke-static {v3, p1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    move-result-object v1

    .line 88
    .local v1, "command":Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(I)V

    .line 90
    :try_start_0
    iget-object v3, p0, Lciw;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dingtalkbase/bizframework/content/SharedPreferencesProvider;->b:Landroid/net/Uri;

    const-string/jumbo v5, "method_get"

    iget-object v6, p0, Lciw;->b:Ljava/lang/String;

    .line 3086
    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    .line 90
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 91
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcja;->d()V

    .line 93
    const-string/jumbo v3, "key_value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 100
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local p2    # "defValue":I
    :goto_0
    return p2

    .line 95
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local p2    # "defValue":I
    :cond_0
    invoke-static {p1}, Lcja;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcja;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 106
    sget-object v3, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_LONG:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    invoke-static {v3, p1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    move-result-object v1

    .line 107
    .local v1, "command":Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    invoke-virtual {v1, p2, p3}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(J)V

    .line 109
    :try_start_0
    iget-object v3, p0, Lciw;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dingtalkbase/bizframework/content/SharedPreferencesProvider;->b:Landroid/net/Uri;

    const-string/jumbo v5, "method_get"

    iget-object v6, p0, Lciw;->b:Ljava/lang/String;

    .line 4086
    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    .line 109
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 110
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lcja;->d()V

    .line 112
    const-string/jumbo v3, "key_value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 119
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local p2    # "defValue":J
    :goto_0
    return-wide p2

    .line 114
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local p2    # "defValue":J
    :cond_0
    invoke-static {p1}, Lcja;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcja;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 47
    sget-object v3, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_STRING:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    invoke-static {v3, p1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    move-result-object v1

    .line 48
    .local v1, "command":Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(Ljava/lang/String;)V

    .line 50
    :try_start_0
    iget-object v3, p0, Lciw;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dingtalkbase/bizframework/content/SharedPreferencesProvider;->b:Landroid/net/Uri;

    const-string/jumbo v5, "method_get"

    iget-object v6, p0, Lciw;->b:Ljava/lang/String;

    .line 1086
    iget-object v7, v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    .line 50
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 51
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcja;->d()V

    .line 53
    const-string/jumbo v3, "key_value"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 60
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local p2    # "defValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 55
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local p2    # "defValue":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcja;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcja;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 67
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v4, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;->TYPE_STRING_SET:Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;

    invoke-static {v4, p1}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand$ValueType;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;

    move-result-object v1

    .line 68
    .local v1, "command":Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;
    invoke-virtual {v1, p2}, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a(Ljava/util/Set;)V

    .line 70
    :try_start_0
    iget-object v4, p0, Lciw;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/alibaba/android/dingtalkbase/bizframework/content/SharedPreferencesProvider;->b:Landroid/net/Uri;

    const-string/jumbo v6, "method_get"

    iget-object v7, p0, Lciw;->b:Ljava/lang/String;

    .line 2086
    iget-object v8, v1, Lcom/alibaba/android/dingtalkbase/bizframework/content/RemoteSpCommand;->a:Landroid/os/Bundle;

    .line 70
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Lcja;->d()V

    .line 73
    const-string/jumbo v4, "key_value"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 74
    .local v3, "stringArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    const/4 p2, 0x0

    .line 81
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "stringArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p2    # "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p2

    .line 74
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "stringArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p2    # "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object p2, v4

    goto :goto_0

    .line 76
    .end local v3    # "stringArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static {p1}, Lcja;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcpt;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcja;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 187
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
