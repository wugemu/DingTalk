.class final Lboy$10;
.super Ljava/lang/Object;
.source "CommentPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lboy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lboy;


# direct methods
.method constructor <init>(Lboy;)V
    .locals 0
    .param p1, "this$0"    # Lboy;

    .prologue
    .line 437
    iput-object p1, p0, Lboy$10;->a:Lboy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lboy$10;->a:Lboy;

    .line 1063
    invoke-virtual {v0}, Lboy;->b()V

    .line 441
    return-void
.end method
