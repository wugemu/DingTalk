.class public final Lbky$11;
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
    .line 835
    iput-object p1, p0, Lbky$11;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 838
    iget-object v2, p0, Lbky$11;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 839
    invoke-static {v3}, Lbjz;->i(Z)V

    .line 845
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 846
    .local v1, "context":Landroid/content/Context;
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 847
    check-cast v0, Landroid/app/Activity;

    .line 848
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lbky$11;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbky$11;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1681
    iget v3, v3, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 848
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v0, v2, v3, v4, v5}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    .line 850
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    return-void

    .line 840
    .end local v1    # "context":Landroid/content/Context;
    :cond_2
    iget-object v2, p0, Lbky$11;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 841
    invoke-static {v3}, Lbjz;->j(Z)V

    goto :goto_0

    .line 842
    :cond_3
    iget-object v2, p0, Lbky$11;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 843
    invoke-static {v3}, Lbjz;->k(Z)V

    goto :goto_0
.end method
