.class final Lcom/alibaba/android/oa/fragment/CommonOAFragment$9;
.super Ljava/lang/Object;
.source "CommonOAFragment.java"

# interfaces
.implements Leea$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/fragment/CommonOAFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leea$b",
        "<",
        "Lefv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

.field private b:J


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$9;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$9;->b:J

    return-void
.end method


# virtual methods
.method public final synthetic a(ILjava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 362
    check-cast p2, Lefv;

    .line 1367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$9;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$9;->b:J

    .line 1372
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$9;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-static {v0, p2}, Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a(Lcom/alibaba/android/oa/fragment/CommonOAFragment;Lefv;)V

    .line 362
    :cond_0
    return-void
.end method
