.class public final Lbyi;
.super Ljava/lang/Object;
.source "LiveDynamicSoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbyi$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    sput-object v0, Lbyi;->a:Ljava/util/List;

    const-string/jumbo v1, "tbffmpeg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lbyi;->a:Ljava/util/List;

    const-string/jumbo v1, "TaoLive"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lbyi;->a:Ljava/util/List;

    const-string/jumbo v1, "MediaEncode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lbyi;->a:Ljava/util/List;

    const-string/jumbo v1, "artc_engine"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic a(Landroid/app/Activity;)V
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 18
    .line 1103
    instance-of v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 1104
    check-cast p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .end local p0    # "x0":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 18
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/app/Activity;ILcjn$a;)V
    .locals 3
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcjn$a;

    .prologue
    .line 18
    .line 1048
    if-nez p1, :cond_0

    .line 1097
    instance-of v0, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 1098
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 1052
    :cond_0
    sget-object v0, Lbyi;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1053
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v1

    new-instance v2, Lbyi$2;

    invoke-direct {v2, p1, p0, p2, v0}, Lbyi$2;-><init>(ILandroid/app/Activity;Lcjn$a;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    .line 18
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcjn$a;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Lcjn$a;

    .prologue
    .line 39
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbyi$1;

    invoke-direct {v1, p0, p1}, Lbyi$1;-><init>(Landroid/app/Activity;Lcjn$a;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 45
    return-void
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 30
    sget-object v1, Lbyi;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "name":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "name":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 31
    .restart local v0    # "name":Ljava/lang/String;
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcjn;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    const/4 v1, 0x0

    .line 35
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lbyi;->a:Ljava/util/List;

    return-object v0
.end method
