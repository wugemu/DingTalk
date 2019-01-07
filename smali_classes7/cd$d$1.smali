.class final Lcd$d$1;
.super Ljava/lang/Object;
.source "ActivityCompat.java"

# interfaces
.implements Ldm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcd$d;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

.field final synthetic b:Lcd$d;


# direct methods
.method constructor <init>(Lcd$d;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0
    .param p1, "this$0"    # Lcd$d;

    .prologue
    .line 502
    iput-object p1, p0, Lcd$d$1;->b:Lcd$d;

    iput-object p2, p0, Lcd$d$1;->a:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcd$d$1;->a:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-interface {v0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    .line 506
    return-void
.end method
