.class final Laki$b;
.super Ljava/lang/Object;
.source "UTSampleConfBiz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laki;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Z

.field b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-boolean v0, p0, Laki$b;->a:Z

    .line 154
    iput-boolean v0, p0, Laki$b;->b:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Laki$b;-><init>()V

    return-void
.end method
