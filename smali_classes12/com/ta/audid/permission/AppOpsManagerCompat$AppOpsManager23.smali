.class Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManager23;
.super Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;
.source "AppOpsManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/audid/permission/AppOpsManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppOpsManager23"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManagerImpl;-><init>(Lcom/ta/audid/permission/AppOpsManagerCompat$1;)V

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/ta/audid/permission/AppOpsManagerCompat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ta/audid/permission/AppOpsManagerCompat$1;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ta/audid/permission/AppOpsManagerCompat$AppOpsManager23;-><init>()V

    return-void
.end method


# virtual methods
.method public noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p1, p2, p3, p4}, Lcom/ta/audid/permission/AppOpsManagerCompat23;->noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "op"    # Ljava/lang/String;
    .param p3, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p1, p2, p3}, Lcom/ta/audid/permission/AppOpsManagerCompat23;->noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p1}, Lcom/ta/audid/permission/AppOpsManagerCompat23;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
