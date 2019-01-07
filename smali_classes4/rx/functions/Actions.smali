.class public final Lrx/functions/Actions;
.super Ljava/lang/Object;
.source "Actions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/functions/Actions$NotImplemented;,
        Lrx/functions/Actions$a;,
        Lrx/functions/Actions$b;
    }
.end annotation


# static fields
.field private static final a:Lrx/functions/Actions$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lrx/functions/Actions$b;

    invoke-direct {v0}, Lrx/functions/Actions$b;-><init>()V

    sput-object v0, Lrx/functions/Actions;->a:Lrx/functions/Actions$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Llhf;)Llhg;
    .locals 1
    .param p0, "action"    # Llhf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llhf;",
            ")",
            "Llhg",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 556
    new-instance v0, Lrx/functions/Actions$a;

    invoke-direct {v0, p0}, Lrx/functions/Actions$a;-><init>(Llhf;)V

    return-object v0
.end method

.method public static a()Lrx/functions/Actions$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/functions/Actions$b",
            "<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
        }
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lrx/functions/Actions;->a:Lrx/functions/Actions$b;

    return-object v0
.end method
