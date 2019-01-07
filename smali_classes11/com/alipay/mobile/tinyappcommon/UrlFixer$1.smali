.class final Lcom/alipay/mobile/tinyappcommon/UrlFixer$1;
.super Ljava/util/BitSet;
.source "UrlFixer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/tinyappcommon/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    .line 12
    const-string/jumbo v0, ":/?#[]@!$&\'()*+,;=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~%"

    .line 13
    .local v0, "chars":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/tinyappcommon/UrlFixer$1;->set(I)V

    .line 13
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method
