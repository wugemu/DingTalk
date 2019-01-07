.class public final Lafh;
.super Ljava/lang/Object;
.source "MailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafh$a;,
        Lafh$b;
    }
.end annotation


# static fields
.field static a:Landroid/content/Context;

.field private static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    sput-object v0, Lafh;->b:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u56de\u590d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lafh;->b:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u7b54\u590d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lafh;->b:Ljava/util/ArrayList;

    const-string/jumbo v1, "re"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lafh;->b:Ljava/util/ArrayList;

    const-string/jumbo v1, "reply"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lafh;->b:Ljava/util/ArrayList;

    const-string/jumbo v1, "\u8f6c\u53d1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lafh;->b:Ljava/util/ArrayList;

    const-string/jumbo v1, "fwd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lafh;->b:Ljava/util/ArrayList;

    const-string/jumbo v1, "fw"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lafh;->b:Ljava/util/ArrayList;

    const-string/jumbo v1, "forward"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lafh;->a:Landroid/content/Context;

    .line 934
    const-string/jumbo v0, "(?i)http|https://"

    .line 935
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lafh;->c:Ljava/util/regex/Pattern;

    .line 934
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1307
    return-void
.end method

.method public static a(Z)I
    .locals 1
    .param p0, "isSSL"    # Z

    .prologue
    .line 1080
    if-eqz p0, :cond_0

    const/16 v0, 0x3e1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8f

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;I)Lafh$b;
    .locals 14
    .param p0, "msg"    # Lcom/alibaba/wukong/im/Message;
    .param p1, "editMode"    # I

    .prologue
    const/4 v13, 0x1

    .line 623
    new-instance v6, Lafh$b;

    invoke-direct {v6}, Lafh$b;-><init>()V

    .line 625
    .local v6, "mmc":Lafh$b;
    new-instance v8, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 626
    .local v8, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    .line 627
    .local v1, "content":Lcom/alibaba/wukong/im/MessageContent;
    if-nez v1, :cond_0

    .line 774
    .end local p0    # "msg":Lcom/alibaba/wukong/im/Message;
    :goto_0
    return-object v6

    .line 629
    .restart local p0    # "msg":Lcom/alibaba/wukong/im/Message;
    :cond_0
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 770
    sget v9, Laxo$i;->and_lst_msg_tip_error:I

    invoke-static {v9}, Lafh;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 773
    .end local p0    # "msg":Lcom/alibaba/wukong/im/Message;
    :cond_1
    :goto_1
    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lafh$b;->b:Ljava/lang/String;

    goto :goto_0

    .restart local p0    # "msg":Lcom/alibaba/wukong/im/Message;
    :sswitch_0
    move-object v7, v1

    .line 631
    check-cast v7, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 632
    .local v7, "msgText":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 633
    invoke-interface {v7}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v10

    invoke-static {v9, v10}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 639
    .end local v7    # "msgText":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    :sswitch_1
    invoke-static {p0}, Lafh;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 640
    sget v9, Laxo$i;->dt_mail_message_content_magic_emotion:I

    invoke-static {v9}, Lafh;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 642
    :cond_2
    if-ne p1, v13, :cond_4

    .line 5227
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "dtmail_image_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6072
    .local v2, "contentId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 6075
    iput-object v2, v6, Lafh$b;->f:Ljava/lang/String;

    .line 645
    :cond_3
    sget v9, Laxo$i;->and_lst_msg_tip_pic:I

    invoke-static {v9}, Lafh;->b(I)Ljava/lang/String;

    move-result-object v9

    .line 6091
    const-string/jumbo v10, "<div><img src=\"cid:%s\" style=\"max-width:85%%;max-height:800px\" dealed=\"true\" alt=\"%s\"/></div>"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    aput-object v9, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 645
    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 649
    .end local v2    # "contentId":Ljava/lang/String;
    :goto_2
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 650
    .local v4, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    if-eqz v4, :cond_1

    .line 651
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 652
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lafh$b;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 647
    .end local v4    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    :cond_4
    sget v9, Laxo$i;->and_lst_msg_tip_pic:I

    invoke-static {v9}, Lafh;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 660
    :sswitch_2
    sget v9, Laxo$i;->and_lst_msg_tip_voice:I

    invoke-static {v9}, Lafh;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 664
    :sswitch_3
    sget v9, Laxo$i;->and_search_type_link:I

    invoke-static {v9}, Lafh;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 665
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 666
    .local v5, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    if-eqz v5, :cond_1

    .line 667
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->text()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 672
    .end local v5    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    :sswitch_4
    sget v9, Laxo$i;->and_lst_msg_tip_file:I

    invoke-static {v9}, Lafh;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 673
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/MessageContent$FileContent;

    .line 674
    .local v3, "fileContent":Lcom/alibaba/wukong/im/MessageContent$FileContent;
    if-eqz v3, :cond_1

    .line 675
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 676
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->url()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 677
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->url()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lafh$b;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 683
    .end local v3    # "fileContent":Lcom/alibaba/wukong/im/MessageContent$FileContent;
    :sswitch_5
    sget-object v9, Lafh;->a:Landroid/content/Context;

    sget v10, Laxo$i;->dt_cspace_entrypt_file_type_file:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lafh;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 688
    :sswitch_6
    sget v9, Laxo$i;->and_search_cloud_file:I

    invoke-static {v9}, Lafh;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 7062
    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v9

    if-eqz v9, :cond_5

    instance-of v9, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v9, :cond_5

    .line 7063
    check-cast p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p0    # "msg":Lcom/alibaba/wukong/im/Message;
    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 7064
    if-eqz v9, :cond_5

    instance-of v10, v9, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v10, :cond_5

    .line 7065
    iput-boolean v13, v6, Lafh$b;->c:Z

    .line 7066
    check-cast v9, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object v9, v6, Lafh$b;->e:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 690
    :cond_5
    iget-boolean v9, v6, Lafh$b;->c:Z

    if-eqz v9, :cond_1

    iget-object v9, v6, Lafh$b;->e:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v9, :cond_1

    .line 691
    iget-object v9, v6, Lafh$b;->e:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v9, v9, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 696
    .restart local p0    # "msg":Lcom/alibaba/wukong/im/Message;
    :sswitch_7
    sget v9, Laxo$i;->and_lst_msg_tip_mail:I

    invoke-static {v9}, Lafh;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 702
    :sswitch_8
    sget v9, Laxo$i;->and_lst_msg_tip_namecard:I

    invoke-static {v9}, Lafh;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 707
    :sswitch_9
    const-string/jumbo v9, "[OA]"

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 711
    :sswitch_a
    sget v9, Laxo$i;->and_lst_msg_tip_group_announce:I

    invoke-static {v9}, Lafh;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 716
    :sswitch_b
    sget v9, Laxo$i;->and_lst_msg_tip_video:I

    invoke-static {v9}, Lafh;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 720
    :sswitch_c
    sget v9, Laxo$i;->and_lst_msg_tip_gis:I

    invoke-static {v9}, Lafh;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 725
    :sswitch_d
    sget v9, Laxo$i;->and_lst_msg_tip_video:I

    invoke-static {v9}, Lafh;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 729
    :sswitch_e
    sget-object v9, Lafh;->a:Landroid/content/Context;

    sget v10, Laxo$i;->dt_cspace_entrypt_file_type_amr:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lafh;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 733
    :sswitch_f
    sget-object v9, Lafh;->a:Landroid/content/Context;

    sget v10, Laxo$i;->dt_cspace_entrypt_file_type_image:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lafh;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 734
    instance-of v9, v1, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    if-eqz v9, :cond_1

    move-object v4, v1

    .line 735
    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    .line 736
    .local v4, "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->spaceId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->fileType()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lafh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "cacheKey":Ljava/lang/String;
    iput-object v0, v6, Lafh$b;->d:Ljava/lang/String;

    .line 738
    iput-boolean v13, v6, Lafh$b;->c:Z

    goto/16 :goto_1

    .line 745
    .end local v0    # "cacheKey":Ljava/lang/String;
    .end local v4    # "imageContent":Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;
    :sswitch_10
    sget-object v9, Lafh;->a:Landroid/content/Context;

    sget v10, Laxo$i;->dt_cspace_entrypt_file_type_vedio:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lafh;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 755
    :sswitch_11
    sget v9, Laxo$i;->and_lst_msg_tip_lucky_money:I

    invoke-static {v9}, Lafh;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 759
    :sswitch_12
    sget v9, Laxo$i;->and_lst_msg_tip_enterprise_lucky_money:I

    invoke-static {v9}, Lafh;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 763
    :sswitch_13
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 767
    :sswitch_14
    sget v9, Laxo$i;->dt_im_lst_msg_live_card_record:I

    invoke-static {v9}, Lafh;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_1

    .line 629
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x65 -> :sswitch_8
        0x66 -> :sswitch_3
        0x67 -> :sswitch_b
        0x68 -> :sswitch_c
        0xc9 -> :sswitch_8
        0xca -> :sswitch_d
        0xcb -> :sswitch_f
        0xcc -> :sswitch_e
        0xcd -> :sswitch_10
        0xce -> :sswitch_10
        0xfb -> :sswitch_1
        0xfc -> :sswitch_2
        0xfd -> :sswitch_b
        0xfe -> :sswitch_d
        0x12c -> :sswitch_9
        0x12d -> :sswitch_9
        0x190 -> :sswitch_7
        0x1f4 -> :sswitch_6
        0x1f5 -> :sswitch_6
        0x1f6 -> :sswitch_5
        0x258 -> :sswitch_8
        0x2bc -> :sswitch_a
        0x384 -> :sswitch_12
        0x385 -> :sswitch_11
        0x386 -> :sswitch_11
        0x387 -> :sswitch_11
        0x388 -> :sswitch_11
        0x389 -> :sswitch_11
        0x38a -> :sswitch_11
        0x38b -> :sswitch_11
        0x640 -> :sswitch_13
        0x960 -> :sswitch_14
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .locals 8
    .param p0, "localPath"    # Ljava/lang/String;
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 1232
    const-wide/16 v4, 0x0

    .line 1233
    .local v4, "size":J
    const-string/jumbo v2, ""

    .line 1234
    .local v2, "name":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 1235
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1236
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 1237
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1239
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    .line 1240
    const-wide/32 v4, 0x3200001

    .line 1242
    :cond_1
    new-instance v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/AttachmentModel;-><init>()V

    .line 1243
    .local v0, "attachment":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    .line 1244
    iput-object p0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 1245
    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    .line 1247
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/doraemon/utils/UrlUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1250
    iput-object p1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    .line 1251
    const/4 v3, 0x1

    iput v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentType:I

    .line 1253
    :cond_2
    return-object v0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .locals 2

    .prologue
    .line 425
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 427
    .local v0, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;
    .locals 4
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "detailModel"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    const/4 v1, 0x0

    .line 1207
    if-nez p1, :cond_0

    move-object v0, v1

    .line 1223
    :goto_0
    return-object v0

    .line 1210
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;-><init>()V

    .line 1211
    .local v0, "chatFloatDialogDo":Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;
    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->title:Ljava/lang/String;

    .line 1212
    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->snippet:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->description:Ljava/lang/String;

    .line 1214
    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1215
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxo$i;->mail_no_subject:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->title:Ljava/lang/String;

    .line 1217
    :cond_1
    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1218
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Laxo$i;->mail_no_content:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->description:Ljava/lang/String;

    .line 1220
    :cond_2
    sget v2, Laxo$e;->mail_login_icon:I

    iput v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->iconResId:I

    .line 1221
    invoke-static {p1, v1}, Lafh;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->sendMsgObject:Landroid/os/Parcelable;

    .line 1222
    const-class v1, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/FloatDialogDo;->clazz:Ljava/lang/Class;

    goto :goto_0
.end method

.method public static a(Lagz;Lcom/alibaba/alimei/sdk/model/AddressModel;)Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    .locals 8
    .param p0, "newMailModel"    # Lagz;
    .param p1, "sender"    # Lcom/alibaba/alimei/sdk/model/AddressModel;

    .prologue
    .line 1129
    if-nez p0, :cond_1

    .line 1130
    const/4 v0, 0x0

    .line 1178
    :cond_0
    :goto_0
    return-object v0

    .line 1132
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;-><init>()V

    .line 1133
    .local v0, "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    if-eqz p1, :cond_2

    .line 1134
    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailAuthor:Ljava/lang/String;

    .line 1135
    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailAddress:Ljava/lang/String;

    .line 1137
    :cond_2
    iget-object v4, p0, Lagz;->r:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailContent:Ljava/lang/String;

    .line 1138
    iget-object v4, p0, Lagz;->g:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailTitle:Ljava/lang/String;

    .line 1140
    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailAddress:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->msgSenderAddress:Ljava/lang/String;

    .line 1141
    iget-wide v4, p0, Lagz;->b:J

    iput-wide v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailLocalId:J

    .line 1142
    iget-object v4, p0, Lagz;->c:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailLocalUUID:Ljava/lang/String;

    .line 1144
    iget-object v1, p0, Lagz;->h:Ljava/lang/String;

    .line 1145
    .local v1, "snippetContent":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 1146
    iget-object v1, p0, Lagz;->i:Ljava/lang/String;

    .line 1149
    :cond_3
    if-eqz v1, :cond_5

    .line 1150
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 1151
    .local v2, "span":Landroid/text/Spanned;
    if-eqz v2, :cond_4

    .line 1152
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1155
    :cond_4
    sget-object v4, Lagy;->a:Lagy;

    .line 9051
    iget v3, v4, Lagy;->d:I

    .line 1157
    .local v3, "targetSize":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_5

    .line 1158
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1161
    .end local v2    # "span":Landroid/text/Spanned;
    .end local v3    # "targetSize":I
    :cond_5
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailContent:Ljava/lang/String;

    .line 1164
    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailContent:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1165
    sget-object v4, Lafh;->a:Landroid/content/Context;

    sget v5, Laxo$i;->mail_no_content:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailContent:Ljava/lang/String;

    .line 1167
    :cond_6
    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1168
    sget-object v4, Lafh;->a:Landroid/content/Context;

    sget v5, Laxo$i;->mail_no_subject:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailTitle:Ljava/lang/String;

    .line 1170
    :cond_7
    iget-wide v4, p0, Lagz;->j:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_9

    iget-wide v4, p0, Lagz;->j:J

    :goto_1
    iput-wide v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailDate:J

    .line 1171
    iget-object v4, p0, Lagz;->p:Ljava/util/List;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lagz;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 1172
    iget v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailFileCount:I

    iget-object v5, p0, Lagz;->p:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailFileCount:I

    .line 1174
    :cond_8
    iget-object v4, p0, Lagz;->q:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lagz;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1175
    iget v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailFileCount:I

    iget-object v5, p0, Lagz;->q:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailFileCount:I

    goto/16 :goto_0

    .line 1170
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_1
.end method

.method public static a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 1098
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1099
    :cond_0
    const/4 v0, 0x0

    .line 1125
    :goto_0
    return-object v0

    .line 1101
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;-><init>()V

    .line 1102
    .local v0, "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailId:Ljava/lang/String;

    .line 1103
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getFrom()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 1104
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-eqz v1, :cond_2

    .line 1105
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailAuthor:Ljava/lang/String;

    .line 1106
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailAddress:Ljava/lang/String;

    .line 1108
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->snippet:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailContent:Ljava/lang/String;

    .line 1109
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailMessageID:Ljava/lang/String;

    .line 1110
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailTitle:Ljava/lang/String;

    .line 1111
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->messageId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailMessageID:Ljava/lang/String;

    .line 1113
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->chatMsgSender:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->msgSenderAddress:Ljava/lang/String;

    .line 1114
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->chatMailReceiver:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailReceiverEmail:Ljava/lang/String;

    .line 1117
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1118
    sget-object v1, Lafh;->a:Landroid/content/Context;

    sget v2, Laxo$i;->mail_no_content:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailContent:Ljava/lang/String;

    .line 1120
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1121
    sget-object v1, Lafh;->a:Landroid/content/Context;

    sget v2, Laxo$i;->mail_no_subject:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailTitle:Ljava/lang/String;

    .line 1123
    :cond_4
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailDate:J

    .line 1124
    invoke-static {p1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailAttachmentNumber(Ljava/lang/String;Z)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailFileCount:I

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 24
    .param p0, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .param p1, "mailServerId"    # Ljava/lang/String;

    .prologue
    .line 266
    new-instance v23, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct/range {v23 .. v23}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 3246
    .local v23, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 267
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "accessToken":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Luh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 270
    .local v7, "picExtension":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 271
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 272
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    .line 4238
    invoke-static/range {p0 .. p0}, Lafv;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Ljava/io/File;

    move-result-object v22

    .line 273
    .local v22, "file":Ljava/io/File;
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    .line 275
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 276
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    .line 303
    .end local v22    # "file":Ljava/io/File;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Luh;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    .line 304
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    move-object/from16 v0, v23

    iput-wide v4, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    .line 306
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 307
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 309
    :cond_0
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v4, "space_transfer_src"

    const-string/jumbo v5, "mail"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v4, "favorite_enter_hide"

    const-string/jumbo v5, "true"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .end local v7    # "picExtension":Ljava/lang/String;
    :cond_1
    return-object v23

    .line 278
    .restart local v7    # "picExtension":Ljava/lang/String;
    .restart local v22    # "file":Ljava/io/File;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    goto :goto_0

    .line 283
    .end local v22    # "file":Ljava/io/File;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    goto :goto_0

    .line 288
    :cond_4
    const/16 v9, 0x316

    .line 289
    .local v9, "bigW":I
    const/16 v10, 0x316

    .line 290
    .local v10, "bigH":I
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v21

    .line 291
    .local v21, "context":Landroid/content/Context;
    if-eqz v21, :cond_5

    .line 292
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v9, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 293
    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v10, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 295
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lafh;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->originUrl:Ljava/lang/String;

    .line 296
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->bizType:Ljava/lang/String;

    const/16 v11, 0x5a

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v11}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateMailImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->bigUrl:Ljava/lang/String;

    .line 299
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->bizType:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x100

    const/16 v19, 0x100

    const/16 v20, 0x3c

    move-object v12, v3

    move-object/from16 v13, p1

    move-object/from16 v16, v7

    invoke-static/range {v11 .. v20}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateMailImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2
    .param p0, "resId"    # I

    .prologue
    .line 582
    if-lez p0, :cond_0

    .line 583
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 584
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 585
    sget-object v1, Lafh;->a:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 586
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 588
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 590
    .end local v0    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 6
    .param p0, "mDisplayOid"    # J

    .prologue
    .line 405
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-eqz v3, :cond_1

    .line 407
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 408
    .local v2, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 409
    .local v1, "orgObject":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 410
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 411
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    .line 412
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    .line 417
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v1    # "orgObject":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    .end local v2    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :goto_0
    return-object v3

    :cond_1
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public static a(JJ)Ljava/lang/String;
    .locals 6
    .param p0, "uid1"    # J
    .param p2, "uid2"    # J

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    const-wide/32 v0, 0x28687

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 119
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string/jumbo v1, ":"

    aput-object v1, v0, v3

    const-string/jumbo v1, "165511"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "165511"

    aput-object v1, v0, v2

    const-string/jumbo v1, ":"

    aput-object v1, v0, v3

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "send"    # Z

    .prologue
    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    if-eqz p0, :cond_5

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 134
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 159
    :cond_0
    :goto_0
    return-object v7

    .line 138
    :cond_1
    const-string/jumbo v0, "calendar"

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v5, "3"

    .line 2246
    .local v5, "fileType":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 139
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "accessToken":Ljava/lang/String;
    if-eqz p0, :cond_5

    if-eqz v1, :cond_5

    .line 141
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 142
    if-eqz p2, :cond_3

    .line 143
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    invoke-static {v0}, Lse;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "extension":Ljava/lang/String;
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateMailAttachmentDownloadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "url":Ljava/lang/String;
    invoke-static {v6}, Lse;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v7, v0, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "&."

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object v6, v0, v2

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 138
    .end local v1    # "accessToken":Ljava/lang/String;
    .end local v5    # "fileType":Ljava/lang/String;
    .end local v6    # "extension":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "0"

    goto :goto_1

    .line 152
    .restart local v1    # "accessToken":Ljava/lang/String;
    .restart local v5    # "fileType":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateMailAttachmentDownloadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "&filename="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "&from=mail"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 155
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    goto/16 :goto_0

    .line 159
    .end local v1    # "accessToken":Ljava/lang/String;
    .end local v5    # "fileType":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Ljava/lang/String;
    .locals 6
    .param p0, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    const/4 v0, 0x0

    .line 323
    if-eqz p0, :cond_0

    .line 324
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-object v0

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 328
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    goto :goto_0

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 330
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    goto :goto_0

    .line 333
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->dingTalkId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->dingTalkId:Ljava/lang/String;

    invoke-static {v0}, Lacn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 6
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    const/4 v0, 0x0

    .line 342
    if-eqz p0, :cond_0

    .line 343
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    if-eqz v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-object v0

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgEmail:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 347
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgEmail:Ljava/lang/String;

    goto :goto_0

    .line 348
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 349
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    goto :goto_0

    .line 352
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    invoke-static {v0}, Lacn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 387
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    .line 388
    .local v3, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v3, :cond_3

    .line 389
    iget-object v1, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 390
    .local v1, "orgEmployees":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 391
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 392
    .local v0, "employee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    invoke-static {v5, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAuthEmail:Ljava/lang/String;

    .line 393
    invoke-static {v5, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 394
    :cond_1
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    .line 395
    .local v2, "orgName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v2, ""

    .line 401
    .end local v0    # "employee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v1    # "orgEmployees":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    .end local v2    # "orgName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "subject"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 239
    const-string/jumbo v0, ""

    .line 240
    .local v0, "appendInfo":Ljava/lang/String;
    const/4 v1, 0x1

    .line 241
    .local v1, "isAppend":Z
    if-ne p1, v2, :cond_1

    .line 242
    sget-object v3, Lafh;->a:Landroid/content/Context;

    sget v4, Laxo$i;->message_re:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 250
    .local v2, "isstartwith":Z
    :goto_1
    if-eqz v2, :cond_4

    .line 251
    const/4 v1, 0x0

    .line 255
    :goto_2
    if-eqz v1, :cond_0

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 258
    .end local p0    # "subject":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 243
    .end local v2    # "isstartwith":Z
    .restart local p0    # "subject":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 244
    sget-object v3, Lafh;->a:Landroid/content/Context;

    sget v4, Laxo$i;->message_fwd:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 249
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 3185
    .restart local v2    # "isstartwith":Z
    :cond_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3188
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 3190
    packed-switch p1, :pswitch_data_0

    move-object v3, v5

    .line 3202
    :goto_3
    if-eqz v3, :cond_6

    .line 3204
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3207
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "\uff1a"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3208
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 3209
    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 3210
    if-nez v9, :cond_7

    .line 3218
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3219
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 3220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 3222
    if-ge v3, v4, :cond_8

    .line 3223
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 253
    :cond_6
    :goto_5
    goto/16 :goto_2

    .line 3192
    :pswitch_0
    sget-object v3, Lafh;->b:Ljava/util/ArrayList;

    goto :goto_3

    .line 3196
    :pswitch_1
    sget-object v3, Lafh;->b:Ljava/util/ArrayList;

    goto :goto_3

    .line 3213
    :cond_7
    if-nez v8, :cond_5

    move-object v3, v4

    .line 3215
    goto :goto_4

    .line 3224
    :cond_8
    if-ne v3, v4, :cond_6

    .line 3225
    const-string/jumbo p0, ""

    goto :goto_5

    :cond_9
    move-object v3, v5

    goto :goto_4

    .line 3190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "spaceId"    # Ljava/lang/String;
    .param p1, "fielId"    # Ljava/lang/String;
    .param p2, "fileType"    # Ljava/lang/String;

    .prologue
    .line 534
    const/4 v1, 0x0

    .line 535
    .local v1, "result":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 536
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 537
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "cache://"

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_."

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 539
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    .end local v0    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_0
    return-object v1
.end method

.method public static a(Lcom/alibaba/alimei/sdk/model/MailDetailModel;)Ljava/util/List;
    .locals 3
    .param p0, "mailDetailModel"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1194
    .local v1, "emailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return-object v1

    .line 1197
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    invoke-static {v2, v1}, Lafh;->a(Ljava/util/List;Ljava/util/List;)V

    .line 1198
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    invoke-static {v2, v1}, Lafh;->a(Ljava/util/List;Ljava/util/List;)V

    .line 1199
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getFrom()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v0

    .line 1200
    .local v0, "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v2}, Lafh;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1201
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)Ljava/util/List;
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "msg"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/im/Message;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1296
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1297
    :cond_0
    const/4 v2, 0x0

    .line 1304
    :goto_0
    return-object v2

    .line 1300
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    .line 1301
    .local v0, "cid":Ljava/lang/String;
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1302
    .local v1, "mid":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10258
    .local v2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10259
    const-string/jumbo v4, "dingmail-cid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10260
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10261
    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10262
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10263
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1303
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labw;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 781
    .local p0, "receiverModels":Ljava/util/List;, "Ljava/util/List<Labw;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 782
    :cond_0
    const/4 v2, 0x0

    .line 799
    :cond_1
    return-object v2

    .line 785
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labw;

    .line 788
    .local v1, "receiverModel":Labw;
    if-eqz v1, :cond_3

    .line 792
    new-instance v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>()V

    .line 793
    .local v0, "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    iget-object v4, v1, Labw;->b:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 794
    iget-object v4, v1, Labw;->a:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    .line 796
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "cb"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 1701
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lafh$7;

    invoke-direct {v2, p1}, Lafh$7;-><init>(Lcom/alibaba/wukong/Callback;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 1726
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Lacg;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 1701
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 1727
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x11

    .line 989
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getSystemLocale()Ljava/util/Locale;

    move-result-object v1

    .line 990
    .local v1, "sysLocale":Ljava/util/Locale;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 991
    .local v0, "appLocale":Ljava/util/Locale;
    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9015
    :goto_0
    return-void

    .line 994
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 8024
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 8025
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 8026
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 8027
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v7, :cond_1

    .line 8028
    invoke-virtual {v5, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 8032
    :goto_1
    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 9003
    :try_start_0
    const-string/jumbo v2, "android.app.ResourcesManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 9004
    const-string/jumbo v3, "getInstance"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 9005
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 9006
    const-string/jumbo v4, "getConfiguration"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 9007
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 9008
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_2

    .line 9009
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9013
    :catch_0
    move-exception v2

    .line 9014
    const-string/jumbo v3, "MailUtils"

    const-string/jumbo v4, " fixResourcesManagerLocale "

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8030
    :cond_1
    iput-object v3, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_1

    .line 9011
    :cond_2
    :try_start_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getLocale()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILcma;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "mailSubject"    # Ljava/lang/String;
    .param p5, "mailContentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 809
    .local p3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p4, "addressModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 812
    :cond_0
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p6, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 818
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v0, Lafh$1;

    move-object v1, p6

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lafh$1;-><init>(Lcma;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V

    .line 892
    .local v0, "chat2MailHelpListener":Laeq$a;
    new-instance v6, Laeq;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const/4 v1, 0x1

    invoke-direct {v6, p0, p5, v1, v0}, Laeq;-><init>(Landroid/app/Activity;IILaeq$a;)V

    .line 893
    .local v6, "chat2MailHelper":Laeq;
    invoke-virtual {v6, p1, p3}, Laeq;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static a(Landroid/webkit/WebView;)V
    .locals 4
    .param p0, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 901
    if-eqz p0, :cond_0

    const-string/jumbo v2, "hasScaled"

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 902
    const-string/jumbo v2, "hasScaled"

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 903
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 904
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 905
    .local v1, "scale":I
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 907
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "scale":I
    :cond_0
    return-void
.end method

.method public static a(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)V
    .locals 2
    .param p0, "webView"    # Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .prologue
    .line 914
    if-nez p0, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 918
    .local v0, "tv":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 919
    new-instance v1, Lafh$2;

    invoke-direct {v1, p0}, Lafh$2;-><init>(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/Set;Lxv;)V
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/util/Set;
    .param p2, "x2"    # Lxv;

    .prologue
    .line 112
    .line 12498
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 12559
    :cond_0
    :goto_0
    return-void

    .line 12502
    :cond_1
    new-instance v0, Lafh$5;

    invoke-direct {v0, p1, p2}, Lafh$5;-><init>(Ljava/util/Set;Lxv;)V

    .line 12557
    invoke-static {p0}, Lcom/alibaba/alimei/contact/ContactSDK;->getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;

    move-result-object v1

    .line 12558
    if-eqz v1, :cond_2

    .line 12559
    invoke-interface {v1, v0}, Lcom/alibaba/alimei/contact/api/ContactApi;->getUserSelfContactFromServer(Lxv;)V

    goto :goto_0

    .line 12561
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MailUtils.getAliasMailFromServer get ContactApi fail for accountName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 12562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v0}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lxv;)V
    .locals 6
    .param p0, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1341
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1342
    if-eqz p1, :cond_0

    .line 1343
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1, v4}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1347
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1348
    .local v0, "allAccountNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1350
    invoke-static {p0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v2

    .line 1351
    .local v2, "isAliMail":Z
    if-nez v2, :cond_2

    .line 1352
    if-eqz p1, :cond_0

    .line 1353
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v4}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1358
    :cond_2
    new-instance v3, Lafh$3;

    invoke-direct {v3, p1, v0, p0}, Lafh$3;-><init>(Lxv;Ljava/util/HashSet;Ljava/lang/String;)V

    .line 1393
    .local v3, "listener2":Lxv;, "Lxv<Lcom/alibaba/alimei/contact/model/UserSelfContactModel;>;"
    invoke-static {p0}, Lcom/alibaba/alimei/contact/ContactSDK;->getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;

    move-result-object v1

    .line 1394
    .local v1, "contactApi":Lcom/alibaba/alimei/contact/api/ContactApi;
    if-eqz v1, :cond_3

    .line 1395
    invoke-interface {v1, v3}, Lcom/alibaba/alimei/contact/api/ContactApi;->getUserSelfContactFromLocal(Lxv;)V

    goto :goto_0

    .line 1397
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "MailUtils.getAliasMails get ContactApi fail for accountName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lafg;->a(Ljava/lang/String;)V

    .line 1398
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v4}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ZLxv;)V
    .locals 6
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "forceFromServer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1418
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1419
    if-eqz p2, :cond_0

    .line 1420
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2, v4}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 1495
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1425
    .local v0, "aliasMails":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1427
    invoke-static {p0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v2

    .line 1428
    .local v2, "isAliMail":Z
    if-nez v2, :cond_2

    .line 1429
    if-eqz p2, :cond_0

    .line 1430
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v4}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1435
    :cond_2
    new-instance v3, Lafh$4;

    invoke-direct {v3, p2, p1, v0, p0}, Lafh$4;-><init>(Lxv;ZLjava/util/HashSet;Ljava/lang/String;)V

    .line 1488
    .local v3, "listener2":Lxv;, "Lxv<Lcom/alibaba/alimei/contact/model/UserSelfContactModel;>;"
    invoke-static {p0}, Lcom/alibaba/alimei/contact/ContactSDK;->getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;

    move-result-object v1

    .line 1489
    .local v1, "contactApi":Lcom/alibaba/alimei/contact/api/ContactApi;
    if-eqz v1, :cond_3

    .line 1490
    invoke-interface {v1, v3}, Lcom/alibaba/alimei/contact/api/ContactApi;->getUserSelfContactFromLocal(Lxv;)V

    goto :goto_0

    .line 1492
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "MailUtils.getAliasMails get ContactApi fail for accountName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lafg;->a(Ljava/lang/String;)V

    .line 1493
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v4}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1182
    .local p0, "addressModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    .local p1, "destList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1190
    :cond_0
    return-void

    .line 1185
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 1186
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v2}, Lafh;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1188
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 5
    .param p0, "msg"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 515
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    if-nez v4, :cond_2

    .line 516
    :cond_0
    const/4 v3, 0x0

    .line 529
    :cond_1
    :goto_0
    return v3

    .line 518
    :cond_2
    const/4 v3, 0x0

    .line 519
    .local v3, "result":Z
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    .line 520
    .local v0, "contentType":I
    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/16 v4, 0xfb

    if-ne v0, v4, :cond_1

    .line 521
    :cond_3
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 522
    .local v2, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    if-eqz v2, :cond_1

    .line 523
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getExtension()Ljava/util/Map;

    move-result-object v1

    .line 524
    .local v1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    const-string/jumbo v4, "e_id"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 525
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static b(Z)I
    .locals 1
    .param p0, "isSSL"    # Z

    .prologue
    .line 1084
    if-eqz p0, :cond_0

    const/16 v0, 0x1d1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x19

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Lafh$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lafh$a;"
        }
    .end annotation

    .prologue
    .local p0, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1267
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 1276
    :goto_0
    return-object v0

    .line 1270
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9280
    .local v1, "tag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "dingmail-cid:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move-object v0, v2

    .line 1272
    .local v0, "extData":Lafh$a;
    :goto_1
    if-eqz v0, :cond_2

    goto :goto_0

    .line 9284
    .end local v0    # "extData":Lafh$a;
    :cond_4
    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 9285
    if-eqz v4, :cond_5

    array-length v5, v4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    :cond_5
    move-object v0, v2

    .line 9286
    goto :goto_1

    .line 9289
    :cond_6
    new-instance v0, Lafh$a;

    invoke-direct {v0}, Lafh$a;-><init>()V

    .line 9290
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lafh$a;->a:Ljava/lang/String;

    .line 9291
    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lafh$a;->b:Ljava/lang/String;

    goto :goto_1

    .end local v1    # "tag":Ljava/lang/String;
    :cond_7
    move-object v0, v2

    .line 1276
    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 435
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 437
    .local v0, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v0, :cond_0

    .line 438
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    .line 441
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 595
    if-lez p0, :cond_0

    .line 596
    sget-object v0, Lafh;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 598
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 2
    .param p0, "createdAt"    # J

    .prologue
    .line 607
    invoke-static {p0, p1}, Luj;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/util/List;
    .locals 6
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v0, "emailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 363
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    if-eqz v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-object v0

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgEmail:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgEmail:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 370
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    invoke-static {v1}, Lacn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 1737
    const-string/jumbo v2, "has_show_stick_top_tips"

    invoke-static {v2, v5}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1757
    .end local p0    # "context":Landroid/content/Context;
    .local v0, "enterMailTimes":I
    .local v1, "from":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 11765
    .end local v0    # "enterMailTimes":I
    .end local v1    # "from":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_6

    .line 11766
    check-cast p0, Landroid/app/Activity;

    .line 11767
    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 11768
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 11769
    const-string/jumbo v4, "com.alibaba.android.rimet.biz.BokuiActivity"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 11770
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/page/maillist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11771
    const-string/jumbo v1, "search"

    .line 1742
    .restart local v1    # "from":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1745
    const-string/jumbo v2, "enter_cmail_times"

    invoke-static {v2, v5}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1746
    .restart local v0    # "enterMailTimes":I
    const-string/jumbo v2, "search"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "function"

    .line 1747
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1748
    :cond_2
    add-int/lit8 v0, v0, 0x2

    .line 1752
    :goto_2
    const-string/jumbo v2, "enter_cmail_times"

    invoke-static {v2, v0}, Lcpk;->b(Ljava/lang/String;I)V

    .line 1753
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 1756
    const-string/jumbo v2, "show_stick_top_tips"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 11772
    .end local v0    # "enterMailTimes":I
    .end local v1    # "from":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dingtalk://dingtalkclient/page/maillist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 11773
    const-string/jumbo v1, "H5"

    goto :goto_1

    .line 11775
    :cond_4
    const-string/jumbo v2, "com.alibaba.android.rimet.biz.home.activity.HomeActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 11776
    const-string/jumbo v1, "im"

    goto :goto_1

    .line 11777
    :cond_5
    const-string/jumbo v2, "com.alibaba.android.dingtalkim.activities.CategorySessionListActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 11778
    const-string/jumbo v1, "function"

    goto :goto_1

    .line 11781
    :cond_6
    const-string/jumbo v1, ""

    goto :goto_1

    .line 1750
    .restart local v0    # "enterMailTimes":I
    .restart local v1    # "from":Ljava/lang/String;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1
    .param p0, "lastBindEmail"    # Ljava/lang/String;

    .prologue
    .line 462
    invoke-static {p0}, Lafh;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    invoke-static {p0}, Lacn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    const-string/jumbo v0, "pref_key_mail_last_bind_email"

    invoke-static {v0, p0}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Lxv;)V
    .locals 1
    .param p0, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1408
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lafh;->a(Ljava/lang/String;ZLxv;)V

    .line 1409
    return-void
.end method

.method public static b(Lcom/alibaba/wukong/im/Message;)Z
    .locals 4
    .param p0, "msg"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v1, 0x0

    .line 611
    if-nez p0, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v1

    .line 612
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 613
    .local v0, "content":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v0, :cond_0

    .line 615
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xcb

    if-ne v2, v3, :cond_0

    .line 616
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "currentUser"    # Ljava/lang/String;
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1573
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v6, v7

    .line 1594
    :cond_1
    :goto_0
    return v6

    .line 1576
    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1577
    .local v3, "result":Z
    if-nez v3, :cond_1

    .line 1580
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v8

    invoke-virtual {v8, p0, p1}, Lafc;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1582
    .local v2, "isSameOrg":Z
    if-nez v2, :cond_3

    move v6, v7

    .line 1583
    goto :goto_0

    .line 1585
    :cond_3
    const-string/jumbo v8, "@"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1586
    .local v0, "index1":I
    const-string/jumbo v8, "@"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1587
    .local v1, "index2":I
    if-ltz v0, :cond_4

    if-ltz v1, :cond_4

    .line 1588
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1589
    .local v4, "s1":Ljava/lang/String;
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1590
    .local v5, "s2":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .end local v4    # "s1":Ljava/lang/String;
    .end local v5    # "s2":Ljava/lang/String;
    :cond_4
    move v6, v7

    .line 1594
    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 448
    const-string/jumbo v0, "pref_key_mail_last_bind_email"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1
    .param p0, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-static {p0}, Lafh;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v0

    invoke-interface {v0, p0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    .line 497
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "srcMail"    # Ljava/lang/String;
    .param p1, "targetMail"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1641
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1652
    :cond_0
    :goto_0
    return v2

    .line 1645
    :cond_1
    invoke-static {p0}, Lafh;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1646
    .local v0, "srcDomain":Ljava/lang/String;
    invoke-static {p1}, Lafh;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1648
    .local v1, "targetDomain":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1652
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "databaseName"    # Ljava/lang/String;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1662
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1681
    :cond_0
    :goto_0
    return v0

    .line 1666
    :cond_1
    const/4 v0, 0x0

    .line 1668
    .local v0, "count":I
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v2

    .line 1669
    .local v2, "db":Lcom/alibaba/alimei/orm/IDatabase;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "select count(*) from "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1670
    .local v4, "sql":Ljava/lang/String;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1671
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 1672
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1673
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1674
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1677
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Lcom/alibaba/alimei/orm/IDatabase;
    .end local v4    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1678
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "MailUtils"

    invoke-static {v5, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 455
    const-string/jumbo v0, "pref_key_mail_last_bind_email"

    invoke-static {v0}, Lcpk;->a(Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 506
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const/4 v0, 0x0

    .line 509
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Laet;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static e()V
    .locals 0

    .prologue
    .line 604
    return-void
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 553
    :goto_0
    return v0

    .line 4246
    :cond_0
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 553
    invoke-interface {v0, p0}, Lcom/alibaba/alimei/framework/account/AccountApi;->hasLogin(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static f()V
    .locals 3

    .prologue
    .line 1687
    const-string/jumbo v0, "Alimail cleanOldMails"

    sget-object v1, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->LOW:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    .line 11074
    new-instance v2, Laif$a;

    invoke-direct {v2, v1}, Laif$a;-><init>(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)V

    .line 11075
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11076
    const-string/jumbo v0, "AlimeiSDK"

    .line 11078
    :cond_0
    invoke-interface {v2, v0}, Laie;->a(Ljava/lang/String;)V

    .line 1687
    const-string/jumbo v0, "cleanOldMails"

    new-instance v1, Lafh$6;

    invoke-direct {v1}, Lafh$6;-><init>()V

    invoke-interface {v2, v0, v1}, Laie;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1698
    return-void
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 2
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 557
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    invoke-interface {v1, p0}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 563
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 566
    :goto_0
    return-object v1

    .line 564
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 940
    new-instance v4, Ljava/lang/StringBuffer;

    const-string/jumbo v7, "<html><body>"

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 941
    .local v4, "sb":Ljava/lang/StringBuffer;
    if-eqz p0, :cond_4

    .line 943
    invoke-static {p0}, Lair;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 945
    sget-object v7, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 946
    .local v2, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 947
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 953
    .local v5, "start":I
    if-eqz v5, :cond_0

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x40

    if-eq v7, v8, :cond_2

    .line 954
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    .line 955
    .local v6, "url":Ljava/lang/String;
    sget-object v7, Lafh;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 957
    .local v3, "proto":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 962
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 963
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 970
    .local v1, "link":Ljava/lang/String;
    :goto_1
    const-string/jumbo v7, "<a href=\"%s\">%s</a>"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 972
    .local v0, "href":Ljava/lang/String;
    invoke-virtual {v2, v4, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 968
    .end local v0    # "href":Ljava/lang/String;
    .end local v1    # "link":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "http://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "link":Ljava/lang/String;
    goto :goto_1

    .line 974
    .end local v1    # "link":Ljava/lang/String;
    .end local v3    # "proto":Ljava/util/regex/Matcher;
    .end local v6    # "url":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "$0"

    invoke-virtual {v2, v4, v7}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 977
    .end local v5    # "start":I
    :cond_3
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 979
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_4
    const-string/jumbo v7, "</body></html>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 980
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1605
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1613
    :cond_0
    :goto_0
    return v0

    .line 1609
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "@qq.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1610
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1622
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1631
    :cond_0
    :goto_0
    return-object v1

    .line 1626
    :cond_1
    const-string/jumbo v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1627
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1631
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 573
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 574
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 575
    invoke-virtual {v0, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 576
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 578
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
