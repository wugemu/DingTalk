.class final Lacu$b;
.super Ljava/lang/Object;
.source "CMailAllSearchAdapter.java"

# interfaces
.implements Lrs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrs",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lacu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lacu;)V
    .locals 1
    .param p1, "adapter"    # Lacu;

    .prologue
    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lacu$b;->a:Ljava/lang/ref/WeakReference;

    .line 835
    return-void
.end method

.method synthetic constructor <init>(Lacu;B)V
    .locals 0
    .param p1, "x0"    # Lacu;

    .prologue
    .line 829
    invoke-direct {p0, p1}, Lacu$b;-><init>(Lacu;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 843
    sget v0, Laxo$g;->cmail_attach_list:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 848
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/16 v8, 0x32

    .line 829
    check-cast p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;

    .line 2838
    iget-object v0, p0, Lacu$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacu;

    .line 1854
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1855
    :cond_0
    :goto_0
    return-void

    .line 3096
    :cond_1
    iget-object v3, p1, Lrr;->a:Landroid/content/Context;

    .line 1859
    iget-object v1, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v2, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    .line 1860
    const-string/jumbo v1, ""

    .line 1862
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1863
    const-string/jumbo v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1864
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    .line 1865
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1873
    :goto_1
    invoke-static {v1}, Lse;->a(Ljava/lang/String;)Z

    move-result v4

    .line 1874
    invoke-static {v1}, Lse;->c(Ljava/lang/String;)Z

    move-result v5

    .line 1875
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v6

    invoke-virtual {v6, v2, v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1877
    invoke-static {}, Lacg;->f()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v6

    .line 1878
    invoke-interface {v6}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccessToken()Ljava/lang/String;

    move-result-object v6

    .line 1879
    if-eqz v3, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1880
    if-eqz v4, :cond_7

    .line 1881
    iget-object v4, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    sget v1, Laxo$f;->icon:I

    .line 4100
    invoke-virtual {p1, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1881
    check-cast v1, Landroid/widget/ImageView;

    iget-object v5, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {v4, v6, v1, v5}, Laji;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 1902
    :cond_2
    :goto_2
    sget v1, Laxo$f;->date:I

    iget-wide v4, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->date:J

    .line 8096
    iget-object v6, p1, Lrr;->a:Landroid/content/Context;

    .line 1902
    invoke-static {v4, v5, v6}, Lcog;->b(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lrr;->a(ILjava/lang/CharSequence;)Lrr;

    .line 1904
    iget-object v1, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->subject:Ljava/lang/String;

    .line 1908
    if-eqz v2, :cond_3

    .line 1909
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1912
    :cond_3
    if-eqz v1, :cond_4

    .line 1913
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1916
    :cond_4
    invoke-static {v0}, Lacu;->a(Lacu;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4, v8}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1917
    invoke-static {v0}, Lacu;->a(Lacu;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0, v8}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1919
    sget v1, Laxo$f;->name:I

    invoke-virtual {p1, v1, v2}, Lrr;->a(ILjava/lang/CharSequence;)Lrr;

    .line 1920
    sget v1, Laxo$f;->subject:I

    invoke-virtual {p1, v1, v0}, Lrr;->a(ILjava/lang/CharSequence;)Lrr;

    goto/16 :goto_0

    .line 1867
    :cond_5
    const-string/jumbo v1, ""

    goto :goto_1

    .line 1870
    :cond_6
    const-string/jumbo v2, ""

    goto :goto_1

    .line 1882
    :cond_7
    if-eqz v5, :cond_8

    .line 5096
    iget-object v4, p1, Lrr;->a:Landroid/content/Context;

    .line 1883
    iget-object v5, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    sget v1, Laxo$f;->icon:I

    .line 5100
    invoke-virtual {p1, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1884
    check-cast v1, Landroid/widget/ImageView;

    iget-object v7, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 1883
    invoke-static {v4, v5, v6, v1, v7}, Laji;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto :goto_2

    .line 1886
    :cond_8
    sget v4, Laxo$f;->icon:I

    invoke-virtual {p1, v4, v1}, Lrr;->b(II)Lrr;

    goto :goto_2

    .line 1889
    :cond_9
    iget-object v6, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v6}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1890
    if-eqz v4, :cond_a

    .line 1891
    iget-object v4, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    sget v1, Laxo$f;->icon:I

    .line 6100
    invoke-virtual {p1, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1891
    check-cast v1, Landroid/widget/ImageView;

    iget-object v5, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {v4, v7, v1, v5}, Laji;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto :goto_2

    .line 1892
    :cond_a
    if-eqz v5, :cond_b

    .line 7096
    iget-object v4, p1, Lrr;->a:Landroid/content/Context;

    .line 1893
    iget-object v5, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    sget v1, Laxo$f;->icon:I

    .line 7100
    invoke-virtual {p1, v1}, Lrr;->a(I)Landroid/view/View;

    move-result-object v1

    .line 1894
    check-cast v1, Landroid/widget/ImageView;

    iget-object v6, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 1893
    invoke-static {v4, v5, v7, v1, v6}, Laji;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto/16 :goto_2

    .line 1896
    :cond_b
    sget v4, Laxo$f;->icon:I

    invoke-virtual {p1, v4, v1}, Lrr;->b(II)Lrr;

    goto/16 :goto_2

    .line 1899
    :cond_c
    sget v4, Laxo$f;->icon:I

    invoke-virtual {p1, v4, v1}, Lrr;->b(II)Lrr;

    goto/16 :goto_2
.end method
