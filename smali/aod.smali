.class abstract Laod;
.super Ljava/lang/Object;
.source "AnimationFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laod$c;,
        Laod$b;,
        Laod$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method static a()Laod;
    .locals 3

    .prologue
    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 40
    new-instance v0, Laod$b;

    invoke-direct {v0}, Laod$b;-><init>()V

    .line 44
    .local v0, "frame":Laod;
    :goto_0
    return-object v0

    .line 42
    .end local v0    # "frame":Laod;
    :cond_0
    new-instance v0, Laod$c;

    invoke-direct {v0}, Laod$c;-><init>()V

    .restart local v0    # "frame":Laod;
    goto :goto_0
.end method


# virtual methods
.method abstract a(Laod$a;)V
    .param p1    # Laod$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method abstract b()V
.end method

.method abstract c()V
.end method
