.class public final Leil;
.super Ljava/lang/Object;
.source "ControlConfigHandler.java"

# interfaces
.implements Leij;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {}, Leeh;->b()Leeg;

    move-result-object v0

    invoke-interface {v0, p1}, Leeg;->a(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method
