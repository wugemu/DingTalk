.class public final Lbok$a;
.super Ljava/lang/Object;
.source "ImageDataInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbok;
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
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lbok$a;->a:I

    .line 80
    iput p2, p0, Lbok$a;->b:I

    .line 81
    return-void
.end method
