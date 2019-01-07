.class final Lcd$d;
.super Lcd$c;
.source "ActivityCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Ldm;)V
    .locals 0
    .param p1, "callback"    # Ldm;

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcd$c;-><init>(Ldm;)V

    .line 496
    return-void
.end method


# virtual methods
.method public final onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 1
    .param p3, "listener"    # Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 501
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v0, Lcd$d$1;

    invoke-direct {v0, p0, p3}, Lcd$d$1;-><init>(Lcd$d;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    invoke-static {v0}, Ldm;->a(Ldm$a;)V

    .line 508
    return-void
.end method
