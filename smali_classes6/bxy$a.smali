.class final Lbxy$a;
.super Ljava/lang/Object;
.source "LiveReplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Z

.field final synthetic c:Lbxy;


# direct methods
.method private constructor <init>(Lbxy;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lbxy$a;->c:Lbxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbxy;B)V
    .locals 0
    .param p1, "x0"    # Lbxy;

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lbxy$a;-><init>(Lbxy;)V

    return-void
.end method
