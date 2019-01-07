.class public final Liv;
.super Ljava/lang/Object;
.source "NetworkAnalysis.java"


# static fields
.field private static volatile a:Liu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lis;

    invoke-direct {v0}, Lis;-><init>()V

    sput-object v0, Liv;->a:Liu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Liu;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Liv;->a:Liu;

    return-object v0
.end method
