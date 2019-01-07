.class Lclx$e;
.super Ljava/lang/Object;
.source "MailHtml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    iput p1, p0, Lclx$e;->a:I

    .line 893
    return-void
.end method

.method static synthetic a(Lclx$e;)I
    .locals 1
    .param p0, "x0"    # Lclx$e;

    .prologue
    .line 888
    iget v0, p0, Lclx$e;->a:I

    return v0
.end method
