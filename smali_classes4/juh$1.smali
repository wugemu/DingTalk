.class final Ljuh$1;
.super Landroid/database/DataSetObserver;
.source "StickyGridHeadersListAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljuh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljuh;


# direct methods
.method constructor <init>(Ljuh;)V
    .locals 0
    .param p1, "this$0"    # Ljuh;

    .prologue
    .line 12
    iput-object p1, p0, Ljuh$1;->a:Ljuh;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Ljuh$1;->a:Ljuh;

    invoke-virtual {v0}, Ljuh;->notifyDataSetChanged()V

    .line 16
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Ljuh$1;->a:Ljuh;

    invoke-virtual {v0}, Ljuh;->notifyDataSetInvalidated()V

    .line 21
    return-void
.end method
