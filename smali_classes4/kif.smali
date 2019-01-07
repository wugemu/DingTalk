.class public abstract Lkif;
.super Lkic;
.source "PropertyReference1.java"

# interfaces
.implements Lkjf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lkic;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public final b()Lkjf$a;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lkif;->a()Lkjd;

    move-result-object v0

    check-cast v0, Lkjf;

    invoke-interface {v0}, Lkjf;->b()Lkjf$a;

    move-result-object v0

    return-object v0
.end method

.method protected computeReflected()Lkiz;
    .locals 1

    .prologue
    .line 34
    invoke-static {p0}, Lkii;->a(Lkif;)Lkjf;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "receiver"    # Ljava/lang/Object;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lkif;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
