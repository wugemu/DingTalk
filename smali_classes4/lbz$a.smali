.class final Llbz$a;
.super Ljava/lang/Object;
.source "InlineParserImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llbz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Z

.field final c:Z


# direct methods
.method constructor <init>(IZZ)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "canOpen"    # Z
    .param p3, "canClose"    # Z

    .prologue
    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    iput p1, p0, Llbz$a;->a:I

    .line 966
    iput-boolean p2, p0, Llbz$a;->c:Z

    .line 967
    iput-boolean p3, p0, Llbz$a;->b:Z

    .line 968
    return-void
.end method
