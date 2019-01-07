.class public final Lixc;
.super Ljava/lang/Object;
.source "MapFactories.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lixc$a;,
        Lixc$b;
    }
.end annotation


# static fields
.field private static volatile a:Lixc$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lixc$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lixc$a;-><init>(B)V

    sput-object v0, Lixc;->a:Lixc$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lixc$b;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lixc;->a:Lixc$b;

    return-object v0
.end method
