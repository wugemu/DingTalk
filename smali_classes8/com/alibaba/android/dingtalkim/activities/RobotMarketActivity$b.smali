.class final Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$b;
.super Ljava/lang/Object;
.source "RobotMarketActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$b;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity$b;-><init>(Lcom/alibaba/android/dingtalkim/activities/RobotMarketActivity;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 379
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    check-cast p2, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    .line 1383
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1384
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    if-eqz v2, :cond_1

    .line 1385
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;->orgId:J

    iget-object v2, p2, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;->orgId:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 1394
    :cond_0
    :goto_0
    return v0

    .line 1386
    :cond_1
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    if-eqz v2, :cond_2

    iget-object v2, p2, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    if-eqz v2, :cond_0

    .line 1388
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;->botOrgObject:Lcom/alibaba/android/dingtalkim/base/model/BotOrgObject;

    if-eqz v0, :cond_5

    move v0, v1

    .line 1389
    goto :goto_0

    .line 1391
    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_0

    .line 1393
    :cond_4
    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    move v0, v1

    .line 1394
    goto :goto_0

    .line 1396
    :cond_5
    const/4 v0, 0x0

    .line 379
    goto :goto_0
.end method
