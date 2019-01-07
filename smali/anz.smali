.class public final Lanz;
.super Ljava/lang/Object;
.source "LogProxy.java"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lanz;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-boolean v0, Lanz;->a:Z

    if-eqz v0, :cond_0

    .line 93
    const-string/jumbo v0, "BindingX"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 110
    sget-boolean v0, Lanz;->a:Z

    if-eqz v0, :cond_0

    .line 111
    const-string/jumbo v0, "BindingX"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :cond_0
    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string/jumbo v3, "debug"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "result":Z
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 47
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 52
    :cond_2
    :goto_1
    sput-boolean v1, Lanz;->a:Z

    goto :goto_0

    .line 48
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 49
    check-cast v2, Ljava/lang/String;

    .line 50
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-boolean v0, Lanz;->a:Z

    if-eqz v0, :cond_0

    .line 105
    const-string/jumbo v0, "BindingX"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    return-void
.end method
