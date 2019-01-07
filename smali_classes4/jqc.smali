.class public final Ljqc;
.super Ljava/lang/Object;
.source "WMLDefaultApi.java"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    sput-object v0, Ljqc;->a:Ljava/util/List;

    const-string/jumbo v1, "navigator"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Ljqc;->a:Ljava/util/List;

    const-string/jumbo v1, "navigatorBar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Ljqc;->a:Ljava/util/List;

    const-string/jumbo v1, "memoryStorage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v0, Ljqc;->a:Ljava/util/List;

    const-string/jumbo v1, "miniApp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Ljqc;->a:Ljava/util/List;

    const-string/jumbo v1, "windmillEnv"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Ljqc;->a:Ljava/util/List;

    const-string/jumbo v1, "clipboard"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Ljqc;->a:Ljava/util/List;

    const-string/jumbo v1, "picker"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Ljqc;->a:Ljava/util/List;

    const-string/jumbo v1, "prefetch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Ljqc;->a:Ljava/util/List;

    const-string/jumbo v1, "audio"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Ljqc;->a:Ljava/util/List;

    const-string/jumbo v1, "modal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Ljqc;->a:Ljava/util/List;

    const-string/jumbo v1, "timer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Ljqc;->a:Ljava/util/List;

    const-string/jumbo v1, "connection"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Ljqc;->a:Ljava/util/List;

    const-string/jumbo v1, "storage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Ljqc;->a:Ljava/util/List;

    const-string/jumbo v1, "prefetch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Ljqc;->a:Ljava/util/List;

    const-string/jumbo v1, "broadcast"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .param p0, "bridge"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v0, Ljqc;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 35
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
