.class public final Ljfo;
.super Ljava/lang/Object;
.source "EditTextManager.java"


# static fields
.field private static a:Ljfp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Ljfo;->a:Ljfp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljfp;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Ljfo;->a:Ljfp;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljfp;

    invoke-direct {v0}, Ljfp;-><init>()V

    sput-object v0, Ljfo;->a:Ljfp;

    .line 19
    :cond_0
    sget-object v0, Ljfo;->a:Ljfp;

    return-object v0
.end method
