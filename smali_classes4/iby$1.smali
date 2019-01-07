.class public final Liby$1;
.super Ljag;
.source "MessageReadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljag",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Liby;


# direct methods
.method public constructor <init>(Liby;)V
    .locals 0
    .param p1, "this$0"    # Liby;

    .prologue
    .line 49
    iput-object p1, p0, Liby$1;->a:Liby;

    invoke-direct {p0}, Ljag;-><init>()V

    return-void
.end method
