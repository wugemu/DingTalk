.class public final Liqf;
.super Ljava/lang/Object;
.source "TinyAppStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liqf$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/FrameLayout;

.field public b:Liop;

.field private c:Liqc;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Liqe;->a()Liqe;

    move-result-object v0

    iput-object v0, p0, Liqf;->c:Liqc;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Liqf;-><init>()V

    return-void
.end method
