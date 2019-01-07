.class public final Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;
.super Ljava/lang/Object;
.source "MailCommonProtocolUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$e;,
        Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$j;,
        Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$g;,
        Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$i;,
        Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$k;,
        Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$l;,
        Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$c;,
        Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$a;,
        Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$f;,
        Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$d;,
        Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h;,
        Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$b;,
        Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;Ljava/lang/String;Ljava/lang/String;Laer;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    .param p2, "scene"    # Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "detailMessage"    # Ljava/lang/String;
    .param p5, "handler"    # Laer;

    .prologue
    const/4 v5, 0x0

    .line 520
    if-eqz p1, :cond_4

    .line 521
    move-object v2, p1

    .line 530
    .local v2, "showDialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    :goto_0
    const/4 v1, 0x0

    .line 1502
    .local v1, "result":Z
    sget-object v3, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1503
    sget-object v3, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a:Ljava/util/List;

    new-instance v4, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h;

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$h;-><init>(B)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1504
    sget-object v3, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a:Ljava/util/List;

    new-instance v4, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$d;

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$d;-><init>(B)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1505
    sget-object v3, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a:Ljava/util/List;

    new-instance v4, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$f;

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$f;-><init>(B)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1506
    sget-object v3, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a:Ljava/util/List;

    new-instance v4, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$a;

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$a;-><init>(B)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1507
    sget-object v3, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a:Ljava/util/List;

    new-instance v4, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$c;

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$c;-><init>(B)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1508
    sget-object v3, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a:Ljava/util/List;

    new-instance v4, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$l;

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$l;-><init>(B)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1509
    sget-object v3, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a:Ljava/util/List;

    new-instance v4, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$k;

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$k;-><init>(B)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1510
    sget-object v3, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a:Ljava/util/List;

    new-instance v4, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$i;

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$i;-><init>(B)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1511
    sget-object v3, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a:Ljava/util/List;

    new-instance v4, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$g;

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$g;-><init>(B)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1512
    sget-object v3, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a:Ljava/util/List;

    new-instance v4, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$j;

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$j;-><init>(B)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1513
    sget-object v3, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a:Ljava/util/List;

    new-instance v4, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$e;

    invoke-direct {v4, v5}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$e;-><init>(B)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_0
    sget-object v3, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$b;

    .line 535
    .local v0, "builder":Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$b;
    invoke-interface {v0, p3, p2}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$b;->a(Ljava/lang/String;Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 536
    invoke-interface {v0, v2, p4, p5}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$b;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;Laer;)V

    .line 537
    const/4 v1, 0x1

    .line 542
    .end local v0    # "builder":Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$b;
    :cond_2
    if-eqz v1, :cond_3

    if-eq p1, v2, :cond_3

    .line 543
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 546
    :cond_3
    return v1

    .line 523
    .end local v1    # "result":Z
    .end local v2    # "showDialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    :cond_4
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 1230
    .restart local v2    # "showDialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    iput-boolean v5, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 526
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 1275
    iput-boolean v5, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;Ljava/lang/String;Laer;)Z
    .locals 6
    .param p0, "dialog"    # Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "handler"    # Laer;

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 556
    .local v0, "context":Landroid/content/Context;
    sget-object v2, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;->LOGIN:Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Lcom/alibaba/alimei/mail/utils/MailCommonProtocolUtils$Scene;Ljava/lang/String;Ljava/lang/String;Laer;)Z

    move-result v1

    return v1
.end method
