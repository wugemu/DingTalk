.class final Lgzg$a;
.super Ljava/lang/Object;
.source "BizErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgzg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Lgzg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lgzg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgzg;-><init>(B)V

    sput-object v0, Lgzg$a;->a:Lgzg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lgzg;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lgzg$a;->a:Lgzg;

    return-object v0
.end method
