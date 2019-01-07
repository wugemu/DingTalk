.class final Lbky$13;
.super Ljava/lang/Object;
.source "PopupDisplayAsynObjectBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbky;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/dingtalkbase/widgets/popup/PopupDisplayAsyncObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/base/objects/ObjectDing;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lbky$13;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object p2, p0, Lbky$13;->b:Landroid/app/Activity;

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
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lbky$13;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-static {v1}, Lbjz;->i(Z)V

    .line 174
    :cond_0
    :goto_0
    iget-object v0, p0, Lbky$13;->b:Landroid/app/Activity;

    iget-object v1, p0, Lbky$13;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbky$13;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1681
    iget v2, v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 174
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    .line 175
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lbky$13;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-static {v1}, Lbjz;->j(Z)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lbky$13;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {v1}, Lbjz;->k(Z)V

    goto :goto_0
.end method
