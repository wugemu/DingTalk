.class public final Llge;
.super Ljava/lang/Object;
.source "DDGifUtils.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput v0, Llge;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 15
    sget v3, Llge;->a:I

    if-nez v3, :cond_1

    .line 17
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Llgk;->a(Landroid/content/Context;)V

    .line 18
    const/4 v3, 0x1

    sput v3, Llge;->a:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .local v0, "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return v1

    .line 20
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 21
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    const/4 v1, 0x2

    sput v1, Llge;->a:I

    .line 23
    const-string/jumbo v1, "gif"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "init gif so error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lhcw;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 24
    goto :goto_0

    .line 27
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    sget v3, Llge;->a:I

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0
.end method
