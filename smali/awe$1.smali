.class final Lawe$1;
.super Ljava/lang/Object;
.source "PopupDisplayAsyncObjectUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapb;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lapb;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lawe$1;->a:Lapb;

    iput-object p2, p0, Lawe$1;->b:Landroid/app/Activity;

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
    .line 154
    const/4 v0, 0x0

    invoke-static {v0}, Lavw;->h(Z)V

    .line 155
    iget-object v0, p0, Lawe$1;->a:Lapb;

    .line 1043
    iget v0, v0, Lapb;->a:I

    .line 155
    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lawe$1;->b:Landroid/app/Activity;

    iget-object v1, p0, Lawe$1;->a:Lapb;

    .line 1047
    iget-wide v2, v1, Lapb;->b:J

    .line 156
    invoke-static {v0, v2, v3}, Lavr;->a(Landroid/content/Context;J)V

    .line 158
    :cond_0
    return-void
.end method
