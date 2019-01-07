.class public final Ljn;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# static fields
.field private static volatile a:Ljm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Ljn;->a:Ljm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljm;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Ljn;->a:Ljm;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Ljl;

    invoke-direct {v0}, Ljl;-><init>()V

    sput-object v0, Ljn;->a:Ljm;

    .line 17
    :cond_0
    sget-object v0, Ljn;->a:Ljm;

    return-object v0
.end method
