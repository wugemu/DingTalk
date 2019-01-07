.class public final Laip;
.super Lza;
.source "CommonUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lza;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 2

    .prologue
    .line 12
    const/4 v0, 0x0

    .line 14
    .local v0, "sdkversion":I
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 17
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
