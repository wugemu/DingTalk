.class public final Ladp;
.super Ljava/lang/Object;
.source "CMailEncrypt.java"

# interfaces
.implements Lklb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    .end local p1    # "data":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "data":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lzh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lzh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    .end local p1    # "data":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "data":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lzh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lzh;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
