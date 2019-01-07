.class public final Lhyy;
.super Ljava/lang/Object;
.source "FaceRecognizerFactory.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Lhyz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "ali"

    sput-object v0, Lhyy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lhyz;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lhyy;->b:Lhyz;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lhzc;

    invoke-direct {v0}, Lhzc;-><init>()V

    sput-object v0, Lhyy;->b:Lhyz;

    .line 24
    :cond_0
    sget-object v0, Lhyy;->b:Lhyz;

    return-object v0
.end method
