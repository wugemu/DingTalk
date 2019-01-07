.class final Lhah$a;
.super Ljava/lang/Object;
.source "Compressor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public b:I

.field final synthetic c:Lhah;


# direct methods
.method private constructor <init>(Lhah;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lhah$a;->c:Lhah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhah;B)V
    .locals 0
    .param p1, "x0"    # Lhah;

    .prologue
    .line 774
    invoke-direct {p0, p1}, Lhah$a;-><init>(Lhah;)V

    return-void
.end method
