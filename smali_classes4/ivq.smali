.class final Livq;
.super Livs;
.source "ModifiedUTF7Charset.java"


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "aliases"    # [Ljava/lang/String;

    .prologue
    .line 41
    const-string/jumbo v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+,"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Livs;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    return-void
.end method


# virtual methods
.method final a()B
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x26

    return v0
.end method

.method final a(C)Z
    .locals 2
    .param p1, "ch"    # C

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 45
    .line 1051
    const/16 v1, 0x26

    .line 45
    if-ne p1, v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x20

    if-lt p1, v1, :cond_0

    const/16 v1, 0x7e

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final b()B
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x2d

    return v0
.end method
