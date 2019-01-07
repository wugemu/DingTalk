.class final Lbib$30;
.super Ljava/lang/Object;
.source "BasicDingViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbib;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbib;


# direct methods
.method constructor <init>(Lbib;)V
    .locals 0
    .param p1, "this$0"    # Lbib;

    .prologue
    .line 1451
    iput-object p1, p0, Lbib$30;->a:Lbib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1454
    iget-object v0, p0, Lbib$30;->a:Lbib;

    iget-object v0, v0, Lbib;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbib$30;->a:Lbib;

    iget-object v1, v1, Lbib;->ae:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    sget v2, Laxp$i;->dt_ding_conference_reject_prompt:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lbkl;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;ILbkl$a;)V

    .line 2302
    const-string/jumbo v0, "ding_detail_refuse_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 1456
    return-void
.end method
