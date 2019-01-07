.class public final Lglw$c;
.super Lglr$d;
.source "PublicAreaFileAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field protected h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lglr$d;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Z)V
    .locals 0
    .param p1, "admin"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lglw$c;->h:Z

    .line 24
    return-void
.end method
