.class public final Lfe;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfe$a;,
        Lfe$b;
    }
.end annotation


# static fields
.field private static final a:Lfe$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 44
    new-instance v0, Lfe$a;

    invoke-direct {v0}, Lfe$a;-><init>()V

    sput-object v0, Lfe;->a:Lfe$b;

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v0, Lfe$b;

    invoke-direct {v0}, Lfe$b;-><init>()V

    sput-object v0, Lfe;->a:Lfe$b;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lfe;->a:Lfe$b;

    invoke-virtual {v0, p0}, Lfe$b;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
