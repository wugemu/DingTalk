.class public final Lawb$1;
.super Ljava/lang/Object;
.source "FloatDisplayAsyncObjectUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapb;


# direct methods
.method public constructor <init>(Lapb;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lawb$1;->a:Lapb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 155
    const/4 v0, 0x1

    invoke-static {v0}, Lavw;->h(Z)V

    .line 156
    iget-object v0, p0, Lawb$1;->a:Lapb;

    .line 1043
    iget v0, v0, Lapb;->a:I

    .line 156
    if-nez v0, :cond_0

    .line 2026
    invoke-static {}, Lawb;->a()Landroid/content/Context;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lawb$1;->a:Lapb;

    .line 2047
    iget-wide v2, v1, Lapb;->b:J

    .line 157
    invoke-static {v0, v2, v3}, Lavr;->a(Landroid/content/Context;J)V

    .line 159
    :cond_0
    return-void
.end method
