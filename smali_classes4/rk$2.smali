.class public final Lrk$2;
.super Ljava/lang/Object;
.source "FloatDisplayAsyncObjectUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 1

    .prologue
    .line 86
    iput-wide p1, p0, Lrk$2;->a:J

    iput-wide p3, p0, Lrk$2;->b:J

    iput-wide p5, p0, Lrk$2;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 89
    invoke-static {}, Lrk;->a()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lrk$2;->a:J

    iget-wide v4, p0, Lrk$2;->b:J

    iget-wide v6, p0, Lrk$2;->c:J

    invoke-static/range {v1 .. v7}, Lrj;->a(Landroid/content/Context;JJJ)V

    .line 90
    return-void
.end method
