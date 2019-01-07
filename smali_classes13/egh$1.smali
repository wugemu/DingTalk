.class public final Legh$1;
.super Ljava/lang/Object;
.source "LongRenderDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Legh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Legh$b;

.field final synthetic b:Legh;


# direct methods
.method public constructor <init>(Legh;Legh$b;)V
    .locals 0
    .param p1, "this$0"    # Legh;

    .prologue
    .line 38
    iput-object p1, p0, Legh$1;->b:Legh;

    iput-object p2, p0, Legh$1;->a:Legh$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Legh$1;->a:Legh$b;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Legh$1;->a:Legh$b;

    invoke-interface {v0}, Legh$b;->a()V

    .line 44
    :cond_0
    return-void
.end method
