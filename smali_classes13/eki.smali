.class public final Leki;
.super Ljava/lang/Object;
.source "XpnAccountUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 28
    const-string/jumbo v0, "5781729632732"

    .line 29
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 30
    const-string/jumbo v0, "gf2e9ryc3r6ddtzqxyi22d6456nd59ds"

    .line 40
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string/jumbo v0, "5781729632732"

    goto :goto_0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 44
    const-string/jumbo v0, "2882303761517296732"

    .line 45
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 46
    const-string/jumbo v0, "10231506"

    .line 58
    :goto_0
    return-object v0

    .line 50
    :cond_0
    const-string/jumbo v0, "2882303761517296732"

    goto :goto_0
.end method
