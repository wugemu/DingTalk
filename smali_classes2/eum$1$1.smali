.class final Leum$1$1;
.super Ljava/lang/Object;
.source "TeleBusinessConfRecordGridAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leum$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leum$1;


# direct methods
.method constructor <init>(Leum$1;)V
    .locals 0
    .param p1, "this$1"    # Leum$1;

    .prologue
    .line 573
    iput-object p1, p0, Leum$1$1;->a:Leum$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Leum$1$1;->a:Leum$1;

    iget-object v0, v0, Leum$1;->b:Leum;

    invoke-virtual {v0}, Leum;->notifyDataSetChanged()V

    .line 577
    return-void
.end method
