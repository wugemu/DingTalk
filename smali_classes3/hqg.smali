.class public final Lhqg;
.super Ljava/lang/Object;
.source "PreloadHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhqg$b;,
        Lhqg$a;
    }
.end annotation


# static fields
.field private static b:Lhqg;


# instance fields
.field a:Lhqg$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lhqg;

    invoke-direct {v0}, Lhqg;-><init>()V

    sput-object v0, Lhqg;->b:Lhqg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lhqg;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lhqg;->b:Lhqg;

    return-object v0
.end method
