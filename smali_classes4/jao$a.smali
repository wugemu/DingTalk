.class public abstract Ljao$a;
.super Ljava/lang/Object;
.source "ILWAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplay(Ljava/lang/String;)I
    .locals 1
    .param p1, "linkUrl"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public onResponceAnswer(I)I
    .locals 1
    .param p1, "ret"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method
