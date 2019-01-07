.class final Lcom/ta/audid/permission/AppOpsManagerCompat;
.super Ljava/lang/Object;
.source "AppOpsManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManager23;,
        Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;

.field public static final MODE_IGNORED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 50
    new-instance v0, Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManager23;

    invoke-direct {v0, v2}, Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManager23;-><init>(Lcom/ta/audid/permission/AppOpsManagerCompat$1;)V

    sput-object v0, Lcom/ta/audid/permission/AppOpsManagerCompat;->IMPL:Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;

    invoke-direct {v0, v2}, Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;-><init>(Lcom/ta/audid/permission/AppOpsManagerCompat$1;)V

    sput-object v0, Lcom/ta/audid/permission/AppOpsManagerCompat;->IMPL:Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 64
    sget-object v0, Lcom/ta/audid/permission/AppOpsManagerCompat;->IMPL:Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;->noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v0, Lcom/ta/audid/permission/AppOpsManagerCompat;->IMPL:Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;->noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, Lcom/ta/audid/permission/AppOpsManagerCompat;->IMPL:Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;

    invoke-virtual {v0, p0}, Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
