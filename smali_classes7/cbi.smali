.class public final Lcbi;
.super Ljava/lang/Object;
.source "UnSendRedPacketsMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcbi$a;
    }
.end annotation


# static fields
.field private static b:Lcbi;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcbi$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcbi;

    invoke-direct {v0}, Lcbi;-><init>()V

    sput-object v0, Lcbi;->b:Lcbi;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcbi;->a:Ljava/util/List;

    .line 53
    return-void
.end method

.method public static a()Lcbi;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcbi;->b:Lcbi;

    return-object v0
.end method

.method static synthetic a(Lcbi;)V
    .locals 2
    .param p0, "x0"    # Lcbi;

    .prologue
    .line 38
    .line 1097
    iget-object v0, p0, Lcbi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1098
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "key_unsend_red_packets_message"

    invoke-static {v0, v1}, Lcmz;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1099
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1101
    new-instance v1, Lcbi$2;

    invoke-direct {v1, p0}, Lcbi$2;-><init>(Lcbi;)V

    invoke-virtual {v1}, Lcbi$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcor;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1102
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1103
    iget-object v1, p0, Lcbi;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    :cond_0
    return-void
.end method

.method static synthetic a(Lcbi;Landroid/app/Activity;)V
    .locals 4
    .param p0, "x0"    # Lcbi;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 38
    .line 1131
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1136
    sget v1, Lcaj$f;->dt_redenvelop_not_send_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1137
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcaj$f;->dt_redenvelop_view_detail:I

    new-instance v3, Lcbi$5;

    invoke-direct {v3, p0, p1}, Lcbi$5;-><init>(Lcbi;Landroid/app/Activity;)V

    .line 1138
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcaj$f;->cancel:I

    new-instance v3, Lcbi$4;

    invoke-direct {v3, p0}, Lcbi$4;-><init>(Lcbi;)V

    .line 1150
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1156
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic b(Lcbi;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcbi;

    .prologue
    .line 38
    iget-object v0, p0, Lcbi;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcbi;)V
    .locals 4
    .param p0, "x0"    # Lcbi;

    .prologue
    const/16 v2, 0x14

    .line 38
    .line 2110
    iget-object v0, p0, Lcbi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2114
    iget-object v0, p0, Lcbi;->a:Ljava/util/List;

    new-instance v1, Lcbi$3;

    invoke-direct {v1, p0}, Lcbi$3;-><init>(Lcbi;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2121
    iget-object v0, p0, Lcbi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 2122
    iget-object v0, p0, Lcbi;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcbi;->a:Ljava/util/List;

    .line 2125
    :cond_0
    iget-object v0, p0, Lcbi;->a:Ljava/util/List;

    invoke-static {v0}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2126
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "key_unsend_red_packets_message"

    invoke-static {v1, v2, v0}, Lcmz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_1
    return-void
.end method
