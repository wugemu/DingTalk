.class public Lcom/alipay/mobile/nebula/webview/Version;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/webview/Version$Minor;,
        Lcom/alipay/mobile/nebula/webview/Version$Major;
    }
.end annotation


# static fields
.field private static final STORE_OFFSET:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(II)I
    .locals 1
    .param p0, "major"    # I
    .param p1, "minor"    # I

    .prologue
    .line 24
    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, p1

    return v0
.end method

.method public static getMajor(I)I
    .locals 1
    .param p0, "v"    # I

    .prologue
    .line 11
    shr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getMinor(I)I
    .locals 1
    .param p0, "v"    # I

    .prologue
    .line 15
    shl-int/lit8 v0, p0, 0x10

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # I

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Version(major: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/mobile/nebula/webview/Version;->getMajor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", minor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/alipay/mobile/nebula/webview/Version;->getMinor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
