.class final Lame$1;
.super Ljava/lang/Object;
.source "UploadMgr.java"

# interfaces
.implements Laly;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lame;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lame;


# direct methods
.method constructor <init>(Lame;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lame$1;->a:Lame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2
    .param p1, "count"    # J

    .prologue
    .line 84
    invoke-static {}, Lamc;->b()Lamc;

    move-result-object v0

    iget-object v1, p0, Lame$1;->a:Lame;

    invoke-static {v1}, Lame;->a(Lame;)Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamc;->a(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V

    .line 85
    return-void
.end method
