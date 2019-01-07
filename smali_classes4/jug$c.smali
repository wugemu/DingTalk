.class public final Ljug$c;
.super Ljava/lang/Object;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field protected a:I

.field public b:I

.field final synthetic c:Ljug;


# direct methods
.method protected constructor <init>(Ljug;II)V
    .locals 0
    .param p1, "this$0"    # Ljug;
    .param p2, "position"    # I
    .param p3, "header"    # I

    .prologue
    .line 475
    iput-object p1, p0, Ljug$c;->c:Ljug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput p2, p0, Ljug$c;->b:I

    .line 477
    iput p3, p0, Ljug$c;->a:I

    .line 478
    return-void
.end method
