.class public final Lbkv$5;
.super Ljava/lang/Object;
.source "FloatDisplayAsyncObjectBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbkv;
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
    .line 574
    iput-object p1, p0, Lbkv$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

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
    const/4 v3, 0x1

    .line 577
    iget-object v0, p0, Lbkv$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    invoke-static {v3}, Lbjz;->o(Z)V

    .line 584
    :cond_0
    :goto_0
    invoke-static {}, Lbkv;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbkv$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    new-instance v2, Lbkv$5$1;

    invoke-direct {v2, p0}, Lbkv$5$1;-><init>(Lbkv$5;)V

    invoke-static {v0, v1, v3, v2}, Lbjy;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;ZLcom/alibaba/wukong/Callback;)V

    .line 599
    return-void

    .line 579
    :cond_1
    iget-object v0, p0, Lbkv$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    invoke-static {v3}, Lbjz;->p(Z)V

    goto :goto_0

    .line 581
    :cond_2
    iget-object v0, p0, Lbkv$5;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    invoke-static {v3}, Lbjz;->q(Z)V

    goto :goto_0
.end method