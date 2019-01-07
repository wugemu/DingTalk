.class public abstract Lkid;
.super Lkic;
.source "PropertyReference0.java"

# interfaces
.implements Lkje;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lkic;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public final b()Lkje$a;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lkid;->a()Lkjd;

    move-result-object v0

    check-cast v0, Lkje;

    invoke-interface {v0}, Lkje;->b()Lkje$a;

    move-result-object v0

    return-object v0
.end method

.method protected computeReflected()Lkiz;
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lkii;->a(Lkid;)Lkje;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lkid;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
