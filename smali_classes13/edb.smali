.class public final Ledb;
.super Ljava/lang/Object;
.source "StatusbarColorUtils.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 23
    sput v2, Ledb;->d:I

    .line 27
    :try_start_0
    const-class v2, Landroid/app/Activity;

    const-string/jumbo v3, "setStatusBarDarkIcon"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ledb;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    :try_start_1
    const-class v2, Landroid/app/Activity;

    const-string/jumbo v3, "setStatusBarDarkIcon"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ledb;->b:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    :goto_1
    :try_start_2
    const-class v2, Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "statusBarColor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ledb;->c:Ljava/lang/reflect/Field;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 42
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_2
    :try_start_3
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "SYSTEM_UI_FLAG_LIGHT_STATUS_BAR"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 43
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sput v2, Ledb;->d:I
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 51
    :goto_3
    return-void

    .line 28
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 29
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 38
    :catch_2
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2

    .line 44
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :catch_3
    move-exception v0

    .line 45
    .restart local v0    # "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_3

    .line 46
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_4
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    .line 48
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dark"    # Z

    .prologue
    const/4 v4, 0x0

    .line 128
    .line 1220
    sget-object v0, Ledb;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 1222
    :try_start_0
    sget-object v0, Ledb;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2209
    :cond_0
    :goto_0
    return-void

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 1225
    :catch_1
    move-exception v0

    .line 1226
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 1230
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_2

    .line 2209
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    invoke-static {v0, v1, p1}, Ledb;->a(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 2211
    :cond_2
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 2212
    if-eqz v2, :cond_0

    .line 3168
    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    .line 3170
    if-eqz p1, :cond_4

    .line 3171
    sget v0, Ledb;->d:I

    or-int/2addr v0, v3

    .line 3175
    :goto_1
    if-eq v0, v3, :cond_3

    .line 3176
    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2214
    :cond_3
    invoke-static {v1, v4}, Ledb;->a(Landroid/view/Window;I)V

    goto :goto_0

    .line 3173
    :cond_4
    sget v0, Ledb;->d:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v3

    goto :goto_1
.end method

.method private static a(Landroid/view/Window;I)V
    .locals 5
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "color"    # I

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 188
    .local v2, "winParams":Landroid/view/WindowManager$LayoutParams;
    sget-object v3, Ledb;->c:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_0

    .line 190
    :try_start_0
    sget-object v3, Ledb;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 191
    .local v1, "oldColor":I
    if-eqz v1, :cond_0

    .line 192
    sget-object v3, Ledb;->c:Ljava/lang/reflect/Field;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v1    # "oldColor":I
    :cond_0
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "winParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "flagName"    # Ljava/lang/String;
    .param p2, "on"    # Z

    .prologue
    const/4 v6, 0x1

    .line 133
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 134
    .local v2, "f":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 135
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 136
    .local v0, "bits":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "meizuFlags"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 137
    .local v3, "f2":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 138
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 139
    .local v4, "meizuFlags":I
    move v5, v4

    .line 140
    .local v5, "oldFlags":I
    if-eqz p2, :cond_0

    .line 141
    or-int/2addr v4, v0

    .line 145
    :goto_0
    if-eq v5, v4, :cond_1

    .line 146
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 158
    .end local v0    # "bits":I
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "f2":Ljava/lang/reflect/Field;
    .end local v4    # "meizuFlags":I
    .end local v5    # "oldFlags":I
    :goto_1
    return v6

    .line 143
    .restart local v0    # "bits":I
    .restart local v2    # "f":Ljava/lang/reflect/Field;
    .restart local v3    # "f2":Ljava/lang/reflect/Field;
    .restart local v4    # "meizuFlags":I
    .restart local v5    # "oldFlags":I
    :cond_0
    xor-int/lit8 v7, v0, -0x1

    and-int/2addr v4, v7

    goto :goto_0

    .line 149
    .end local v0    # "bits":I
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "f2":Ljava/lang/reflect/Field;
    .end local v4    # "meizuFlags":I
    .end local v5    # "oldFlags":I
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 158
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :cond_1
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 151
    :catch_1
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 153
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 155
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
