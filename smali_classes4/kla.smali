.class public final Lkla;
.super Ljava/lang/Object;
.source "Encrypt.java"


# static fields
.field public static a:Lklb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 15
    sget-object v0, Lkla;->a:Lklb;

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Lkla;->a:Lklb;

    invoke-interface {v0, p0}, Lklb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 19
    .end local p0    # "data":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Lkla;->a:Lklb;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lkla;->a:Lklb;

    invoke-interface {v0, p0}, Lklb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 32
    .end local p0    # "data":Ljava/lang/String;
    :cond_0
    return-object p0
.end method
