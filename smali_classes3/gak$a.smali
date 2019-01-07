.class public final Lgak$a;
.super Ljava/lang/Object;
.source "CsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lgak;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lgak;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgak;-><init>(B)V

    sput-object v0, Lgak$a;->a:Lgak;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lgak;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lgak$a;->a:Lgak;

    return-object v0
.end method
