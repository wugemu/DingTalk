.class public Lcom/cmic/sso/sdk/b/c;
.super Ljava/lang/Object;
.source "SIMUtils.java"


# static fields
.field private static b:Lcom/cmic/sso/sdk/b/c;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/cmic/sso/sdk/b/c;->a:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcom/cmic/sso/sdk/b/c;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/cmic/sso/sdk/b/c;->b:Lcom/cmic/sso/sdk/b/c;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/cmic/sso/sdk/b/c;

    invoke-direct {v0, p0}, Lcom/cmic/sso/sdk/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmic/sso/sdk/b/c;->b:Lcom/cmic/sso/sdk/b/c;

    .line 30
    :cond_0
    sget-object v0, Lcom/cmic/sso/sdk/b/c;->b:Lcom/cmic/sso/sdk/b/c;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cmic/sso/sdk/b/c;->a:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 44
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 50
    return-object v0
.end method
