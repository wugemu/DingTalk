.class final Lhbl$b;
.super Ljava/lang/Object;
.source "AlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhbl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field final synthetic c:Lhbl;


# direct methods
.method private constructor <init>(Lhbl;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lhbl$b;->c:Lhbl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhbl;B)V
    .locals 0
    .param p1, "x0"    # Lhbl;

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lhbl$b;-><init>(Lhbl;)V

    return-void
.end method
