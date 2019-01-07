.class final Ljuj$b;
.super Ljava/lang/Object;
.source "StickyGridHeadersSimpleAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljuj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Ljuj;

.field private c:I


# direct methods
.method public constructor <init>(Ljuj;I)V
    .locals 1
    .param p2, "refPosition"    # I

    .prologue
    .line 134
    iput-object p1, p0, Ljuj$b;->b:Ljuj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p2, p0, Ljuj$b;->c:I

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Ljuj$b;->a:I

    .line 137
    return-void
.end method
