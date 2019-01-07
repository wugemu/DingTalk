.class final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;
.super Ljava/lang/Object;
.source "MailDetailFragment.java"

# interfaces
.implements Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 4
    .param p1, "scale"    # F

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 701
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    :goto_0
    return-void

    .line 705
    :cond_0
    const-string/jumbo v0, ""

    .line 706
    .local v0, "timeStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 707
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v1

    iget-wide v2, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->timeStamp:J

    invoke-static {v2, v3}, Lsc;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 710
    :cond_1
    invoke-static {v0, p1}, Lafe;->a(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 20
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 627
    .local p2, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 631
    .local v6, "index":I
    if-ltz v6, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-lt v6, v0, :cond_3

    .line 632
    :cond_2
    const-string/jumbo v16, "MailDetailFragment"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "onImageClick fail for index: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", can not less than zero or large than urlList size: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 633
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 632
    invoke-static/range {v16 .. v17}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_3
    const/4 v11, 0x0

    .line 638
    .local v11, "resourceAttMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    const/4 v8, 0x0

    .line 639
    .local v8, "localUriMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    .line 640
    .local v15, "targetAttList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->k(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lfk;

    move-result-object v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->k(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lfk;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lfk;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_5

    .line 641
    new-instance v11, Ljava/util/HashMap;

    .end local v11    # "resourceAttMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->k(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lfk;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lfk;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 642
    .restart local v11    # "resourceAttMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    new-instance v8, Ljava/util/HashMap;

    .end local v8    # "localUriMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->k(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lfk;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lfk;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 643
    .restart local v8    # "localUriMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->k(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lfk;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lfk;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 644
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 645
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 646
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 647
    .local v2, "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iget-object v0, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    iget-object v0, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 649
    iget-object v0, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 654
    .end local v2    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_6
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 655
    .local v13, "src":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 659
    const-string/jumbo v17, "cid:"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 661
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, "content":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 665
    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 689
    .end local v3    # "content":Ljava/lang/String;
    .restart local v2    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    :cond_7
    :goto_3
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 666
    .end local v2    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 667
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .restart local v2    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    goto :goto_3

    .line 669
    .end local v2    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    :cond_9
    new-instance v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-direct {v2}, Lcom/alibaba/alimei/sdk/model/AttachmentModel;-><init>()V

    .line 670
    .restart local v2    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iput-object v13, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 671
    const-string/jumbo v17, "file://"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 672
    new-instance v17, Ljava/io/File;

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    goto :goto_3

    .line 673
    :cond_a
    const-string/jumbo v17, "http"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 674
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 675
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v14, ""

    .line 676
    .local v14, "suffix":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 677
    const-string/jumbo v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 678
    .local v10, "pos":I
    if-ltz v10, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_b

    .line 679
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 682
    .end local v10    # "pos":I
    :cond_b
    new-instance v5, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Laeu;->a()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v13}, Laev;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 683
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 685
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    goto/16 :goto_3

    .line 692
    .end local v2    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v5    # "file":Ljava/io/File;
    .end local v9    # "name":Ljava/lang/String;
    .end local v13    # "src":Ljava/lang/String;
    .end local v14    # "suffix":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->l(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Ljava/lang/String;

    move-result-object v12

    .line 693
    .local v12, "serverId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v16

    if-eqz v16, :cond_d

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v12, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    .line 696
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v15, v12, v6}, Lajn;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "finishAll"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 578
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->d(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->d(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a()V

    .line 584
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->c(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->f(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->g(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 591
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    .line 592
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Z)V

    goto :goto_0

    .line 595
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->i(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 596
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    .line 597
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Z)V

    goto :goto_0

    .line 599
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Z)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 612
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxo$i;->dt_cmail_hide_quote:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 617
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxo$i;->dt_cmail_show_quote:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->j(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Z

    move-result v0

    return v0
.end method
