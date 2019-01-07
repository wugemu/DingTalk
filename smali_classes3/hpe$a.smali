.class final Lhpe$a;
.super Ljava/lang/Object;
.source "HydroNetStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhpe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lhpe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lhpe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhpe;-><init>(B)V

    sput-object v0, Lhpe$a;->a:Lhpe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
