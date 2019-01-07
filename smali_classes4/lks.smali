.class final Llks;
.super Llkr;
.source "RxJavaSingleExecutionHookDefault.java"


# static fields
.field private static final a:Llks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Llks;

    invoke-direct {v0}, Llks;-><init>()V

    sput-object v0, Llks;->a:Llks;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Llkr;-><init>()V

    .line 29
    return-void
.end method

.method public static a()Llkr;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Llks;->a:Llks;

    return-object v0
.end method
