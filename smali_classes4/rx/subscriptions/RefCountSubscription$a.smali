.class public final Lrx/subscriptions/RefCountSubscription$a;
.super Ljava/lang/Object;
.source "RefCountSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subscriptions/RefCountSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "u"    # Z
    .param p2, "c"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lrx/subscriptions/RefCountSubscription$a;->a:Z

    .line 38
    iput p2, p0, Lrx/subscriptions/RefCountSubscription$a;->b:I

    .line 39
    return-void
.end method
