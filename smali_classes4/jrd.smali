.class public final Ljrd;
.super Ljava/lang/Object;
.source "StatusBarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;ZZ)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dark"    # Z
    .param p2, "flag"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 173
    if-nez p0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    :try_start_0
    const-class v6, Landroid/app/Activity;

    const-string/jumbo v7, "setStatusBarDarkIcon"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 179
    .local v3, "setStatusBarDarkIcon":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_2

    .line 180
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 186
    .end local v3    # "setStatusBarDarkIcon":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "setStatusBarDarkIcon":Ljava/lang/reflect/Method;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 3085
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_3

    .line 2162
    :goto_1
    if-nez v4, :cond_4

    .line 2163
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const-string/jumbo v5, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    invoke-static {v4, v5, p1}, Ljrd;->a(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 188
    .end local v3    # "setStatusBarDarkIcon":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 189
    .local v1, "e1":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e1":Ljava/lang/reflect/InvocationTargetException;
    .restart local v3    # "setStatusBarDarkIcon":Ljava/lang/reflect/Method;
    :cond_3
    move v4, v5

    .line 3085
    goto :goto_1

    .line 2165
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v5

    .line 2166
    if-eqz v5, :cond_0

    .line 3136
    :try_start_3
    const-class v4, Landroid/view/View;

    const-string/jumbo v6, "SYSTEM_UI_FLAG_LIGHT_STATUS_BAR"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 3137
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 3138
    invoke-virtual {v5}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v6

    .line 3140
    if-eqz p1, :cond_5

    .line 3141
    or-int/2addr v4, v6

    .line 3145
    :goto_2
    if-eq v4, v6, :cond_0

    .line 3146
    invoke-virtual {v5, v4}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3148
    :catch_2
    move-exception v4

    .line 3149
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 190
    .end local v3    # "setStatusBarDarkIcon":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v2

    .line 191
    .local v2, "e2":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 3143
    .end local v2    # "e2":Ljava/lang/IllegalAccessException;
    .restart local v3    # "setStatusBarDarkIcon":Ljava/lang/reflect/Method;
    :cond_5
    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v6

    goto :goto_2

    .line 3150
    :catch_4
    move-exception v4

    .line 3151
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0
.end method

.method public static a(Landroid/app/Activity;Z)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dark"    # Z

    .prologue
    const/4 v4, 0x1

    const/high16 v3, -0x80000000

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 24
    .local v0, "window":Landroid/view/Window;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    .line 25
    if-eqz p1, :cond_2

    .line 26
    const/high16 v1, 0xc000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 28
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x2500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 31
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 43
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1196
    :cond_0
    :goto_1
    const-string/jumbo v1, "Xiaomi"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    invoke-static {p0, p1}, Ljrd;->b(Landroid/app/Activity;Z)Z

    .line 57
    :cond_1
    :goto_2
    return v4

    .line 34
    :cond_2
    const v1, 0xc002000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 36
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 39
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 45
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 47
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 1200
    :cond_4
    const-string/jumbo v1, "Meizu"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 2127
    invoke-static {p0, p1, v4}, Ljrd;->a(Landroid/app/Activity;ZZ)V

    goto :goto_2
.end method

.method private static a(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "winParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "flagName"    # Ljava/lang/String;
    .param p2, "on"    # Z

    .prologue
    const/4 v6, 0x1

    .line 205
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 206
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 207
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 208
    .local v0, "bits":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "meizuFlags"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 209
    .local v3, "f2":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 210
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 211
    .local v4, "meizuFlags":I
    move v5, v4

    .line 212
    .local v5, "oldFlags":I
    if-eqz p2, :cond_0

    .line 213
    or-int/2addr v4, v0

    .line 217
    :goto_0
    if-eq v5, v4, :cond_1

    .line 218
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0    # "bits":I
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "f2":Ljava/lang/reflect/Field;
    .end local v4    # "meizuFlags":I
    .end local v5    # "oldFlags":I
    :goto_1
    return v6

    .line 215
    .restart local v0    # "bits":I
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    .restart local v3    # "f2":Ljava/lang/reflect/Field;
    .restart local v4    # "meizuFlags":I
    .restart local v5    # "oldFlags":I
    :cond_0
    xor-int/lit8 v7, v0, -0x1

    and-int/2addr v4, v7

    goto :goto_0

    .line 221
    .end local v0    # "bits":I
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "f2":Ljava/lang/reflect/Field;
    .end local v4    # "meizuFlags":I
    .end local v5    # "oldFlags":I
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 224
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static b(Landroid/app/Activity;Z)Z
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dark"    # Z

    .prologue
    const/4 v5, 0x0

    .line 95
    if-nez p0, :cond_0

    .line 116
    :goto_0
    return v5

    .line 99
    :cond_0
    const/4 v5, 0x0

    .line 101
    .local v5, "result":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 103
    .local v6, "window":Landroid/view/Window;
    const-string/jumbo v7, "android.view.MiuiWindowManager$LayoutParams"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 104
    .local v3, "layoutParams":Ljava/lang/Class;
    const-string/jumbo v7, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 105
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 106
    .local v0, "darkModeFlag":I
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "setExtraFlags"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 107
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz p1, :cond_1

    .line 108
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 113
    .end local v0    # "darkModeFlag":I
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "layoutParams":Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "window":Landroid/view/Window;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
