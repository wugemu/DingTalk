.class public final Lhee$a;
.super Ljava/lang/Object;
.source "FloatActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lhee;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lhee;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhee;-><init>(B)V

    sput-object v0, Lhee$a;->a:Lhee;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lhee;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lhee$a;->a:Lhee;

    return-object v0
.end method
