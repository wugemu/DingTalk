.class final Lfdo$a;
.super Ljava/lang/Object;
.source "StringArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfdo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static a:Lfdo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lfdo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfdo;-><init>(B)V

    sput-object v0, Lfdo$a;->a:Lfdo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lfdo;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lfdo$a;->a:Lfdo;

    return-object v0
.end method
