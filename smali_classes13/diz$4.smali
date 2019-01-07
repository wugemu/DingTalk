.class final Ldiz$4;
.super Ljava/lang/Object;
.source "ChatMessageSender.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldiz;->a(Lcom/alibaba/wukong/im/Message;ZZLjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:J

.field final synthetic e:Lcom/alibaba/wukong/im/Message;

.field final synthetic f:Z

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ldiz;


# direct methods
.method constructor <init>(Ldiz;Ljava/lang/String;ZZJLcom/alibaba/wukong/im/Message;ZLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Ldiz;

    .prologue
    .line 1561
    iput-object p1, p0, Ldiz$4;->h:Ldiz;

    iput-object p2, p0, Ldiz$4;->a:Ljava/lang/String;

    iput-boolean p3, p0, Ldiz$4;->b:Z

    iput-boolean p4, p0, Ldiz$4;->c:Z

    iput-wide p5, p0, Ldiz$4;->d:J

    iput-object p7, p0, Ldiz$4;->e:Lcom/alibaba/wukong/im/Message;

    iput-boolean p8, p0, Ldiz$4;->f:Z

    iput-object p9, p0, Ldiz$4;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const-wide/16 v8, 0x10

    .line 1620
    iget-object v4, p0, Ldiz$4;->e:Lcom/alibaba/wukong/im/Message;

    if-eqz v4, :cond_0

    iget-object v4, p0, Ldiz$4;->e:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1621
    iget-object v4, p0, Ldiz$4;->e:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 1622
    .local v0, "contentType":I
    const-string/jumbo v4, "STATISTICS"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 1623
    .local v2, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    if-ne v0, v3, :cond_4

    .line 1624
    const/16 v4, 0x2b5d

    invoke-interface {v2, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 1629
    .end local v0    # "contentType":I
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_0
    :goto_0
    iget-object v4, p0, Ldiz$4;->h:Ldiz;

    invoke-static {v4}, Ldiz;->b(Ldiz;)Ldkh;

    move-result-object v4

    .line 2021
    iget-object v1, v4, Ldkh;->a:Lcom/alibaba/wukong/im/Conversation;

    .line 1630
    .local v1, "cvs":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v1, :cond_2

    invoke-static {}, Ldjc;->c()Ldjc;

    move-result-object v4

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    .line 2068
    iget-object v6, v4, Ldjc;->a:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v4, v4, Ldjc;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1630
    :goto_1
    if-eqz v3, :cond_2

    .line 1632
    :try_start_0
    const-string/jumbo v3, "408"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1633
    sget v3, Lctk$i;->send_msg_net_error:I

    invoke-static {v3}, Lcms;->a(I)V

    .line 1660
    :cond_1
    :goto_2
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-nez v3, :cond_2

    .line 1661
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "retail_im_msglist_detail_msgfail"

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1668
    :cond_2
    :goto_3
    iget-object v3, p0, Ldiz$4;->h:Ldiz;

    invoke-static {v3}, Ldiz;->a(Ldiz;)Ldiz$a;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1669
    iget-object v3, p0, Ldiz$4;->h:Ldiz;

    invoke-static {v3}, Ldiz;->a(Ldiz;)Ldiz$a;

    move-result-object v3

    iget-object v4, p0, Ldiz$4;->e:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3, v4, p1, p2}, Ldiz$a;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    :cond_3
    return-void

    .line 1625
    .end local v1    # "cvs":Lcom/alibaba/wukong/im/Conversation;
    .restart local v0    # "contentType":I
    .restart local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    :cond_4
    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/16 v4, 0xfb

    if-ne v0, v4, :cond_0

    .line 1626
    :cond_5
    const/16 v4, 0x2b5e

    invoke-interface {v2, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    goto :goto_0

    .line 2068
    .end local v0    # "contentType":I
    .end local v2    # "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    .restart local v1    # "cvs":Lcom/alibaba/wukong/im/Conversation;
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 1634
    :cond_7
    :try_start_1
    const-string/jumbo v3, "101008"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1635
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    .line 1636
    iget-object v3, p0, Ldiz$4;->h:Ldiz;

    sget v4, Lctk$i;->dt_im_newretail_blacklist_send_error:I

    invoke-static {v3, v4}, Ldiz;->a(Ldiz;I)V

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_3

    .line 1638
    :cond_8
    const-string/jumbo v3, "40012"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1640
    const-string/jumbo v3, "101010"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1642
    const-string/jumbo v3, "101021"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1644
    const-string/jumbo v3, "5000002"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1646
    const-string/jumbo v3, "101020"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1647
    sget v3, Lctk$i;->dt_im_video_compress_failed:I

    invoke-static {v3}, Lcms;->a(I)V

    goto/16 :goto_2

    .line 1648
    :cond_9
    const/4 v3, -0x5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1649
    sget v3, Lctk$i;->dt_file_encrypt_error_no_key:I

    invoke-static {v3}, Lcms;->a(I)V

    goto/16 :goto_2

    .line 1650
    :cond_a
    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1651
    sget v3, Lctk$i;->dt_file_encrypt_error_common:I

    invoke-static {v3}, Lcms;->a(I)V

    goto/16 :goto_2

    .line 1652
    :cond_b
    const-string/jumbo v3, "4012071"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1653
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    .line 1654
    iget-object v3, p0, Ldiz$4;->h:Ldiz;

    sget v4, Lctk$i;->dt_im_newretail_dissolve_relationship_send_error:I

    invoke-static {v3, v4}, Ldiz;->a(Ldiz;I)V

    goto/16 :goto_2

    .line 1657
    :cond_c
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public final synthetic onProgress(Ljava/lang/Object;I)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0xfe

    const/16 v2, 0xca

    .line 1561
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 2675
    const/16 v0, 0x64

    if-ne p2, v0, :cond_e

    .line 2676
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0xfb

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 2678
    :cond_0
    iget-object v0, p0, Ldiz$4;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2680
    :try_start_0
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 2682
    invoke-static {v0, p1}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    .line 2683
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_2

    .line 2685
    :try_start_1
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 2690
    :goto_0
    :try_start_2
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v1

    iget-object v3, p0, Ldiz$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ldjv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2691
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 2692
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v3

    .line 2693
    invoke-static {v0, p1}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lhcj;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2695
    invoke-static {}, Ldiz;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Ldiz$4$1;

    invoke-direct {v4, p0, v1, v0, v2}, Ldiz$4$1;-><init>(Ldiz$4;Lcom/alibaba/doraemon/image/ImageMagician;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 2982
    :cond_1
    :goto_1
    return-void

    .line 2686
    :catch_0
    move-exception v2

    .line 2687
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    move-object v2, v1

    goto :goto_0

    .line 2712
    :catch_1
    move-exception v0

    .line 2713
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2716
    :cond_3
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_4

    .line 2718
    iget-object v0, p0, Ldiz$4;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2720
    :try_start_3
    invoke-static {}, Ldiz;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldiz$4$2;

    invoke-direct {v1, p0}, Ldiz$4$2;-><init>(Ldiz$4;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 2733
    :catch_2
    move-exception v0

    .line 2734
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2737
    :cond_4
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x67

    if-eq v0, v1, :cond_5

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0xfd

    if-ne v0, v1, :cond_8

    .line 2738
    :cond_5
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$VideoContent;

    .line 2740
    iget-object v1, p0, Ldiz$4;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2743
    :try_start_4
    invoke-static {v0, p1}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    .line 2744
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v2

    if-nez v2, :cond_7

    .line 2746
    :try_start_5
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v1

    move-object v2, v1

    .line 2751
    :goto_2
    :try_start_6
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v1

    iget-object v3, p0, Ldiz$4;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ldjv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 2754
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v3

    invoke-static {v0, p1}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v4

    .line 2755
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$d;->chat_item_video_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 2756
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lctk$d;->chat_item_video_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x1

    .line 2754
    invoke-virtual {v3, v4, v5, v6, v7}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v3

    .line 2759
    invoke-static {}, Ldiz;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v5, Ldiz$4$3;

    invoke-direct {v5, p0, v1, v3, v2}, Ldiz$4$3;-><init>(Ldiz$4;Lcom/alibaba/doraemon/image/ImageMagician;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 2780
    :cond_6
    :goto_3
    iget-object v1, p0, Ldiz$4;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2782
    :try_start_7
    const-string/jumbo v1, "CACHE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/cache/Cache;

    .line 2783
    invoke-static {}, Ldiz;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Ldiz$4$4;

    invoke-direct {v3, p0, v1, v0, p1}, Ldiz$4$4;-><init>(Ldiz$4;Lcom/alibaba/doraemon/cache/Cache;Lcom/alibaba/wukong/im/MessageContent$VideoContent;Lcom/alibaba/wukong/im/Message;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 2813
    :catch_3
    move-exception v0

    .line 2814
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 2747
    :catch_4
    move-exception v2

    .line 2748
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_7
    move-object v2, v1

    goto/16 :goto_2

    .line 2776
    :catch_5
    move-exception v1

    .line 2777
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 2817
    :cond_8
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    if-eq v0, v2, :cond_9

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    if-ne v0, v3, :cond_c

    .line 2818
    :cond_9
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .line 2820
    iget-object v1, p0, Ldiz$4;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2823
    :try_start_9
    invoke-static {v0, p1}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    .line 2824
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    move-result v2

    if-nez v2, :cond_b

    .line 2826
    :try_start_a
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    move-result-object v1

    move-object v2, v1

    .line 2831
    :goto_4
    :try_start_b
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v1

    iget-object v3, p0, Ldiz$4;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ldjv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 2834
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v3

    invoke-static {v0, p1}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v4

    .line 2835
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$d;->chat_item_video_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 2836
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lctk$d;->chat_item_video_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x1

    .line 2834
    invoke-virtual {v3, v4, v5, v6, v7}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v3

    .line 2839
    invoke-static {}, Ldiz;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v5, Ldiz$4$5;

    invoke-direct {v5, p0, v1, v3, v2}, Ldiz$4$5;-><init>(Ldiz$4;Lcom/alibaba/doraemon/image/ImageMagician;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 2860
    :cond_a
    :goto_5
    iget-object v1, p0, Ldiz$4;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2862
    :try_start_c
    const-string/jumbo v1, "CACHE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/cache/Cache;

    .line 2863
    invoke-static {}, Ldiz;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Ldiz$4$6;

    invoke-direct {v3, p0, v1, v0, p1}, Ldiz$4$6;-><init>(Ldiz$4;Lcom/alibaba/doraemon/cache/Cache;Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;Lcom/alibaba/wukong/im/Message;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_1

    .line 2893
    :catch_6
    move-exception v0

    .line 2894
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 2827
    :catch_7
    move-exception v2

    .line 2828
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    :cond_b
    move-object v2, v1

    goto/16 :goto_4

    .line 2856
    :catch_8
    move-exception v1

    .line 2857
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 2897
    :cond_c
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_1

    .line 2899
    iget-object v0, p0, Ldiz$4;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2901
    :try_start_e
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$GeoContent;

    .line 2903
    invoke-static {v0, p1}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    .line 2904
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    move-result v2

    if-nez v2, :cond_d

    .line 2906
    :try_start_f
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    move-result-object v1

    move-object v2, v1

    .line 2911
    :goto_6
    :try_start_10
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v1

    iget-object v3, p0, Ldiz$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ldjv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2912
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 2913
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v3

    .line 2914
    invoke-static {v0, p1}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lhcj;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2916
    invoke-static {}, Ldiz;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Ldiz$4$7;

    invoke-direct {v4, p0, v1, v0, v2}, Ldiz$4$7;-><init>(Ldiz$4;Lcom/alibaba/doraemon/image/ImageMagician;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    goto/16 :goto_1

    .line 2932
    :catch_9
    move-exception v0

    .line 2933
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 2907
    :catch_a
    move-exception v2

    .line 2908
    :try_start_11
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    :cond_d
    move-object v2, v1

    goto :goto_6

    .line 2937
    :cond_e
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_10

    .line 2938
    iget-object v0, p0, Ldiz$4;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2940
    :try_start_12
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 2942
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->picUrl()Ljava/lang/String;

    move-result-object v1

    .line 2943
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    move-result v2

    if-nez v2, :cond_f

    .line 2945
    :try_start_13
    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    move-result-object v1

    move-object v2, v1

    .line 2950
    :goto_7
    :try_start_14
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v1

    iget-object v3, p0, Ldiz$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ldjv;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2951
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 2952
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v3

    .line 2953
    invoke-static {v0, p1}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lhcj;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2955
    invoke-static {}, Ldiz;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Ldiz$4$8;

    invoke-direct {v4, p0, v1, v0, v2}, Ldiz$4$8;-><init>(Ldiz$4;Lcom/alibaba/doraemon/image/ImageMagician;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    goto/16 :goto_1

    .line 2972
    :catch_b
    move-exception v0

    .line 2973
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 2946
    :catch_c
    move-exception v2

    .line 2947
    :try_start_15
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    :cond_f
    move-object v2, v1

    goto :goto_7

    .line 2977
    :cond_10
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    if-eq v0, v2, :cond_11

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    if-ne v0, v3, :cond_13

    .line 2979
    :cond_11
    iget-object v0, p0, Ldiz$4;->h:Ldiz;

    invoke-static {v0}, Ldiz;->a(Ldiz;)Ldiz$a;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2980
    iget-object v0, p0, Ldiz$4;->h:Ldiz;

    invoke-static {v0}, Ldiz;->a(Ldiz;)Ldiz$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldiz$a;->a(Lcom/alibaba/wukong/im/Message;I)V

    .line 2982
    :cond_12
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lebl;->a(JI)V

    goto/16 :goto_1

    .line 2983
    :cond_13
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x1f6

    if-eq v0, v1, :cond_14

    .line 2984
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_14

    .line 2985
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    const/16 v1, 0x1f5

    if-ne v0, v1, :cond_1

    .line 2987
    :cond_14
    iget-object v0, p0, Ldiz$4;->h:Ldiz;

    invoke-static {v0}, Ldiz;->a(Ldiz;)Ldiz$a;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2988
    iget-object v0, p0, Ldiz$4;->h:Ldiz;

    invoke-static {v0}, Ldiz;->a(Ldiz;)Ldiz$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ldiz$a;->a(Lcom/alibaba/wukong/im/Message;I)V

    .line 2991
    :cond_15
    invoke-static {}, Lebl;->a()Lebl;

    move-result-object v0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p2}, Lebl;->a(JI)V

    goto/16 :goto_1
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1561
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 3564
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    .line 3565
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 3566
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 3570
    const-string/jumbo v1, "sendText"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineDurationStatistics(Ljava/lang/String;)V

    .line 3571
    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "sendText"

    const-string/jumbo v3, "totalTime"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3603
    :cond_0
    :goto_0
    iget-boolean v0, p0, Ldiz$4;->b:Z

    if-eqz v0, :cond_1

    .line 3604
    iget-object v0, p0, Ldiz$4;->h:Ldiz;

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ldiz;->a(Ldiz;J)V

    .line 3607
    :cond_1
    iget-boolean v0, p0, Ldiz$4;->c:Z

    if-eqz v0, :cond_2

    .line 3608
    const-wide v0, 0x1027127dc00L

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Ldiz$4;->d:J

    sub-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lcom/alibaba/wukong/im/Message;->updatePrivateTag(J)V

    .line 3611
    :cond_2
    invoke-static {}, Lder;->a()Lder;

    invoke-static {p1}, Lder;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 3613
    iget-object v0, p0, Ldiz$4;->h:Ldiz;

    invoke-static {v0}, Ldiz;->a(Ldiz;)Ldiz$a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3614
    iget-object v0, p0, Ldiz$4;->h:Ldiz;

    invoke-static {v0}, Ldiz;->a(Ldiz;)Ldiz$a;

    move-result-object v0

    invoke-interface {v0, p1}, Ldiz$a;->a(Lcom/alibaba/wukong/im/Message;)V

    .line 1561
    :cond_3
    return-void

    .line 3573
    :cond_4
    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/16 v2, 0xfc

    if-ne v1, v2, :cond_7

    .line 3576
    :cond_5
    iget-object v0, p0, Ldiz$4;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3578
    :try_start_0
    const-string/jumbo v0, "AUDIOEX"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    .line 3579
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 3580
    invoke-static {v1, p1}, Ldiq;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    .line 3581
    iget-object v2, p0, Ldiz$4;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/doraemon/audio/opus/Utils;->isOpusFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3582
    iget-object v2, p0, Ldiz$4;->a:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;->OPUS_OGG:Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/doraemon/audio/AudioMagicianEx;->update2RemoteUrl(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3587
    :catch_0
    move-exception v0

    .line 3588
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3584
    :cond_6
    :try_start_1
    iget-object v2, p0, Ldiz$4;->a:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;->COMMON:Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;

    invoke-interface {v0, v2, v1, v3}, Lcom/alibaba/doraemon/audio/AudioMagicianEx;->update2RemoteUrl(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/audio/AudioMagicianEx$CustomMediaType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3592
    :cond_7
    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    const/16 v2, 0xfb

    if-ne v1, v2, :cond_0

    .line 3596
    :cond_8
    const-string/jumbo v1, "sendImage"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineDurationStatistics(Ljava/lang/String;)V

    .line 3598
    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "sendImage"

    const-string/jumbo v3, "totalTime"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->endDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
