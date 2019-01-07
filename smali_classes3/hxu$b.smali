.class public final Lhxu$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhxu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x280

    iput v0, p0, Lhxu$b;->a:I

    const/16 v0, 0x1e0

    iput v0, p0, Lhxu$b;->b:I

    const/16 v0, 0x50

    iput v0, p0, Lhxu$b;->c:I

    const/16 v0, 0x64

    iput v0, p0, Lhxu$b;->d:I

    return-void
.end method
