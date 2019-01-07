.class public final Leyz;
.super Ljava/lang/Object;
.source "VideoConfUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Liei$a;)V
    .locals 6
    .param p0, "l"    # Liei$a;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 76
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    .line 1021
    const/4 v3, 0x3

    invoke-static {v2, v3, p0}, Liei;->a(Landroid/content/Context;ILiei$a;)V

    .line 77
    invoke-static {}, Levt;->a()Levt;

    move-result-object v2

    .line 1076
    iget-object v1, v2, Levt;->a:Lciu$b;

    .line 78
    .local v1, "listener":Lciu$b;
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lciu;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    new-instance v0, Lciu$a;

    const-string/jumbo v2, "teleconf_focus"

    invoke-direct {v0, v2, v4, v5, v1}, Lciu$a;-><init>(Ljava/lang/String;IILciu$b;)V

    .line 84
    .local v0, "audioFocusInfo":Lciu$a;
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lciu;->a(Lciu$a;)Z

    .line 86
    .end local v0    # "audioFocusInfo":Lciu$a;
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1100
    const/4 v0, 0x0

    .line 1101
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_2

    .line 1102
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 122
    .local v0, "abi":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "x86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    const/4 v1, 0x1

    .line 125
    :cond_1
    return v1

    .line 1104
    .end local v0    # "abi":Ljava/lang/String;
    :cond_2
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 1105
    if-eqz v2, :cond_0

    array-length v2, v2

    if-lez v2, :cond_0

    .line 1106
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, v2, v1

    goto :goto_0
.end method

.method public static b(Liei$a;)V
    .locals 3
    .param p0, "l"    # Liei$a;

    .prologue
    .line 94
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Liei;->a(Landroid/content/Context;Liei$a;)V

    .line 95
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v0

    const-string/jumbo v1, "teleconf_focus"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lciu;->a(Ljava/lang/String;I)V

    .line 96
    invoke-static {}, Levt;->b()V

    .line 97
    return-void
.end method
