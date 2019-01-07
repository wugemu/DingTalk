.class public final Liwc;
.super Ljava/lang/Object;
.source "Url.java"


# instance fields
.field public a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "htp_host"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "server.Safeding.com:8080"

    iput-object v0, p0, Liwc;->b:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "http://server.Safeding.com:8080"

    iput-object v0, p0, Liwc;->a:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    iput-object p1, p0, Liwc;->a:Ljava/lang/String;

    .line 18
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Liwc;
    .locals 1
    .param p0, "domain"    # Ljava/lang/String;

    .prologue
    .line 11
    new-instance v0, Liwc;

    invoke-direct {v0, p0}, Liwc;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
