.class public final Llke;
.super Ljava/lang/Object;
.source "Observers.java"


# static fields
.field private static final a:Llgt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llgt",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Llke$1;

    invoke-direct {v0}, Llke$1;-><init>()V

    sput-object v0, Llke;->a:Llgt;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Llgt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Llgt",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Llke;->a:Llgt;

    return-object v0
.end method
