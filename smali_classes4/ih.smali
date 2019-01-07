.class public final Lih;
.super Ljava/lang/Object;
.source "AppMonitor.java"


# static fields
.field private static volatile a:Lij;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lii;

    invoke-direct {v0}, Lii;-><init>()V

    sput-object v0, Lih;->a:Lij;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lij;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lih;->a:Lij;

    return-object v0
.end method
