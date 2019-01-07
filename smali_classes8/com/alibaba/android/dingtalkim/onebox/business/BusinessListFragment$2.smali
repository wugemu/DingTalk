.class final Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;
.super Ljava/lang/Object;
.source "BusinessListFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ldqn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 178
    check-cast p1, Ldqn;

    .line 1181
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->e(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1183
    if-nez p1, :cond_1

    .line 1185
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    sget v2, Lctk$i;->dt_im_business_item_none:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;Ljava/lang/String;)V

    .line 1194
    :cond_0
    :goto_0
    return-void

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    .line 2076
    iget-wide v2, p1, Ldqn;->b:J

    .line 1189
    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;J)J

    .line 1190
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    .line 2084
    iget-boolean v1, p1, Ldqn;->c:Z

    .line 1190
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->b:Z

    .line 2092
    iget-object v0, p1, Ldqn;->d:Ljava/util/List;

    .line 1192
    if-eqz v0, :cond_2

    .line 3092
    iget-object v0, p1, Ldqn;->d:Ljava/util/List;

    .line 1192
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1193
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    sget v2, Lctk$i;->dt_im_business_item_none:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 1197
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->a:Z

    if-eqz v0, :cond_4

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->f(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;)Ldvq;

    move-result-object v0

    .line 4092
    iget-object v1, p1, Ldqn;->d:Ljava/util/List;

    .line 1198
    invoke-virtual {v0, v1}, Ldvq;->b(Ljava/util/List;)V

    .line 1208
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->h(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;)Ldbx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->i(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;)Ldbx;

    move-result-object v0

    .line 7068
    iget v1, p1, Ldqn;->a:I

    .line 1209
    invoke-interface {v0, v1}, Ldbx;->a(I)V

    goto :goto_0

    .line 1200
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->g(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    sget v1, Lctk$i;->dt_contact_business_total_des_at2:I

    .line 1201
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    .line 5068
    iget v0, p1, Ldqn;->a:I

    .line 1202
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 5103
    iget-object v0, p1, Ldqn;->d:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Ldqn;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5104
    :cond_5
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    .line 1203
    :goto_2
    invoke-static {v0, v1, v6}, Lcog;->e(JZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 1201
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1200
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->f(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;)Ldvq;

    move-result-object v0

    .line 6092
    iget-object v1, p1, Ldqn;->d:Ljava/util/List;

    .line 1205
    invoke-virtual {v0, v1}, Ldvq;->a(Ljava/util/List;)V

    goto :goto_1

    .line 5107
    :cond_6
    iget-object v0, p1, Ldqn;->d:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;

    .line 5109
    if-nez v0, :cond_7

    .line 5110
    invoke-static {}, Lcms;->u()J

    move-result-wide v0

    goto :goto_2

    .line 5112
    :cond_7
    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;->createAt:J

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->e(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment$2;->b:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;

    sget v2, Lctk$i;->dt_im_business_item_none:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;->a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListFragment;Ljava/lang/String;)V

    .line 224
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getBusinessItemsByOpenIds: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 216
    return-void
.end method
