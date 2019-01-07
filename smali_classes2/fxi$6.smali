.class final Lfxi$6;
.super Ljava/lang/Object;
.source "QuotaCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfxi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:Lfxi;


# direct methods
.method constructor <init>(Lfxi;Ljava/util/List;J)V
    .locals 1
    .param p1, "this$0"    # Lfxi;

    .prologue
    .line 379
    iput-object p1, p0, Lfxi$6;->c:Lfxi;

    iput-object p2, p0, Lfxi$6;->a:Ljava/util/List;

    iput-wide p3, p0, Lfxi$6;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 382
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->g()Lfmw;

    move-result-object v0

    iget-object v1, p0, Lfxi$6;->a:Ljava/util/List;

    iget-wide v2, p0, Lfxi$6;->b:J

    invoke-interface {v0, v1, v2, v3}, Lfmw;->a(Ljava/util/List;J)I

    .line 383
    return-void
.end method
