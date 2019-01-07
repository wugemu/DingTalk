.class public final Lfdb$a;
.super Ljava/lang/Object;
.source "ImageDataInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "itemCount"    # I
    .param p2, "spanCount"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lfdb$a;->a:I

    .line 76
    iput p2, p0, Lfdb$a;->b:I

    .line 77
    return-void
.end method
