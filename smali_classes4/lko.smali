.class final Llko;
.super Llkn;
.source "RxJavaObservableExecutionHookDefault.java"


# static fields
.field private static final a:Llko;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Llko;

    invoke-direct {v0}, Llko;-><init>()V

    sput-object v0, Llko;->a:Llko;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Llkn;-><init>()V

    .line 28
    return-void
.end method

.method public static a()Llkn;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Llko;->a:Llko;

    return-object v0
.end method
