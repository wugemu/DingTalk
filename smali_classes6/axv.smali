.class public final Laxv;
.super Laxr;
.source "DingAttachmentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laxr",
        "<",
        "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "createTime"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Laxr;-><init>(Landroid/app/Activity;)V

    .line 24
    iput-object p2, p0, Laxv;->c:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Laxv;->d:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 31
    if-nez p2, :cond_1

    .line 32
    iget-object v1, p0, Laxv;->a:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laxp$g;->ding_attachment_list_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 33
    new-instance v0, Lbik;

    invoke-direct {v0, p2}, Lbik;-><init>(Landroid/view/View;)V

    .line 34
    .local v0, "viewHolder":Lbik;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    :goto_0
    if-ltz p1, :cond_0

    iget-object v1, p0, Laxv;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 45
    :cond_0
    :goto_1
    return-object p2

    .line 36
    .end local v0    # "viewHolder":Lbik;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbik;

    .restart local v0    # "viewHolder":Lbik;
    goto :goto_0

    .line 43
    :cond_2
    iget-object v1, p0, Laxv;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v2, p0, Laxv;->c:Ljava/lang/String;

    iget-object v3, p0, Laxv;->d:Ljava/lang/String;

    .line 1036
    if-eqz v1, :cond_0

    .line 1038
    iget-object v4, v0, Lbik;->a:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    invoke-static {v5}, Lcow;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1040
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1041
    iget-object v4, v0, Lbik;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    :cond_3
    iget-object v3, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1045
    iget-object v3, v0, Lbik;->b:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    :cond_4
    iget-object v3, v0, Lbik;->d:Landroid/widget/TextView;

    iget-wide v4, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    invoke-static {v4, v5}, Lbjk;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1051
    iget-object v1, v0, Lbik;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
