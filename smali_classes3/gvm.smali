.class public abstract Lgvm;
.super Lckb;
.source "WebViewInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static a()Lgvm;
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lgvm;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgvm;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method public abstract b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end method
