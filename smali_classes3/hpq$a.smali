.class final Lhpq$a;
.super Ljava/lang/Object;
.source "AsyncHydroNetStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lhpq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lhpq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhpq;-><init>(B)V

    sput-object v0, Lhpq$a;->a:Lhpq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
