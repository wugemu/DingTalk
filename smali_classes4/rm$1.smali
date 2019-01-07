.class public final Lrm$1;
.super Ljava/lang/Object;
.source "PopupDisplayAsyncObjectUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;JJJ)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lrm$1;->a:Landroid/app/Activity;

    iput-wide p2, p0, Lrm$1;->b:J

    iput-wide p4, p0, Lrm$1;->c:J

    iput-wide p6, p0, Lrm$1;->d:J

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
    .line 68
    iget-object v1, p0, Lrm$1;->a:Landroid/app/Activity;

    iget-wide v2, p0, Lrm$1;->b:J

    iget-wide v4, p0, Lrm$1;->c:J

    iget-wide v6, p0, Lrm$1;->d:J

    invoke-static/range {v1 .. v7}, Lrj;->a(Landroid/content/Context;JJJ)V

    .line 69
    return-void
.end method
