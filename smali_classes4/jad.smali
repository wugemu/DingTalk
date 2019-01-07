.class public final Ljad;
.super Ljava/lang/Object;
.source "CastFactory.java"


# static fields
.field private static a:Ljac;

.field private static b:Ljac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Ljae;

    invoke-direct {v0}, Ljae;-><init>()V

    sput-object v0, Ljad;->a:Ljac;

    .line 6
    new-instance v0, Ljaf;

    invoke-direct {v0}, Ljaf;-><init>()V

    sput-object v0, Ljad;->b:Ljac;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljac;
    .locals 1
    .param p0, "dt"    # Ljava/lang/String;

    .prologue
    .line 9
    if-eqz p0, :cond_0

    const-string/jumbo v0, "j"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Ljad;->a:Ljac;

    .line 12
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljad;->b:Ljac;

    goto :goto_0
.end method
