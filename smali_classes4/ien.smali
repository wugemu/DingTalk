.class public final Lien;
.super Ljava/lang/Object;
.source "ProximityManager.java"


# static fields
.field private static a:Landroid/os/PowerManager$WakeLock;

.field private static b:Z

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lien;->a:Landroid/os/PowerManager$WakeLock;

    .line 36
    sput-boolean v1, Lien;->b:Z

    .line 38
    sput v1, Lien;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lien;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lien;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    sget-object v0, Lien;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lien;->a:Landroid/os/PowerManager$WakeLock;

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lien;->b:Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 41
    sget-boolean v5, Lien;->b:Z

    if-eqz v5, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v8, "power"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 45
    .local v3, "powerManager":Landroid/os/PowerManager;
    sget-boolean v5, Lien;->b:Z

    if-nez v5, :cond_2

    .line 48
    :try_start_0
    const-class v5, Landroid/os/PowerManager;

    const-string/jumbo v8, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 49
    .local v1, "fieldScreenOff":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sput v5, Lien;->c:I

    .line 50
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v5, v8, :cond_4

    .line 52
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "isWakeLockLevelSupported"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 53
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget v8, Lien;->c:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lien;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "fieldScreenOff":Ljava/lang/reflect/Field;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_2
    :goto_1
    sget-boolean v5, Lien;->b:Z

    if-eqz v5, :cond_0

    .line 67
    sget-object v5, Lien;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_3

    .line 68
    sget v5, Lien;->c:I

    const-string/jumbo v6, "com.alibaba.VoipCallProximity"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    sput-object v5, Lien;->a:Landroid/os/PowerManager$WakeLock;

    .line 70
    :cond_3
    sget-object v5, Lien;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_0

    .line 71
    sget-object v5, Lien;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 72
    sget-object v5, Lien;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 55
    .restart local v1    # "fieldScreenOff":Ljava/lang/reflect/Field;
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v8, "getSupportedWakeLockFlags"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 56
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 57
    .local v4, "supportedFlags":I
    sget v5, Lien;->c:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_5

    move v5, v6

    :goto_2
    sput-boolean v5, Lien;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 60
    .end local v1    # "fieldScreenOff":Ljava/lang/reflect/Field;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "supportedFlags":I
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "fieldScreenOff":Ljava/lang/reflect/Field;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v4    # "supportedFlags":I
    :cond_5
    move v5, v7

    .line 57
    goto :goto_2
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lien;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lien;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
