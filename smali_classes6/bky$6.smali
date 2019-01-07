.class final Lbky$6;
.super Ljava/lang/Object;
.source "PopupDisplayAsynObjectBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbky;->a(Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lbky$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p2, p0, Lbky$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 655
    iget-object v2, p0, Lbky$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 656
    invoke-static {v3}, Lbjz;->r(Z)V

    .line 662
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 663
    .local v1, "context":Landroid/content/Context;
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 664
    check-cast v0, Landroid/app/Activity;

    .line 665
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lbky$6;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 666
    iget-object v2, p0, Lbky$6;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 672
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    :goto_1
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    iget-object v3, p0, Lbky$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    .line 2109
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 672
    invoke-virtual {v2, v4, v5, v6}, Lbbp;->a(JLcma;)V

    .line 673
    return-void

    .line 657
    .end local v1    # "context":Landroid/content/Context;
    :cond_2
    iget-object v2, p0, Lbky$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 658
    invoke-static {v3}, Lbjz;->s(Z)V

    goto :goto_0

    .line 659
    :cond_3
    iget-object v2, p0, Lbky$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v2}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    invoke-static {v3}, Lbjz;->t(Z)V

    goto :goto_0

    .line 668
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_4
    iget-object v2, p0, Lbky$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbky$6;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1681
    iget v3, v3, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 668
    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v6, v4}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    goto :goto_1
.end method
