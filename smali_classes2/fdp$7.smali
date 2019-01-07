.class final Lfdp$7;
.super Ljava/lang/Object;
.source "CommentPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfdp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfdp;


# direct methods
.method constructor <init>(Lfdp;)V
    .locals 0
    .param p1, "this$0"    # Lfdp;

    .prologue
    .line 404
    iput-object p1, p0, Lfdp$7;->a:Lfdp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lfdp$7;->a:Lfdp;

    .line 1072
    invoke-virtual {v0}, Lfdp;->b()V

    .line 408
    return-void
.end method
