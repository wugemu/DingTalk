.class public final Lhgw;
.super Ljava/lang/Object;
.source "UniSubscriberWrapper.java"

# interfaces
.implements Lhgn;


# instance fields
.field private a:Lhgn;

.field private b:I


# direct methods
.method public constructor <init>(Lhgn;I)V
    .locals 1
    .param p1, "impl"    # Lhgn;
    .param p2, "type"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lhgw;->a:Lhgn;

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lhgw;->b:I

    .line 15
    return-void
.end method
