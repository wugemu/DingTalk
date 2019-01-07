.class public final Lknu$a;
.super Ljava/lang/ref/WeakReference;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lknu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lknu;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lknu;Ljava/lang/Object;)V
    .locals 0
    .param p1, "referent"    # Lknu;
    .param p2, "callStackTrace"    # Ljava/lang/Object;

    .prologue
    .line 534
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 535
    iput-object p2, p0, Lknu$a;->a:Ljava/lang/Object;

    .line 536
    return-void
.end method
