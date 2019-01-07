.class final Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;
.super Lfxq;
.source "SelectPositionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lcom/alibaba/android/user/model/PositionData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;Landroid/app/Activity;)V
    .locals 0
    .param p2, "context"    # Landroid/app/Activity;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;

    .line 221
    invoke-direct {p0, p2}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 222
    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/user/model/PositionData;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;->h:Ljava/util/List;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 271
    :cond_0
    :goto_0
    return-object v1

    .line 264
    :cond_1
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 265
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/PositionData;

    .line 266
    .local v1, "item":Lcom/alibaba/android/user/model/PositionData;
    if-eqz v1, :cond_2

    iget-boolean v3, v1, Lcom/alibaba/android/user/model/PositionData;->checked:Z

    if-nez v3, :cond_0

    .line 264
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "item":Lcom/alibaba/android/user/model/PositionData;
    :cond_3
    move-object v1, v2

    .line 271
    goto :goto_0
.end method

.method public final a(I)V
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 247
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;->h:Ljava/util/List;

    if-nez v2, :cond_0

    .line 258
    :goto_0
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 251
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/PositionData;

    .line 252
    .local v1, "item":Lcom/alibaba/android/user/model/PositionData;
    if-eqz v1, :cond_1

    .line 253
    if-ne v0, p1, :cond_2

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, v1, Lcom/alibaba/android/user/model/PositionData;->checked:Z

    .line 250
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 253
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 257
    .end local v1    # "item":Lcom/alibaba/android/user/model/PositionData;
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 226
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;->h:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/model/PositionData;

    .line 227
    .local v1, "item":Lcom/alibaba/android/user/model/PositionData;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;->i:Landroid/app/Activity;

    sget v3, Lezg$j;->item_position_list:I

    invoke-static {v2, p2, p3, v3, p1}, Lcre;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcre;

    move-result-object v0

    .line 231
    .local v0, "holder":Lcre;
    sget v2, Lezg$h;->tv_position_name:I

    invoke-virtual {v0, v2}, Lcre;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/alibaba/android/user/model/PositionData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    sget v2, Lezg$h;->icon_position_checked:I

    invoke-virtual {v0, v2}, Lcre;->a(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1055
    iget-object v2, v0, Lcre;->a:Landroid/view/View;

    .line 234
    new-instance v3, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity$b;Lcom/alibaba/android/user/model/PositionData;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2055
    iget-object v2, v0, Lcre;->a:Landroid/view/View;

    .line 243
    return-object v2
.end method
