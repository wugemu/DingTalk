.class public Lglr$k;
.super Lglr$f;
.source "CSpaceAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field protected f:I

.field protected g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lglr$f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "spaceType"    # I

    .prologue
    .line 84
    iput p1, p0, Lglr$k;->f:I

    .line 85
    return-void
.end method

.method public final c(Z)V
    .locals 0
    .param p1, "spaceReadOnly"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lglr$k;->g:Z

    .line 89
    return-void
.end method
