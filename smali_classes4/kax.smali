.class public final Lkax;
.super Ljava/lang/Object;


# static fields
.field private static a:Lkax;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lkax;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lkax;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lkax;
    .locals 1

    sget-object v0, Lkax;->a:Lkax;

    if-nez v0, :cond_0

    new-instance v0, Lkax;

    invoke-direct {v0, p0}, Lkax;-><init>(Landroid/content/Context;)V

    sput-object v0, Lkax;->a:Lkax;

    :cond_0
    sget-object v0, Lkax;->a:Lkax;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v2, 0x0

    iget v0, p0, Lkax;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lkax;->c:I

    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lkax;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lkax;->c:I

    iget v0, p0, Lkax;->c:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkax;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lkax;->c:I

    iget v0, p0, Lkax;->c:I

    goto :goto_0
.end method
