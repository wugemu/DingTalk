.class public final Ljpo;
.super Ljava/lang/Object;
.source "WML.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljpo$a;
    }
.end annotation


# static fields
.field private static d:Ljpo;


# instance fields
.field public volatile a:Z

.field public b:Landroid/app/Application;

.field public c:Ljpo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljpo;

    invoke-direct {v0}, Ljpo;-><init>()V

    sput-object v0, Ljpo;->d:Ljpo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static a(Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "debuggable"    # Z

    .prologue
    .line 100
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0}, Ljqy;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "appCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    const-string/jumbo v3, "orgUrl"

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string/jumbo v3, "appCode"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v1

    .line 107
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    if-eqz p1, :cond_1

    .line 108
    invoke-static {p0}, Ljqy;->b(Landroid/net/Uri;)Z

    move-result v2

    .line 109
    .local v2, "isDebug":Z
    if-eqz v2, :cond_1

    .line 110
    const-string/jumbo v3, "orgUrl"

    .line 111
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 116
    .end local v2    # "isDebug":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljpo;)Ljpo$a;
    .locals 1
    .param p0, "x0"    # Ljpo;

    .prologue
    .line 35
    iget-object v0, p0, Ljpo;->c:Ljpo$a;

    return-object v0
.end method

.method public static a()Ljpo;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Ljpo;->d:Ljpo;

    return-object v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 74
    sget-object v0, Ljpo;->d:Ljpo;

    iget-boolean v0, v0, Ljpo;->a:Z

    return v0
.end method
