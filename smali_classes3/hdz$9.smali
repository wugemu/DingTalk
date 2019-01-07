.class final Lhdz$9;
.super Ljava/lang/Object;
.source "FloatingLayerDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhdz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhdz;


# direct methods
.method constructor <init>(Lhdz;)V
    .locals 0
    .param p1, "this$0"    # Lhdz;

    .prologue
    .line 277
    iput-object p1, p0, Lhdz$9;->a:Lhdz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    iget-object v0, p0, Lhdz$9;->a:Lhdz;

    invoke-static {v0}, Lhdz;->d(Lhdz;)V

    .line 281
    return-void
.end method
