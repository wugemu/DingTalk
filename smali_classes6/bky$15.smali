.class public final Lbky$15;
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
.field final synthetic a:Lbcf;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/android/ding/base/objects/ObjectDing;


# direct methods
.method public constructor <init>(Lbcf;Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lbky$15;->a:Lbcf;

    iput-object p2, p0, Lbky$15;->b:Landroid/app/Activity;

    iput-object p3, p0, Lbky$15;->c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 281
    iget-object v0, p0, Lbky$15;->a:Lbcf;

    iget-object v0, v0, Lbcf;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbky$15;->a:Lbcf;

    iget-object v0, v0, Lbcf;->f:Ljava/util/List;

    .line 282
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbky$15;->a:Lbcf;

    iget-object v0, v0, Lbcf;->f:Ljava/util/List;

    .line 283
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v1, p0, Lbky$15;->b:Landroid/app/Activity;

    iget-object v0, p0, Lbky$15;->a:Lbcf;

    iget-object v0, v0, Lbcf;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lbky$15;->b:Landroid/app/Activity;

    iget-object v1, p0, Lbky$15;->c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbky$15;->c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1681
    iget v2, v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 286
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    goto :goto_0
.end method
