.class public final Legs;
.super Ljava/lang/Object;
.source "FocusFloatingInfo.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Legs;-><init>(ILjava/lang/String;)V

    .line 15
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "num"    # I
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Legs;->a:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Legs;->b:Ljava/lang/String;

    .line 20
    return-void
.end method
