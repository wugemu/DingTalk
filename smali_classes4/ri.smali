.class public Lri;
.super Ljava/lang/Object;
.source "MailEventDetailActivityPresenter.java"

# interfaces
.implements Lrh$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lrh$b;

.field private c:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

.field private final d:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lyb;

.field private f:J

.field private g:J

.field private h:J

.field private i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

.field private j:Lcom/alibaba/alimei/sdk/model/AttendeeModel;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lri;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lri;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lrh$b;)V
    .locals 1
    .param p1, "view"    # Lrh$b;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lri;->d:Lfk;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lri;->e:Lyb;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lri;->k:Z

    .line 105
    iput-object p1, p0, Lri;->b:Lrh$b;

    .line 106
    return-void
.end method

.method static synthetic a(Lri;Lcom/alibaba/alimei/sdk/model/AttendeeModel;)Lcom/alibaba/alimei/sdk/model/AttendeeModel;
    .locals 0
    .param p0, "x0"    # Lri;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    .prologue
    .line 82
    iput-object p1, p0, Lri;->j:Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    return-object p1
.end method

.method static synthetic a(Lri;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .locals 0
    .param p0, "x0"    # Lri;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    .prologue
    .line 82
    iput-object p1, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    return-object p1
.end method

.method private static a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 4
    .param p0, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 890
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 891
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    .line 892
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 893
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 894
    .local v1, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->orgId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 895
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 896
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    .line 897
    return-object v0
.end method

.method private a(I)Ljava/util/List;
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 413
    iget-object v4, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    if-nez v4, :cond_1

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 429
    :cond_0
    return-object v0

    .line 416
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v0, "addressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    iget-object v4, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v3, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    .line 418
    .local v3, "attendeeModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttendeeModel;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 419
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    .line 420
    .local v2, "attendeeModel":Lcom/alibaba/alimei/sdk/model/AttendeeModel;
    iget v5, v2, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeType:I

    if-ne p1, v5, :cond_2

    .line 421
    new-instance v1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>()V

    .line 422
    .local v1, "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    .line 423
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->getMail()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 424
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lri;)Lrh$b;
    .locals 1
    .param p0, "x0"    # Lri;

    .prologue
    .line 82
    iget-object v0, p0, Lri;->b:Lrh$b;

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;I)V
    .locals 20
    .param p3, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 232
    .line 5291
    .local p1, "toList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    .local p2, "ccList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 5292
    packed-switch p3, :pswitch_data_0

    .line 5301
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    if-eqz v3, :cond_0

    .line 5302
    move-object/from16 v0, p0

    iget-object v3, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 5304
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5308
    .local v5, "subject":Ljava/lang/String;
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v3

    .line 5309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5310
    const-string/jumbo v2, "<br>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5311
    const-string/jumbo v2, "<br>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5312
    const-string/jumbo v2, "<br>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5313
    const-string/jumbo v2, "---------------------------------------------"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5314
    const-string/jumbo v2, "<br>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5315
    sget v2, Laxo$i;->mail_sender:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5316
    const-string/jumbo v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5317
    move-object/from16 v0, p0

    iget-object v2, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v7, v7, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    invoke-static {v2, v7}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5318
    const-string/jumbo v2, "<"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5319
    move-object/from16 v0, p0

    iget-object v2, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5320
    const-string/jumbo v2, ">"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5321
    const-string/jumbo v2, "<br>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5324
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lri;->a(I)Ljava/util/List;

    move-result-object v2

    .line 5325
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 5326
    sget v7, Laxo$i;->alm_cmail_recipeint_type_invitee:I

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5327
    const-string/jumbo v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5328
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 5329
    if-eqz v2, :cond_1

    .line 5332
    iget-object v8, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5333
    const-string/jumbo v8, "<"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5334
    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5335
    const-string/jumbo v2, ">"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5336
    const-string/jumbo v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5295
    .end local v5    # "subject":Ljava/lang/String;
    :pswitch_0
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxo$i;->message_re:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 5298
    :pswitch_1
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxo$i;->message_fwd:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 5338
    .restart local v5    # "subject":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v2, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 5339
    const-string/jumbo v2, "<br>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5344
    :cond_3
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lri;->a(I)Ljava/util/List;

    move-result-object v2

    .line 5345
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 5346
    sget v7, Laxo$i;->alm_cmail_recipeint_type_optional:I

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5347
    const-string/jumbo v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5348
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 5349
    if-eqz v2, :cond_4

    .line 5352
    iget-object v8, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5353
    const-string/jumbo v8, "<"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5354
    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5355
    const-string/jumbo v2, ">"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5356
    const-string/jumbo v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 5358
    :cond_5
    const-string/jumbo v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v4, v2, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 5359
    const-string/jumbo v2, "<br>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5363
    :cond_6
    sget v2, Laxo$i;->message_view_subject_label:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5364
    move-object/from16 v0, p0

    iget-object v2, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    .line 5365
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 5366
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Laxo$i;->no_location_label:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5368
    :cond_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5369
    const-string/jumbo v2, "<br>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5372
    sget v2, Laxo$i;->message_view_date_label:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5373
    move-object/from16 v0, p0

    iget-object v2, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-wide v12, v2, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-wide v14, v2, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    .line 6115
    new-instance v2, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 6116
    invoke-virtual {v2, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 6118
    new-instance v7, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 6119
    invoke-virtual {v7, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 6121
    sub-long v16, v14, v12

    .line 6122
    const-wide/32 v18, 0x5265c00

    cmp-long v8, v16, v18

    if-ltz v8, :cond_a

    .line 6124
    iget v2, v2, Landroid/text/format/Time;->year:I

    iget v7, v7, Landroid/text/format/Time;->year:I

    if-eq v2, v7, :cond_8

    .line 6133
    :cond_8
    :goto_3
    const/16 v2, 0x15

    invoke-static {v3, v12, v13, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 6134
    const/16 v7, 0x15

    invoke-static {v3, v14, v15, v7}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v7

    .line 6136
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "-"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5373
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5376
    const-string/jumbo v2, "<br>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5379
    move-object/from16 v0, p0

    iget-object v2, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    .line 5380
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 5381
    sget v2, Laxo$i;->no_location_label:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5385
    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5386
    const-string/jumbo v2, "<br>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5387
    const-string/jumbo v2, "<br>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5388
    const-string/jumbo v2, "<br>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5390
    move-object/from16 v0, p0

    iget-object v2, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 5391
    move-object/from16 v0, p0

    iget-object v2, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5394
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, "body":Ljava/lang/String;
    const/16 v2, 0x17

    move/from16 v0, p3

    if-ne v2, v0, :cond_c

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lri;->b:Lrh$b;

    invoke-interface {v2}, Lrh$b;->a()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->owerAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 242
    :goto_5
    return-void

    .line 6128
    .end local v6    # "body":Ljava/lang/String;
    :cond_a
    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    iget v2, v7, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_3

    .line 5383
    :cond_b
    sget v7, Laxo$i;->alm_cmail_meeting_location:I

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 238
    .restart local v6    # "body":Ljava/lang/String;
    :cond_c
    invoke-direct/range {p0 .. p1}, Lri;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, "toArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lri;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v10

    .line 240
    .local v10, "ccArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lri;->b:Lrh$b;

    invoke-interface {v2}, Lrh$b;->a()Landroid/app/Activity;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v8, v2, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->owerAccount:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v12, v5

    move-object v13, v6

    invoke-static/range {v7 .. v14}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_5

    .line 5292
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lri;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 1
    .param p0, "x0"    # Lri;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 82
    .line 10884
    iget-object v0, p0, Lri;->b:Lrh$b;

    if-eqz v0, :cond_0

    .line 10885
    iget-object v0, p0, Lri;->b:Lrh$b;

    invoke-interface {v0, p1}, Lrh$b;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic a(Lri;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 5
    .param p0, "x0"    # Lri;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/alibaba/wukong/Callback;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 82
    .line 10669
    if-eqz p2, :cond_0

    .line 10673
    if-nez p1, :cond_1

    .line 10674
    invoke-interface {p2, v3}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 10723
    :cond_0
    :goto_0
    return-void

    .line 10678
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b(Z)[Ljava/lang/String;

    move-result-object v0

    .line 10679
    if-nez v0, :cond_2

    .line 10680
    invoke-interface {p2, v3}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 10684
    :cond_2
    new-instance v0, Lri$3;

    invoke-direct {v0, p0, p2, p1}, Lri$3;-><init>(Lri;Lcom/alibaba/wukong/Callback;Ljava/util/List;)V

    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lri;->b:Lrh$b;

    .line 10714
    invoke-interface {v2}, Lrh$b;->a()Landroid/app/Activity;

    move-result-object v2

    .line 10684
    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 10718
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b(Z)[Ljava/lang/String;

    move-result-object v1

    .line 10719
    if-nez v1, :cond_3

    .line 10720
    if-eqz v0, :cond_0

    .line 10721
    invoke-interface {v0, v3}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 10725
    :cond_3
    sget-object v2, Lri;->a:Ljava/lang/String;

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lri$4;

    invoke-direct {v3, p0, v1, v0}, Lri$4;-><init>(Lri;[Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lri;[Ljava/lang/String;ILjava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p0, "x0"    # Lri;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lri;->a([Ljava/lang/String;ILjava/util/List;Lcom/alibaba/wukong/Callback;)V

    return-void
.end method

.method private a([Ljava/lang/String;ILjava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "accounts"    # [Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 758
    .local p3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_0
    if-ltz p2, :cond_0

    array-length v0, p1

    if-lt p2, v0, :cond_2

    .line 759
    :cond_0
    if-eqz p4, :cond_1

    .line 760
    invoke-interface {p4, p3}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 783
    :cond_1
    :goto_1
    return-void

    .line 764
    :cond_2
    aget-object v6, p1, p2

    .line 765
    .local v6, "account":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 766
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 769
    :cond_3
    new-instance v0, Lri$5;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lri$5;-><init>(Lri;Ljava/util/List;[Ljava/lang/String;ILcom/alibaba/wukong/Callback;)V

    const-class v1, Lxv;

    iget-object v2, p0, Lri;->b:Lrh$b;

    .line 782
    invoke-interface {v2}, Lrh$b;->a()Landroid/app/Activity;

    move-result-object v2

    .line 769
    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    invoke-static {v6, v0}, Lafh;->a(Ljava/lang/String;Lxv;)V

    goto :goto_1
.end method

.method static synthetic a(Lri;Lcom/alibaba/alimei/sdk/model/AttendeeModel;Ljava/util/List;)Z
    .locals 3
    .param p0, "x0"    # Lri;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/AttendeeModel;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 82
    .line 10786
    if-eqz p1, :cond_1

    .line 10790
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10794
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10795
    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeEmail:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10796
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 10800
    :cond_1
    const/4 v0, 0x0

    .line 82
    goto :goto_0
.end method

.method private a(Ljava/util/List;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 245
    .local p1, "addressModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    :cond_0
    const/4 v0, 0x0

    .line 255
    :cond_1
    :goto_0
    return-object v0

    .line 249
    :cond_2
    const/4 v0, 0x0

    .line 6259
    .local v0, "addrStrArray":[Ljava/lang/String;
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6260
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    .local v1, "toStrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 252
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "addrStrArray":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .restart local v0    # "addrStrArray":[Ljava/lang/String;
    goto :goto_0

    .line 6263
    .end local v1    # "toStrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6264
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 6265
    if-eqz v2, :cond_6

    .line 6278
    if-nez v2, :cond_7

    .line 6279
    const-string/jumbo v2, ""

    .line 6269
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 6270
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6282
    :cond_7
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 6283
    iget-object v5, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iget-object v6, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-static {v5, v6}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6284
    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6285
    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6287
    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method static synthetic b(Lri;)V
    .locals 6
    .param p0, "x0"    # Lri;

    .prologue
    .line 82
    .line 9804
    iget-object v0, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->resourceList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 9805
    iget-object v0, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->resourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 9806
    iget-object v2, p0, Lri;->d:Lfk;

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic c(Lri;)Z
    .locals 1
    .param p0, "x0"    # Lri;

    .prologue
    .line 82
    invoke-direct {p0}, Lri;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lri;)Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .locals 1
    .param p0, "x0"    # Lri;

    .prologue
    .line 82
    iget-object v0, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    return-object v0
.end method

.method static synthetic e(Lri;)Lcom/alibaba/alimei/sdk/model/AttendeeModel;
    .locals 1
    .param p0, "x0"    # Lri;

    .prologue
    .line 82
    iget-object v0, p0, Lri;->j:Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    return-object v0
.end method

.method static synthetic f(Lri;)Z
    .locals 1
    .param p0, "x0"    # Lri;

    .prologue
    .line 82
    iget-boolean v0, p0, Lri;->k:Z

    return v0
.end method

.method static synthetic g(Lri;)Lfk;
    .locals 1
    .param p0, "x0"    # Lri;

    .prologue
    .line 82
    iget-object v0, p0, Lri;->d:Lfk;

    return-object v0
.end method

.method private j()Lcom/alibaba/alimei/sdk/model/AddressModel;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 402
    iget-object v1, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    :cond_0
    const/4 v0, 0x0

    .line 409
    :goto_0
    return-object v0

    .line 406
    :cond_1
    new-instance v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>()V

    .line 407
    .local v0, "orgAddress":Lcom/alibaba/alimei/sdk/model/AddressModel;
    iget-object v1, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    iget-object v2, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    invoke-static {v1, v2}, Laiv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    .line 408
    iget-object v1, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    goto :goto_0
.end method

.method private k()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 812
    const/4 v2, 0x0

    .line 814
    .local v2, "htmlChanged":Z
    :try_start_0
    iget-object v5, p0, Lri;->d:Lfk;

    invoke-virtual {v5}, Lfk;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 815
    const/4 v5, 0x0

    .line 846
    :goto_0
    return v5

    .line 819
    :cond_0
    iget-object v5, p0, Lri;->d:Lfk;

    invoke-virtual {v5}, Lfk;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 820
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    iget-object v5, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v6, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    invoke-static {v6}, Lair;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    .line 821
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 822
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 823
    .local v0, "attachment":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 824
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 827
    :cond_2
    iget-object v5, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 831
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\\s+(?i)src=\"cid(?-i):\\Q"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\\E\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 833
    .local v1, "contentIdRe":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " src=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 835
    .local v4, "srcContentUri":Ljava/lang/String;
    iget-object v5, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v6, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    invoke-virtual {v6, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    .line 837
    const/4 v2, 0x1

    goto :goto_1

    .line 842
    .end local v0    # "attachment":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v1    # "contentIdRe":Ljava/lang/String;
    .end local v4    # "srcContentUri":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v6, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    invoke-static {v6}, Lair;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    :goto_2
    move v5, v2

    .line 846
    goto/16 :goto_0

    :catch_0
    move-exception v5

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 434
    iget-object v2, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    if-nez v2, :cond_1

    .line 454
    :cond_0
    return-void

    .line 438
    :cond_1
    iget-object v2, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v1, v2, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->resourceList:Ljava/util/List;

    .line 439
    .local v1, "resourceList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    if-eqz v1, :cond_0

    .line 440
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 442
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iget-object v3, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->owerAccount:Ljava/lang/String;

    .line 7228
    invoke-static {v3, v0}, Lafv;->c(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;

    move-result-object v3

    .line 442
    if-nez v3, :cond_2

    .line 447
    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 448
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7850
    iget-object v3, p0, Lri;->e:Lyb;

    if-nez v3, :cond_3

    .line 7851
    new-instance v3, Lri$6;

    invoke-direct {v3, p0}, Lri$6;-><init>(Lri;)V

    iput-object v3, p0, Lri;->e:Lyb;

    .line 8085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v3

    .line 7873
    iget-object v4, p0, Lri;->e:Lyb;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "basic_AttachmentDownload"

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 450
    :cond_3
    iget-object v3, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->owerAccount:Ljava/lang/String;

    invoke-static {v3, v0}, Lafw;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto :goto_0
.end method

.method public final a(F)V
    .locals 6
    .param p1, "scale"    # F

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 179
    iget-object v1, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-wide v2, v2, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    iget-object v4, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-wide v4, v4, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    invoke-static {v1, v2, v3, v4, v5}, Lsc;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "timeStr":Ljava/lang/String;
    invoke-static {v0, p1}, Lafe;->a(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 115
    if-nez p1, :cond_0

    .line 5057
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v5, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    .line 3025
    if-nez v5, :cond_2

    .line 5055
    :goto_1
    if-eqz p1, :cond_1

    if-nez v1, :cond_7

    .line 5056
    :cond_1
    const-string/jumbo v0, "[Calendar Nav]event detail object is null"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3028
    :cond_2
    new-instance v4, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;

    invoke-direct {v4}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;-><init>()V

    .line 3029
    iget-wide v2, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setId(J)V

    .line 3030
    iget v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->color:I

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setColor(I)V

    .line 3031
    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setTitle(Ljava/lang/String;)V

    .line 3032
    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setLocation(Ljava/lang/String;)V

    .line 3033
    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setSyncId(Ljava/lang/String;)V

    .line 3034
    iget-boolean v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setAllDay(Z)V

    .line 3035
    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setOrganizer(Ljava/lang/String;)V

    .line 3036
    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setOrganizerName(Ljava/lang/String;)V

    .line 3037
    iget-boolean v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->guestsCanModify:Z

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setGuestsCanModify(Z)V

    .line 3038
    iget-wide v2, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->dtStart:J

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setDtStart(J)V

    .line 3039
    iget v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startDay:I

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setStartDay(I)V

    .line 3040
    iget v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endDay:I

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setEndDay(I)V

    .line 3041
    iget v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startTime:I

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setStartTime(I)V

    .line 3042
    iget v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endTime:I

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setEndTime(I)V

    .line 3043
    iget-wide v2, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setStartMillis(J)V

    .line 3044
    iget-wide v2, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setEndMillis(J)V

    .line 3045
    iget-boolean v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->hasAlarm:Z

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setHasAlarm(Z)V

    .line 3046
    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setRrule(Ljava/lang/String;)V

    .line 3047
    iget v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->selfAttendeeStatus:I

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setSelfAttendeeStatus(I)V

    .line 3048
    iget v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->canOrganizerResponse:I

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setCanOrganizerResponse(I)V

    .line 3049
    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->owerAccount:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setOwerAccount(Ljava/lang/String;)V

    .line 3050
    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalSyncId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setOriginalSyncId(Ljava/lang/String;)V

    .line 3051
    iget-wide v2, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalId:J

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setOriginalId(J)V

    .line 3052
    iget-wide v2, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarId:J

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setCalendarId(J)V

    .line 3053
    iget-wide v2, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarParentId:J

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setCalendarParentId(J)V

    .line 3054
    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setDescription(Ljava/lang/String;)V

    .line 3055
    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setTimezone(Ljava/lang/String;)V

    .line 3056
    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageServerId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setMessageServerId(Ljava/lang/String;)V

    .line 3057
    iget-wide v2, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageAccountId:J

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setMessageAccountId(J)V

    .line 3058
    iget-wide v2, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageMailboxId:J

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setMessageMailboxId(J)V

    .line 3059
    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageThreadTopic:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setMessageThreadTopic(Ljava/lang/String;)V

    .line 3060
    iget v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageThreadTopicNumber:I

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setMessageThreadTopicNumber(I)V

    .line 3061
    iget v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageType:I

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setMessageType(I)V

    .line 3062
    iget v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->status:I

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setStatus(I)V

    .line 3063
    iget v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->canSync:I

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setCanSync(I)V

    .line 3064
    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    .line 3138
    if-nez v0, :cond_3

    .line 3064
    :goto_2
    invoke-virtual {v4, v1}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setAttendeeList(Ljava/util/List;)V

    .line 3065
    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    invoke-static {v0}, Lrd;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setReminderList(Ljava/util/List;)V

    .line 3066
    iget-boolean v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->isSystem:Z

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setSystem(Z)V

    .line 3067
    iget-object v0, v5, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->folderServerId:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;->setFolderServerId(Ljava/lang/String;)V

    move-object v1, v4

    .line 3068
    goto/16 :goto_1

    .line 3141
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    .line 3143
    if-eqz v0, :cond_4

    .line 4123
    if-nez v0, :cond_5

    move-object v0, v1

    .line 3144
    :goto_4
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4126
    :cond_5
    new-instance v2, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;

    invoke-direct {v2}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;-><init>()V

    .line 4127
    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->id:J

    invoke-virtual {v2, v8, v9}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->setId(J)V

    .line 4128
    iget-wide v8, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->eventId:J

    invoke-virtual {v2, v8, v9}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->setEventId(J)V

    .line 4129
    iget-object v7, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->setAttendeeName(Ljava/lang/String;)V

    .line 4130
    iget-object v7, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeEmail:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->setAttendeeEmail(Ljava/lang/String;)V

    .line 4131
    iget v7, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeStatus:I

    invoke-virtual {v2, v7}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->setAttendeeStatus(I)V

    .line 4132
    iget v7, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeRelationship:I

    invoke-virtual {v2, v7}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->setAttendeeRelationship(I)V

    .line 4133
    iget v0, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeType:I

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/AttendeeObject;->setAttendeeType(I)V

    move-object v0, v2

    .line 4134
    goto :goto_4

    :cond_6
    move-object v1, v3

    .line 3147
    goto :goto_2

    .line 5059
    :cond_7
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/cmail_calendar/mail_event_attendee_list"

    new-instance v3, Lrj$1;

    invoke-direct {v3, v1}, Lrj$1;-><init>(Lcom/alibaba/dingtalk/cmailbase/calendar/EventDetailObject;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 23
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 123
    invoke-static/range {p2 .. p2}, Lse;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    const/4 v3, 0x1

    new-array v7, v3, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 127
    .local v7, "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v22, "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    invoke-static/range {p2 .. p2}, Lri;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v21

    .line 129
    .local v21, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-static/range {v21 .. v21}, Ltm;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v8

    .line 130
    .local v8, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    const-string/jumbo v3, "mail"

    invoke-static {v8, v3}, Ltm;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v19

    .line 132
    .local v19, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const-wide/16 v10, 0x0

    move-object/from16 v0, v19

    iput-wide v10, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 133
    const/4 v3, 0x0

    aput-object v19, v7, v3

    .line 134
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "dentry_list"

    move-object/from16 v0, v22

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 136
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    .line 137
    .local v2, "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 166
    .end local v2    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v7    # "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v8    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v19    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v21    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v22    # "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    :goto_0
    return-void

    .line 139
    :cond_0
    const/4 v3, 0x1

    new-array v7, v3, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 140
    .restart local v7    # "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lafh;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v19

    .line 141
    .restart local v19    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const/4 v3, 0x0

    aput-object v19, v7, v3

    .line 143
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 144
    .restart local v4    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "hide_list_button"

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v18, v0

    .line 146
    .local v18, "mailAttachUrls":[Z
    const/4 v3, 0x0

    const/4 v5, 0x1

    aput-boolean v5, v18, v3

    .line 147
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 148
    .local v17, "mailAttachFileNames":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    aput-object v5, v17, v3

    .line 149
    const-string/jumbo v3, "mail_attach_urls"

    move-object/from16 v0, v18

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 150
    const-string/jumbo v3, "mail_attach_names"

    move-object/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    .line 152
    .restart local v2    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    goto :goto_0

    .line 155
    .end local v2    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v7    # "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v17    # "mailAttachFileNames":[Ljava/lang/String;
    .end local v18    # "mailAttachUrls":[Z
    .end local v19    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :cond_1
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 156
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v9

    .line 157
    .local v9, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    invoke-static/range {p2 .. p2}, Lri;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v20

    .line 158
    .local v20, "spDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 159
    .restart local v4    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "data"

    move-object/from16 v0, v20

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p1

    move-object v11, v4

    invoke-virtual/range {v9 .. v14}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V

    goto/16 :goto_0

    .line 163
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v9    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    .end local v20    # "spDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v12, v3, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v13, v3, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->owerAccount:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-static/range {v10 .. v16}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;Ljava/lang/String;Lcma;ZZ)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)V
    .locals 18
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p3, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 462
    .local v6, "index":I
    if-ltz v6, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v15

    if-lt v6, v15, :cond_3

    .line 463
    :cond_2
    sget-object v15, Lri;->a:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "onImageClick fail for index: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", can not less than zero or large than urlList size: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 464
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 463
    invoke-static/range {v15 .. v16}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_3
    const/4 v11, 0x0

    .line 469
    .local v11, "resourceAttMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    const/4 v8, 0x0

    .line 470
    .local v8, "localUriMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 471
    .local v14, "targetAttList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lri;->d:Lfk;

    invoke-virtual {v15}, Lfk;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    .line 472
    new-instance v11, Ljava/util/HashMap;

    .end local v11    # "resourceAttMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lri;->d:Lfk;

    invoke-virtual {v15}, Lfk;->size()I

    move-result v15

    invoke-direct {v11, v15}, Ljava/util/HashMap;-><init>(I)V

    .line 473
    .restart local v11    # "resourceAttMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    new-instance v8, Ljava/util/HashMap;

    .end local v8    # "localUriMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lri;->d:Lfk;

    invoke-virtual {v15}, Lfk;->size()I

    move-result v15

    invoke-direct {v8, v15}, Ljava/util/HashMap;-><init>(I)V

    .line 474
    .restart local v8    # "localUriMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lri;->d:Lfk;

    invoke-virtual {v15}, Lfk;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 475
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 476
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 477
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 478
    .local v2, "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iget-object v15, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    invoke-virtual {v11, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v15, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 480
    iget-object v15, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-virtual {v8, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 485
    .end local v2    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    :cond_5
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_6
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 486
    .local v12, "src":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 490
    const-string/jumbo v16, "cid:"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 492
    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "content":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 496
    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 520
    .end local v3    # "content":Ljava/lang/String;
    .restart local v2    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    :cond_7
    :goto_3
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 497
    .end local v2    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 498
    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .restart local v2    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    goto :goto_3

    .line 500
    .end local v2    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    :cond_9
    new-instance v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-direct {v2}, Lcom/alibaba/alimei/sdk/model/AttachmentModel;-><init>()V

    .line 501
    .restart local v2    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iput-object v12, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 502
    const-string/jumbo v16, "file://"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 503
    new-instance v16, Ljava/io/File;

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    goto :goto_3

    .line 504
    :cond_a
    const-string/jumbo v16, "http"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 505
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 506
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v13, ""

    .line 507
    .local v13, "suffix":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_b

    .line 508
    const-string/jumbo v16, "."

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 509
    .local v10, "pos":I
    if-ltz v10, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v10, v0, :cond_b

    .line 510
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 513
    .end local v10    # "pos":I
    :cond_b
    new-instance v5, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Laeu;->a()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v12}, Laev;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 514
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 516
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    goto/16 :goto_3

    .line 523
    .end local v2    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v5    # "file":Ljava/io/File;
    .end local v9    # "name":Ljava/lang/String;
    .end local v12    # "src":Ljava/lang/String;
    .end local v13    # "suffix":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v15, v15, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15, v6}, Lajn;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v2, -0x1

    .line 110
    .line 1552
    const-string/jumbo v0, "intent_key_event_instance"

    invoke-static {p1, v0}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    iput-object v0, p0, Lri;->c:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    .line 1553
    iget-object v0, p0, Lri;->c:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    if-eqz v0, :cond_3

    .line 1554
    iget-object v0, p0, Lri;->c:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lri;->f:J

    .line 1555
    iget-object v0, p0, Lri;->c:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getStartMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lri;->g:J

    .line 1556
    iget-object v0, p0, Lri;->c:Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/calendar/EventInstanceObject;->getEndMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lri;->h:J

    .line 1567
    :cond_0
    iget-object v0, p0, Lri;->b:Lrh$b;

    invoke-interface {v0}, Lrh$b;->b()V

    .line 1568
    new-instance v0, Lri$1;

    invoke-direct {v0, p0}, Lri$1;-><init>(Lri;)V

    .line 1612
    iget-object v1, p0, Lri;->b:Lrh$b;

    invoke-interface {v1}, Lrh$b;->a()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1613
    const-class v1, Lcma;

    iget-object v2, p0, Lri;->b:Lrh$b;

    invoke-interface {v2}, Lrh$b;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1615
    :cond_1
    iget-wide v2, p0, Lri;->f:J

    iget-wide v4, p0, Lri;->g:J

    iget-wide v6, p0, Lri;->h:J

    .line 2062
    const/4 v1, 0x0

    .line 2254
    invoke-static {v1}, Lafv;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/CalendarApi;

    move-result-object v1

    .line 2063
    if-nez v1, :cond_5

    .line 2064
    if-eqz v0, :cond_2

    .line 2065
    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "[loadEventDetail] calendarApi null"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    :cond_2
    :goto_0
    return-void

    .line 1558
    :cond_3
    const-string/jumbo v0, "intent_key_event_id"

    invoke-static {p1, v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lri;->f:J

    .line 1559
    const-string/jumbo v0, "intent_key_event_start_millis"

    invoke-static {p1, v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lri;->g:J

    .line 1560
    const-string/jumbo v0, "intent_key_event_end_millis"

    invoke-static {p1, v0, v2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lri;->h:J

    .line 1561
    iget-wide v0, p0, Lri;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lri;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lri;->h:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1562
    :cond_4
    const-string/jumbo v0, "[MailEventDetailActivity]params error"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 1563
    iget-object v0, p0, Lri;->b:Lrh$b;

    invoke-interface {v0}, Lrh$b;->e()V

    goto :goto_0

    .line 2069
    :cond_5
    new-instance v8, Lrl$1;

    invoke-direct {v8, v0}, Lrl$1;-><init>(Lcma;)V

    invoke-interface/range {v1 .. v8}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->loadEventDetail(JJJLxv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/sdk/model/EventDetailModel;I)V
    .locals 8
    .param p1, "eventDetailObject"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p2, "attendeeStatus"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 624
    if-nez p1, :cond_0

    .line 625
    const-string/jumbo v0, "[MailEventDetailActivity]changeAttendeeStatus failed: eventDetailObject is null"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 9106
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lri;->j:Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    if-nez v0, :cond_1

    .line 630
    const-string/jumbo v0, "[MailEventDetailActivity]changeAttendeeStatus failed: is not attendee"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_1
    const-string/jumbo v0, "[MailEventDetailActivity]changeAttendeeStatus:"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    new-instance v7, Lri$2;

    invoke-direct {v7, p0, p1, p2}, Lri$2;-><init>(Lri;Lcom/alibaba/alimei/sdk/model/EventDetailModel;I)V

    .line 657
    .local v7, "apiEventListener":Lcma;
    iget-object v0, p0, Lri;->b:Lrh$b;

    invoke-interface {v0}, Lrh$b;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 658
    const-class v0, Lcma;

    iget-object v1, p0, Lri;->b:Lrh$b;

    invoke-interface {v1}, Lrh$b;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "apiEventListener":Lcma;
    check-cast v7, Lcma;

    .line 661
    .restart local v7    # "apiEventListener":Lcma;
    :cond_2
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->owerAccount:Ljava/lang/String;

    iget-object v0, p0, Lri;->j:Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    .line 663
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->getId()J

    move-result-wide v4

    .line 9096
    if-nez v3, :cond_3

    .line 9097
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "[updateAttendeeStatus]account null"

    invoke-static {v7, v0, v1}, Lcnu;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 9098
    const-string/jumbo v0, "[updateAttendeeStatus]calendarApi null"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 9254
    :cond_3
    invoke-static {v3}, Lafv;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/CalendarApi;

    move-result-object v2

    .line 9103
    if-nez v2, :cond_4

    .line 9104
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "calendarApi null"

    invoke-static {v7, v0, v1}, Lcnu;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 9105
    const-string/jumbo v0, "[updateAttendeeStatus]calendarApi null"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 9108
    :cond_4
    const-string/jumbo v0, "MailCalendarUtil"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lrl$2;

    move v6, p2

    invoke-direct/range {v1 .. v7}, Lrl$2;-><init>(Lcom/alibaba/alimei/sdk/api/CalendarApi;Ljava/lang/String;JILcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attachmentList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attachmentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 174
    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 189
    iget-object v3, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    if-nez v3, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    iget-object v3, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget-object v0, v3, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    .line 194
    .local v0, "attendeeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttendeeModel;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 203
    invoke-direct {p0}, Lri;->j()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v0

    .line 204
    .local v0, "replyModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-nez v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v1, "toList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    const/4 v2, 0x0

    const/16 v3, 0x15

    invoke-direct {p0, v1, v2, v3}, Lri;->a(Ljava/util/List;Ljava/util/List;I)V

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 215
    invoke-direct {p0}, Lri;->j()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v1

    .line 216
    .local v1, "replyModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-nez v1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 220
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lri;->a(I)Ljava/util/List;

    move-result-object v2

    .line 221
    .local v2, "toList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lri;->a(I)Ljava/util/List;

    move-result-object v0

    .line 223
    .local v0, "ccList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    const/16 v3, 0x15

    invoke-direct {p0, v2, v0, v3}, Lri;->a(Ljava/util/List;Ljava/util/List;I)V

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 228
    const/16 v0, 0x17

    invoke-direct {p0, v1, v1, v0}, Lri;->a(Ljava/util/List;Ljava/util/List;I)V

    .line 229
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 532
    return-void
.end method

.method public final i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 537
    const/4 v1, 0x1

    iput-boolean v1, p0, Lri;->k:Z

    .line 539
    iget-object v1, p0, Lri;->e:Lyb;

    if-eqz v1, :cond_0

    .line 9085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    .line 540
    iget-object v2, p0, Lri;->e:Lyb;

    invoke-interface {v1, v2}, Lya;->a(Lyb;)V

    .line 541
    const/4 v1, 0x0

    iput-object v1, p0, Lri;->e:Lyb;

    .line 544
    :cond_0
    iget-object v1, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lri;->i:Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    iget v1, v1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->selfAttendeeStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 546
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_reload_mail_event"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lri;->b:Lrh$b;

    invoke-interface {v1}, Lrh$b;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 549
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
