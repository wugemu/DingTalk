.class public Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "MailboxListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$b;,
        Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e;,
        Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d;,
        Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$c;,
        Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$f;,
        Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field public e:Ljava/lang/String;

.field public f:Lacx;

.field private g:Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lrs;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lrs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 116
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 494
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->h:Ljava/util/Map;

    .line 1085
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->i:Ljava/util/Map;

    .line 117
    iput-object p1, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->a:Landroid/content/Context;

    .line 118
    new-instance v0, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    invoke-direct {v0, v2, v2}, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;-><init>(II)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->g:Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/alibaba/alimei/mail/widget/MailMenuView$d;
    .locals 20
    .param p1, "selectFolder"    # Ljava/lang/Object;

    .prologue
    .line 171
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    if-nez v15, :cond_1

    .line 172
    :cond_0
    new-instance v15, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-direct/range {v15 .. v17}, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;-><init>(II)V

    .line 229
    :goto_0
    return-object v15

    .line 174
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->getGroupCount()I

    move-result v5

    .line 175
    .local v5, "count":I
    const/4 v13, 0x0

    .line 176
    .local v13, "selectPos":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->g:Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    .line 3156
    iget v15, v15, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;->a:I

    if-ltz v15, :cond_5

    const/4 v15, 0x1

    .line 176
    :goto_1
    if-eqz v15, :cond_2

    .line 177
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->g:Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    .line 4144
    iget v13, v15, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;->a:I

    .line 179
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    invoke-interface {v15, v13}, Lacx;->a(I)I

    move-result v14

    .line 180
    .local v14, "startPos":I
    if-lt v14, v5, :cond_3

    .line 181
    const/4 v14, 0x0

    .line 183
    :cond_3
    move v6, v14

    .local v6, "i":I
    :goto_2
    if-ge v6, v5, :cond_a

    .line 184
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v10

    .line 186
    .local v10, "object":Ljava/lang/Object;
    instance-of v15, v10, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-nez v15, :cond_4

    instance-of v15, v10, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v15, :cond_9

    .line 192
    :cond_4
    instance-of v15, v10, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v15, :cond_8

    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v15, :cond_8

    move-object v9, v10

    .line 194
    check-cast v9, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .local v9, "lModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    move-object/from16 v12, p1

    .line 195
    check-cast v12, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 197
    .local v12, "rModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v9}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v16

    invoke-virtual {v12}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-nez v15, :cond_6

    .line 198
    new-instance v15, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-direct {v15, v6, v0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;-><init>(II)V

    goto :goto_0

    .line 3156
    .end local v6    # "i":I
    .end local v9    # "lModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v10    # "object":Ljava/lang/Object;
    .end local v12    # "rModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v14    # "startPos":I
    :cond_5
    const/4 v15, 0x0

    goto :goto_1

    .line 201
    .restart local v6    # "i":I
    .restart local v9    # "lModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .restart local v10    # "object":Ljava/lang/Object;
    .restart local v12    # "rModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .restart local v14    # "startPos":I
    :cond_6
    invoke-virtual {v9}, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasChildren()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 202
    iget-object v4, v9, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 203
    .local v4, "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_9

    .line 206
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 207
    .local v3, "childCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-ge v7, v3, :cond_8

    .line 208
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 209
    .local v2, "child":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v16

    invoke-virtual {v12}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-nez v15, :cond_7

    .line 210
    new-instance v15, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    invoke-direct {v15, v6, v7}, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;-><init>(II)V

    goto/16 :goto_0

    .line 207
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 219
    .end local v2    # "child":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v3    # "childCount":I
    .end local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v7    # "j":I
    .end local v9    # "lModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v12    # "rModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_8
    instance-of v15, v10, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v15, :cond_9

    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v15, :cond_9

    move-object v8, v10

    .line 221
    check-cast v8, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .local v8, "lItem":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    move-object/from16 v11, p1

    .line 222
    check-cast v11, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 223
    .local v11, "rItem":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    iget-object v15, v8, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    iget-object v0, v11, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 224
    new-instance v15, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-direct {v15, v6, v0}, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;-><init>(II)V

    goto/16 :goto_0

    .line 183
    .end local v8    # "lItem":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    .end local v11    # "rItem":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 229
    .end local v10    # "object":Ljava/lang/Object;
    :cond_a
    new-instance v15, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-direct/range {v15 .. v17}, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;-><init>(II)V

    goto/16 :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 245
    :cond_1
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/mail/widget/MailMenuView$d;)V
    .locals 2
    .param p1, "index"    # Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 158
    if-nez p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    iget v0, p1, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;->a:I

    .line 162
    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->g:Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    .line 2144
    iget v1, v1, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;->a:I

    .line 162
    if-ne v0, v1, :cond_2

    .line 2148
    iget v0, p1, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;->b:I

    .line 163
    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->g:Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    .line 3148
    iget v1, v1, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;->b:I

    .line 163
    if-eq v0, v1, :cond_0

    .line 166
    :cond_2
    iput-object p1, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->g:Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    .line 167
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 6
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 345
    iget-object v5, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    if-nez v5, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-object v4

    .line 348
    :cond_1
    iget-object v5, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    invoke-interface {v5}, Lacx;->a()Ljava/util/List;

    move-result-object v1

    .line 349
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 352
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 353
    .local v3, "groupModel":Ljava/lang/Object;
    instance-of v5, v3, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 354
    check-cast v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 355
    .local v2, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v2, :cond_0

    .line 358
    iget-object v0, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 359
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge p2, v5, :cond_0

    .line 363
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 375
    shl-int/lit8 v0, p1, 0x10

    or-int/2addr v0, p2

    int-to-long v0, v0

    return-wide v0
.end method

.method public getChildType(II)I
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 291
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    if-nez v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v3

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    invoke-interface {v2}, Lacx;->a()Ljava/util/List;

    move-result-object v0

    .line 295
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 299
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getChildTypeCount()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 432
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    if-nez v13, :cond_0

    move-object/from16 v4, p4

    .line 484
    .end local p4    # "convertView":Landroid/view/View;
    .local v4, "convertView":Landroid/view/View;
    :goto_0
    return-object v4

    .line 435
    .end local v4    # "convertView":Landroid/view/View;
    .restart local p4    # "convertView":Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    invoke-interface {v13}, Lacx;->a()Ljava/util/List;

    move-result-object v5

    .line 436
    .local v5, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_1
    move-object/from16 v4, p4

    .line 437
    .end local p4    # "convertView":Landroid/view/View;
    .restart local v4    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 439
    .end local v4    # "convertView":Landroid/view/View;
    .restart local p4    # "convertView":Landroid/view/View;
    :cond_2
    move/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 440
    .local v10, "object":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->getChildType(II)I

    move-result v12

    .line 441
    .local v12, "viewType":I
    if-eqz p4, :cond_3

    .line 442
    sget v13, Laxo$f;->base_adapter_view_type:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 443
    .local v11, "oldViewType":I
    if-eq v11, v12, :cond_3

    .line 444
    const/16 p4, 0x0

    .line 449
    .end local v11    # "oldViewType":I
    :cond_3
    if-nez p4, :cond_6

    .line 7087
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->i:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lrs;

    .line 7088
    if-eqz v13, :cond_4

    move-object v2, v13

    .line 451
    .local v2, "absViewHolder":Lrs;
    :goto_1
    invoke-interface {v2}, Lrs;->a()I

    move-result v9

    .line 452
    .local v9, "layoutRes":I
    if-eqz v9, :cond_5

    .line 453
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->a:Landroid/content/Context;

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v13, v0, v9, v1}, Lrr;->a(Landroid/content/Context;Landroid/view/View;II)Lrr;

    move-result-object v3

    .line 7227
    .local v3, "baseAdapterHelper":Lrr;
    :goto_2
    iget-object v0, v3, Lrr;->b:Landroid/view/View;

    move-object/from16 p4, v0

    .line 459
    sget v13, Laxo$f;->base_adapter_holder:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 460
    sget v13, Laxo$f;->base_adapter_view_type:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 466
    .end local v9    # "layoutRes":I
    :goto_3
    instance-of v13, v10, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-nez v13, :cond_7

    move-object/from16 v4, p4

    .line 467
    .end local p4    # "convertView":Landroid/view/View;
    .restart local v4    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 7092
    .end local v2    # "absViewHolder":Lrs;
    .end local v3    # "baseAdapterHelper":Lrr;
    .end local v4    # "convertView":Landroid/view/View;
    .restart local p4    # "convertView":Landroid/view/View;
    :cond_4
    packed-switch v12, :pswitch_data_0

    .line 7097
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->i:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v13

    .line 7098
    goto :goto_1

    .line 7094
    :pswitch_0
    new-instance v13, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$b;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$b;-><init>(Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;)V

    goto :goto_4

    .line 456
    .restart local v2    # "absViewHolder":Lrs;
    .restart local v9    # "layoutRes":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->a:Landroid/content/Context;

    invoke-virtual/range {p5 .. p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-interface {v2, v14}, Lrs;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v13, v0, v14, v1}, Lrr;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;I)Lrr;

    move-result-object v3

    .restart local v3    # "baseAdapterHelper":Lrr;
    goto :goto_2

    .line 462
    .end local v2    # "absViewHolder":Lrs;
    .end local v3    # "baseAdapterHelper":Lrr;
    .end local v9    # "layoutRes":I
    :cond_6
    sget v13, Laxo$f;->base_adapter_holder:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrs;

    .line 463
    .restart local v2    # "absViewHolder":Lrs;
    sget v13, Laxo$f;->base_adapter:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrr;

    .restart local v3    # "baseAdapterHelper":Lrr;
    goto :goto_3

    .line 470
    :cond_7
    check-cast v10, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .end local v10    # "object":Ljava/lang/Object;
    iget-object v6, v10, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 471
    .local v6, "folderList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    move/from16 v0, p2

    if-gt v13, v0, :cond_9

    :cond_8
    move-object/from16 v4, p4

    .line 472
    .end local p4    # "convertView":Landroid/view/View;
    .restart local v4    # "convertView":Landroid/view/View;
    goto/16 :goto_0

    .line 475
    .end local v4    # "convertView":Landroid/view/View;
    .restart local p4    # "convertView":Landroid/view/View;
    :cond_9
    move/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 477
    .local v7, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->b:Ljava/util/Map;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->d:Lcom/alibaba/alimei/sdk/model/FolderModel;

    aput-object v15, v13, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->c:Ljava/util/Map;

    aput-object v15, v13, v14

    invoke-interface {v2, v3, v7, v13}, Lrs;->a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->g:Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->g:Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    .line 8144
    iget v13, v13, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;->a:I

    .line 480
    move/from16 v0, p1

    if-ne v13, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->g:Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    .line 8148
    iget v13, v13, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;->b:I

    .line 481
    move/from16 v0, p2

    if-ne v13, v0, :cond_a

    const/4 v8, 0x1

    .line 482
    .local v8, "isSelected":Z
    :goto_5
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Landroid/view/View;->setActivated(Z)V

    move-object/from16 v4, p4

    .line 484
    .end local p4    # "convertView":Landroid/view/View;
    .restart local v4    # "convertView":Landroid/view/View;
    goto/16 :goto_0

    .line 481
    .end local v4    # "convertView":Landroid/view/View;
    .end local v8    # "isSelected":Z
    .restart local p4    # "convertView":Landroid/view/View;
    :cond_a
    const/4 v8, 0x0

    goto :goto_5

    .line 7092
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getChildrenCount(I)I
    .locals 5
    .param p1, "groupPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 312
    iget-object v4, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    if-nez v4, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v3

    .line 315
    :cond_1
    iget-object v4, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    invoke-interface {v4}, Lacx;->a()Ljava/util/List;

    move-result-object v0

    .line 316
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 319
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 320
    .local v2, "groupModel":Ljava/lang/Object;
    instance-of v4, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 321
    check-cast v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 322
    .local v1, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->childCount()I

    move-result v3

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 3
    .param p1, "groupPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    if-nez v2, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-object v1

    .line 335
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    invoke-interface {v2}, Lacx;->a()Ljava/util/List;

    move-result-object v0

    .line 336
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 340
    .local v1, "groupModel":Ljava/lang/Object;
    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    invoke-interface {v0}, Lacx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 370
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupType(I)I
    .locals 5
    .param p1, "groupPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 258
    iget-object v4, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    if-nez v4, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v3

    .line 261
    :cond_1
    iget-object v4, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    invoke-interface {v4}, Lacx;->a()Ljava/util/List;

    move-result-object v0

    .line 262
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 266
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 267
    .local v2, "object":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 270
    instance-of v4, v2, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 272
    instance-of v4, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v4, :cond_3

    move-object v1, v2

    .line 273
    check-cast v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 274
    .local v1, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasChildren()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 275
    const/4 v3, 0x2

    goto :goto_0

    .line 277
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 278
    .end local v1    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_3
    instance-of v4, v2, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v4, :cond_0

    .line 279
    const/4 v3, 0x3

    goto :goto_0
.end method

.method public getGroupTypeCount()I
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x4

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 386
    iget-object v9, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    if-nez v9, :cond_0

    move-object v2, p3

    .line 426
    .end local p3    # "convertView":Landroid/view/View;
    .local v2, "convertView":Landroid/view/View;
    :goto_0
    return-object v2

    .line 389
    .end local v2    # "convertView":Landroid/view/View;
    .restart local p3    # "convertView":Landroid/view/View;
    :cond_0
    iget-object v9, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->f:Lacx;

    invoke-interface {v9}, Lacx;->a()Ljava/util/List;

    move-result-object v3

    .line 390
    .local v3, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    move-object v2, p3

    .line 391
    .end local p3    # "convertView":Landroid/view/View;
    .restart local v2    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 393
    .end local v2    # "convertView":Landroid/view/View;
    .restart local p3    # "convertView":Landroid/view/View;
    :cond_2
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 394
    .local v6, "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->getGroupType(I)I

    move-result v8

    .line 395
    .local v8, "viewType":I
    if-eqz p3, :cond_3

    .line 396
    sget v9, Laxo$f;->base_adapter_view_type:I

    invoke-virtual {p3, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 397
    .local v7, "oldViewType":I
    if-eq v7, v8, :cond_3

    .line 398
    const/4 p3, 0x0

    .line 403
    .end local v7    # "oldViewType":I
    :cond_3
    if-nez p3, :cond_6

    .line 4496
    iget-object v9, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->h:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lrs;

    .line 4497
    if-eqz v9, :cond_4

    move-object v0, v9

    .line 405
    .local v0, "absViewHolder":Lrs;
    :goto_1
    invoke-interface {v0}, Lrs;->a()I

    move-result v5

    .line 406
    .local v5, "layoutRes":I
    if-eqz v5, :cond_5

    .line 407
    iget-object v9, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->a:Landroid/content/Context;

    invoke-static {v9, p3, v5, p1}, Lrr;->a(Landroid/content/Context;Landroid/view/View;II)Lrr;

    move-result-object v1

    .line 5227
    .local v1, "baseAdapterHelper":Lrr;
    :goto_2
    iget-object p3, v1, Lrr;->b:Landroid/view/View;

    .line 413
    sget v9, Laxo$f;->base_adapter_holder:I

    invoke-virtual {p3, v9, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 414
    sget v9, Laxo$f;->base_adapter_view_type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p3, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 420
    .end local v5    # "layoutRes":I
    :goto_3
    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->b:Ljava/util/Map;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->d:Lcom/alibaba/alimei/sdk/model/FolderModel;

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->c:Ljava/util/Map;

    aput-object v11, v9, v10

    const/4 v10, 0x5

    aput-object p4, v9, v10

    invoke-interface {v0, v1, v6, v9}, Lrs;->a(Lrr;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 422
    iget-object v9, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->g:Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->g:Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    .line 6144
    iget v9, v9, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;->a:I

    .line 422
    if-ne v9, p1, :cond_7

    const/4 v9, -0x1

    iget-object v10, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->g:Lcom/alibaba/alimei/mail/widget/MailMenuView$d;

    .line 6148
    iget v10, v10, Lcom/alibaba/alimei/mail/widget/MailMenuView$d;->b:I

    .line 423
    if-ne v9, v10, :cond_7

    const/4 v4, 0x1

    .line 424
    .local v4, "isSelected":Z
    :goto_4
    invoke-virtual {p3, v4}, Landroid/view/View;->setActivated(Z)V

    move-object v2, p3

    .line 426
    .end local p3    # "convertView":Landroid/view/View;
    .restart local v2    # "convertView":Landroid/view/View;
    goto/16 :goto_0

    .line 4501
    .end local v0    # "absViewHolder":Lrs;
    .end local v1    # "baseAdapterHelper":Lrr;
    .end local v2    # "convertView":Landroid/view/View;
    .end local v4    # "isSelected":Z
    .restart local p3    # "convertView":Landroid/view/View;
    :cond_4
    packed-switch v8, :pswitch_data_0

    .line 4515
    :goto_5
    iget-object v10, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->h:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v9

    .line 4516
    goto :goto_1

    .line 4503
    :pswitch_0
    new-instance v9, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$f;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$f;-><init>(B)V

    goto :goto_5

    .line 4506
    :pswitch_1
    new-instance v9, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$c;

    invoke-direct {v9, p0}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$c;-><init>(Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;)V

    goto :goto_5

    .line 4509
    :pswitch_2
    new-instance v9, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d;

    invoke-direct {v9, p0}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$d;-><init>(Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;)V

    goto :goto_5

    .line 4512
    :pswitch_3
    new-instance v9, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter$e;-><init>(B)V

    goto :goto_5

    .line 410
    .restart local v0    # "absViewHolder":Lrs;
    .restart local v5    # "layoutRes":I
    :cond_5
    iget-object v9, p0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->a:Landroid/content/Context;

    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-interface {v0, v10}, Lrs;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v10

    invoke-static {v9, p3, v10, p1}, Lrr;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;I)Lrr;

    move-result-object v1

    .restart local v1    # "baseAdapterHelper":Lrr;
    goto/16 :goto_2

    .line 416
    .end local v0    # "absViewHolder":Lrs;
    .end local v1    # "baseAdapterHelper":Lrr;
    .end local v5    # "layoutRes":I
    :cond_6
    sget v9, Laxo$f;->base_adapter_holder:I

    invoke-virtual {p3, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrs;

    .line 417
    .restart local v0    # "absViewHolder":Lrs;
    sget v9, Laxo$f;->base_adapter:I

    invoke-virtual {p3, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrr;

    .restart local v1    # "baseAdapterHelper":Lrr;
    goto/16 :goto_3

    .line 423
    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 4501
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 489
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->getChildType(II)I

    move-result v0

    .line 490
    .local v0, "viewType":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
