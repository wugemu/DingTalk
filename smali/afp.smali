.class public final Lafp;
.super Ljava/lang/Object;
.source "OAuthEnvManager.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lafp;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lafp;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const-string/jumbo v0, "https://mailsso.mxhichina.com"

    .line 17
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lafp;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 21
    sput-object p0, Lafp;->a:Ljava/lang/String;

    .line 22
    return-void
.end method
