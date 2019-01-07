.class final Lfuh$b;
.super Ljava/lang/Object;
.source "CardRedDotHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfuh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static final a:Lfuh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lfuh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfuh;-><init>(B)V

    sput-object v0, Lfuh$b;->a:Lfuh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
