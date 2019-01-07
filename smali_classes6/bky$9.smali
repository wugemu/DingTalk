.class public final Lbky$9;
.super Ljava/lang/Object;
.source "PopupDisplayAsynObjectBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lbky$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

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
    const/4 v3, 0x0

    .line 746
    iget-object v0, p0, Lbky$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    invoke-static {v3}, Lbjz;->o(Z)V

    .line 753
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbky$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    new-instance v2, Lbky$9$1;

    invoke-direct {v2, p0}, Lbky$9$1;-><init>(Lbky$9;)V

    invoke-static {v0, v1, v3, v2}, Lbjy;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;ZLcom/alibaba/wukong/Callback;)V

    .line 768
    return-void

    .line 748
    :cond_1
    iget-object v0, p0, Lbky$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 749
    invoke-static {v3}, Lbjz;->p(Z)V

    goto :goto_0

    .line 750
    :cond_2
    iget-object v0, p0, Lbky$9;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    invoke-static {v3}, Lbjz;->q(Z)V

    goto :goto_0
.end method
