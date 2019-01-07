.class public final Lcaa;
.super Landroid/os/Handler;
.source "MainLooperHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcaa$a;
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;B)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcaa;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static a()Lcaa;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcaa$a;->a:Lcaa;

    return-object v0
.end method
