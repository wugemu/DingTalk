.class final Ljoz$d;
.super Ljava/lang/Object;
.source "HotPatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljoz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# static fields
.field private static final a:Ljoz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljoz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljoz;-><init>(B)V

    sput-object v0, Ljoz$d;->a:Ljoz;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljoz;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Ljoz$d;->a:Ljoz;

    return-object v0
.end method
