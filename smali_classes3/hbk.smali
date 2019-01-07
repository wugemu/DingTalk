.class public final Lhbk;
.super Ljava/lang/Object;
.source "SoLoaderShim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhbk$a;,
        Lhbk$b;
    }
.end annotation


# static fields
.field private static volatile a:Lhbk$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lhbk$a;

    invoke-direct {v0}, Lhbk$a;-><init>()V

    sput-object v0, Lhbk;->a:Lhbk$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .param p0, "libraryName"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lhbk;->a:Lhbk$b;

    invoke-interface {v0, p0}, Lhbk$b;->a(Ljava/lang/String;)V

    .line 57
    return-void
.end method
