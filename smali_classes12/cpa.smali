.class public final Lcpa;
.super Ljava/lang/Object;
.source "LandscapeUtils.java"


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 15
    sput-object v0, Lcpa;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "CMR-AL19"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lcpa;->a:Ljava/util/HashSet;

    const-string/jumbo v1, "CMR-W19"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    invoke-static {}, Lcpa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0}, Lcpa;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "landscape"    # Z

    .prologue
    .line 43
    const-string/jumbo v0, "setting_land_mode"

    invoke-static {p0, v0, p1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 44
    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcof;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcpa;->a:Ljava/util/HashSet;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {}, Lcpa;->a()Z

    move-result v0

    .line 38
    .local v0, "defValue":Z
    const-string/jumbo v1, "setting_land_mode"

    invoke-static {p0, v1, v0}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method
