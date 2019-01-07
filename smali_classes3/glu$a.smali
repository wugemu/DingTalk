.class public final Lglu$a;
.super Lglr$d;
.source "GroupFileAuthManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lglu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lglr$d;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Z)V
    .locals 0
    .param p1, "groupOwner"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lglu$a;->h:Z

    .line 20
    return-void
.end method
