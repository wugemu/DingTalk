.class public final Lgls$c;
.super Lglr$d;
.source "CooperationFileAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field protected h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lglr$d;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 0
    .param p1, "role"    # I

    .prologue
    .line 27
    iput p1, p0, Lgls$c;->h:I

    .line 28
    return-void
.end method
