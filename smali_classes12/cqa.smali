.class public final Lcqa;
.super Ljava/lang/Object;
.source "VersionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2
    .param p0, "ver"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "currentVer":Ljava/lang/String;
    invoke-static {p0, v0}, Lcqa;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p0, "ver"    # Ljava/lang/String;
    .param p1, "baseVer"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move v7, v8

    .line 173
    :cond_1
    :goto_0
    return v7

    .line 129
    :cond_2
    const-string/jumbo v9, "\\."

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "baseVers":[Ljava/lang/String;
    const-string/jumbo v9, "\\."

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "vers":[Ljava/lang/String;
    array-length v9, v0

    array-length v10, v6

    if-ge v9, v10, :cond_7

    .line 133
    array-length v9, v6

    new-array v4, v9, [Ljava/lang/String;

    .line 134
    .local v4, "newArray":[Ljava/lang/String;
    array-length v9, v0

    invoke-static {v0, v7, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    array-length v3, v0

    .local v3, "i":I
    :goto_1
    array-length v9, v6

    if-ge v3, v9, :cond_3

    .line 136
    const-string/jumbo v9, "0"

    aput-object v9, v4, v3

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 138
    :cond_3
    move-object v0, v4

    .line 149
    .end local v3    # "i":I
    .end local v4    # "newArray":[Ljava/lang/String;
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    :try_start_0
    array-length v9, v6

    if-ge v3, v9, :cond_1

    .line 151
    aget-object v9, v6, v3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 152
    const-string/jumbo v9, "0"

    aput-object v9, v6, v3

    .line 155
    :cond_5
    aget-object v9, v0, v3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 156
    const-string/jumbo v9, "0"

    aput-object v9, v0, v3

    .line 159
    :cond_6
    aget-object v9, v6, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 160
    .local v2, "bitVer":I
    aget-object v9, v0, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 162
    .local v1, "bitBaseVer":I
    if-ge v1, v2, :cond_9

    .line 163
    const/4 v7, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "bitBaseVer":I
    .end local v2    # "bitVer":I
    .end local v3    # "i":I
    :cond_7
    array-length v9, v0

    array-length v10, v6

    if-le v9, v10, :cond_4

    .line 140
    array-length v9, v0

    new-array v4, v9, [Ljava/lang/String;

    .line 141
    .restart local v4    # "newArray":[Ljava/lang/String;
    array-length v9, v6

    invoke-static {v6, v7, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    array-length v3, v6

    .restart local v3    # "i":I
    :goto_4
    array-length v9, v0

    if-ge v3, v9, :cond_8

    .line 143
    const-string/jumbo v9, "0"

    aput-object v9, v4, v3

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 145
    :cond_8
    move-object v6, v4

    goto :goto_2

    .line 164
    .end local v4    # "newArray":[Ljava/lang/String;
    .restart local v1    # "bitBaseVer":I
    .restart local v2    # "bitVer":I
    :cond_9
    if-le v1, v2, :cond_a

    .line 165
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 149
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 168
    .end local v1    # "bitBaseVer":I
    .end local v2    # "bitVer":I
    :catch_0
    move-exception v5

    .line 169
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v7, v8

    .line 170
    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)[I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 19
    const-string/jumbo v5, "history_versions"

    invoke-static {p0, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 20
    .local v4, "str":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 21
    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "resultStr":[Ljava/lang/String;
    array-length v5, v3

    new-array v2, v5, [I

    .line 23
    .local v2, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 25
    :try_start_0
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    new-array v2, v6, [I

    .line 33
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    .end local v2    # "result":[I
    .end local v3    # "resultStr":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v2

    :cond_1
    new-array v2, v6, [I

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 39
    .local v2, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 40
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
