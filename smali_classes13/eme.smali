.class public final Leme;
.super Ljava/lang/Object;
.source "NoPwdLoginUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "kickMsg"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Leme$1;

    invoke-direct {v0, p0, p1, p2}, Leme$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lfrb;->a(Lfrb$a;)V

    .line 45
    return-void
.end method
