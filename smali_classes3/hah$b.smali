.class final Lhah$b;
.super Ljava/lang/Object;
.source "Compressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static a:Lhah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 768
    new-instance v0, Lhah;

    invoke-direct {v0}, Lhah;-><init>()V

    sput-object v0, Lhah$b;->a:Lhah;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lhah;
    .locals 1

    .prologue
    .line 767
    sget-object v0, Lhah$b;->a:Lhah;

    return-object v0
.end method
