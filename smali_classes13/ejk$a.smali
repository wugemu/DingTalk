.class public final Lejk$a;
.super Ljava/lang/Object;
.source "NavigatorTabsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lejk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lejk$a;->a:I

    .line 19
    iput v0, p0, Lejk$a;->b:I

    return-void
.end method
