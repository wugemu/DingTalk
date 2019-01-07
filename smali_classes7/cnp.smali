.class public final Lcnp;
.super Ljava/lang/Object;
.source "ExposureExt.java"


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "exposureTime"    # J

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcnp;->a:J

    .line 16
    return-void
.end method
