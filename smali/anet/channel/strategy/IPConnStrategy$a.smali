.class public final Lanet/channel/strategy/IPConnStrategy$a;
.super Ljava/lang/Object;
.source "IPConnStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/IPConnStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lanet/channel/strategy/RawConnStrategy;)Lanet/channel/strategy/IPConnStrategy;
    .locals 2
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "rawConnStrategy"    # Lanet/channel/strategy/RawConnStrategy;

    .prologue
    const/4 v0, 0x0

    .line 98
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lanet/channel/strategy/IPConnStrategy;

    invoke-direct {v1, p0, p1, v0}, Lanet/channel/strategy/IPConnStrategy;-><init>(Ljava/lang/String;Lanet/channel/strategy/RawConnStrategy;Lanet/channel/strategy/IPConnStrategy$1;)V

    move-object v0, v1

    goto :goto_0
.end method
