.class public final Lfsl;
.super Ljava/lang/Object;
.source "NameCardEditDeleteBean.java"

# interfaces
.implements Lfsi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lfsh;)I
    .locals 1
    .param p1, "typeFactory"    # Lfsh;

    .prologue
    .line 23
    if-eqz p1, :cond_0

    .line 24
    const/16 v0, 0x14

    .line 26
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
