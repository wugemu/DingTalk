.class public Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;
.source "AttachmentHorizontalListPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;,
        Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;
    }
.end annotation


# static fields
.field private static g:Lsd;

.field private static h:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;


# instance fields
.field public a:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

.field private f:Landroid/content/Context;

.field private i:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

.field private j:Z

.field private k:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 29
    iput-object v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    .line 37
    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->j:Z

    .line 38
    iput-object v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->k:Lfp;

    .line 42
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->f:Landroid/content/Context;

    .line 43
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setDividerWidth(I)V

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 46
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setOverScrollMode(I)V

    .line 48
    :cond_0
    return-void
.end method

.method static synthetic a()Lsd;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->g:Lsd;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;)Lfp;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->k:Lfp;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;)Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->i:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    return-object v0
.end method

.method public static setAttachmentImageLoader(Lsd;)V
    .locals 0
    .param p0, "loader"    # Lsd;

    .prologue
    .line 55
    sput-object p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->g:Lsd;

    .line 56
    return-void
.end method

.method public static setOnListAttachmentItemListener(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;)V
    .locals 0
    .param p0, "listAttachmentItemListener"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    .prologue
    .line 67
    sput-object p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->h:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    .line 68
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 72
    .local p2, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    iget-object v4, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->f:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v4, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    if-nez v4, :cond_2

    .line 77
    new-instance v4, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    iget-object v5, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->f:Landroid/content/Context;

    invoke-direct {v4, v5, p0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;-><init>(Landroid/content/Context;Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;)V

    iput-object v4, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    .line 78
    iget-object v4, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    .line 1119
    iput-object p1, v4, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->a:Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    invoke-virtual {p0, p0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 83
    if-eqz p2, :cond_0

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v0, "attList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 86
    .local v2, "model":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    new-instance v3, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;

    invoke-direct {v3, v2}, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;-><init>(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 87
    .local v3, "modelEx":Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;
    iget-object v5, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    invoke-static {v5}, Lse;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "extension":Ljava/lang/String;
    invoke-static {v1}, Lse;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 89
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->setAttachmentType(I)V

    .line 93
    :cond_3
    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    :cond_4
    invoke-static {v1}, Lse;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 91
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->setAttachmentType(I)V

    goto :goto_2

    .line 95
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "model":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v3    # "modelEx":Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;
    :cond_5
    iget-object v4, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    invoke-virtual {v4, v0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    invoke-static {v0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->b(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "mailServerId":Ljava/lang/String;
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;

    .line 186
    .local v6, "attachmentModel":Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;
    if-eqz v6, :cond_0

    .line 189
    invoke-virtual {v6}, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->isImageAttachment()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lacg;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v6, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v0}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->i:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    if-eqz v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->i:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    iget-object v4, v6, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    .line 193
    invoke-virtual {v1}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->d()Ljava/util/List;

    move-result-object v5

    move-object v1, p0

    move v2, p3

    .line 192
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;->a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;ILjava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/util/List;)V

    goto :goto_0

    .line 195
    :cond_3
    sget-object v0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->h:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->h:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    iget-object v4, v6, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    .line 197
    invoke-virtual {v1}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->d()Ljava/util/List;

    move-result-object v5

    move-object v1, p0

    move v2, p3

    .line 196
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;->a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;ILjava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/util/List;)V

    goto :goto_0

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->i:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    if-eqz v0, :cond_5

    .line 202
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->i:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    iget-object v1, v6, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-interface {v0, p0, p3, v3, v1}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;->a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;ILjava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto :goto_0

    .line 204
    :cond_5
    sget-object v0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->h:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->h:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    iget-object v1, v6, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-interface {v0, p0, p3, v3, v1}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;->a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;ILjava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lacg;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 215
    .local v1, "mailServerId":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;

    .line 217
    .local v0, "attachmentModel":Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->i:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->i:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    iget-object v3, v0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-interface {v2, p0, v1, v3}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;->a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 226
    .end local v0    # "attachmentModel":Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;
    .end local v1    # "mailServerId":Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;

    invoke-static {v2}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;->b(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$a;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 220
    .restart local v0    # "attachmentModel":Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;
    .restart local v1    # "mailServerId":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->h:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    if-eqz v2, :cond_0

    .line 221
    sget-object v2, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->h:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    iget-object v3, v0, Lcom/alibaba/alimei/cmail/widget/AttachmentModelEx;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-interface {v2, p0, v1, v3}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;->a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto :goto_1
.end method

.method public setFileSizeTextCache(Lfp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfp",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "cache":Lfp;, "Lfp<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->k:Lfp;

    .line 64
    return-void
.end method

.method public setForMailCompose(Z)V
    .locals 0
    .param p1, "isCompose"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->j:Z

    .line 52
    return-void
.end method

.method public setOnAttachmentLoadListener(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->i:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;

    .line 231
    return-void
.end method

.method public setSelection(I)V
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setSelection(I)V

    .line 279
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->getWidth()I

    move-result v2

    mul-int v1, p1, v2

    .line 280
    .local v1, "positionX":I
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->getWidth()I

    move-result v3

    mul-int v0, v2, v3

    .line 281
    .local v0, "maxWidth":I
    if-gtz v1, :cond_0

    .line 282
    const/4 v1, 0x0

    .line 284
    :cond_0
    if-le v1, v0, :cond_1

    .line 285
    move v1, v0

    .line 287
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->b(I)V

    .line 288
    return-void
.end method
