.class public final Lgy;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgy$c;,
        Lgy$b;,
        Lgy$d;,
        Lgy$a;
    }
.end annotation


# static fields
.field private static final b:Lgy$a;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 163
    new-instance v0, Lgy$c;

    invoke-direct {v0}, Lgy$c;-><init>()V

    sput-object v0, Lgy;->b:Lgy$a;

    .line 169
    :goto_0
    return-void

    .line 164
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 165
    new-instance v0, Lgy$b;

    invoke-direct {v0}, Lgy$b;-><init>()V

    sput-object v0, Lgy;->b:Lgy$a;

    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Lgy$d;

    invoke-direct {v0}, Lgy$d;-><init>()V

    sput-object v0, Lgy;->b:Lgy$a;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    sget-object v0, Lgy;->b:Lgy$a;

    invoke-interface {v0, p0}, Lgy$a;->a(Lgy;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgy;->a:Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/Object;

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lgy;->a:Ljava/lang/Object;

    .line 186
    return-void
.end method

.method public static a()Lgx;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public static c()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x0

    return-object v0
.end method

.method public static d()Lgx;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x0

    return-object v0
.end method
