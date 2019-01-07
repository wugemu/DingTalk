.class public final Lbyl;
.super Ljava/lang/Object;
.source "LiveTrace.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "description"    # Ljava/lang/String;

    .prologue
    .line 13
    const-string/jumbo v0, "live"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method
