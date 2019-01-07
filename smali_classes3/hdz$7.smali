.class final Lhdz$7;
.super Ljava/lang/Object;
.source "FloatingLayerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhdz;->a(Z)V
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
    .line 139
    iput-object p1, p0, Lhdz$7;->a:Lhdz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lhdz$7;->a:Lhdz;

    invoke-static {v0}, Lhdz;->a(Lhdz;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lhdz$7;->a:Lhdz;

    invoke-static {v0}, Lhdz;->c(Lhdz;)V

    .line 146
    :cond_0
    return-void
.end method
