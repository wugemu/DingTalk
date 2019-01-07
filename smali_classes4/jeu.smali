.class public final Ljeu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Ljeu;->a:Z

    .line 10
    const-string/jumbo v0, "MegviiSDK"

    sput-object v0, Ljeu;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Ljeu;->a:Z

    .line 14
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Ljeu;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Ljeu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Ljeu;->a:Z

    if-eqz v0, :cond_1

    .line 30
    if-nez p0, :cond_0

    sget-object p0, Ljeu;->b:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_2

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_1
    return-void

    .line 30
    :cond_2
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Ljeu;->a:Z

    .line 18
    return-void
.end method
