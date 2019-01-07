.class final Lfi$e;
.super Lfi$d;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>(Lfi$c;Z)V
    .locals 0
    .param p1, "algorithm"    # Lfi$c;
    .param p2, "defaultIsRtl"    # Z

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lfi$d;-><init>(Lfi$c;)V

    .line 157
    iput-boolean p2, p0, Lfi$e;->a:Z

    .line 158
    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lfi$e;->a:Z

    return v0
.end method
