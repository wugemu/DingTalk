.class final Laun$5$1;
.super Ljava/lang/Object;
.source "CalendarDrawerContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laun$5;->onClick(Lava;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laun$5;


# direct methods
.method constructor <init>(Laun$5;)V
    .locals 0
    .param p1, "this$1"    # Laun$5;

    .prologue
    .line 394
    iput-object p1, p0, Laun$5$1;->a:Laun$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Laun$5$1;->a:Laun$5;

    iget-object v0, v0, Laun$5;->a:Laun;

    .line 1077
    iget-object v0, v0, Laun;->a:Landroid/app/Activity;

    .line 397
    invoke-static {v0}, Lavr;->b(Landroid/app/Activity;)V

    .line 398
    return-void
.end method
