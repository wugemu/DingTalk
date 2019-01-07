.class final Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$11;
.super Ljava/lang/Object;
.source "TeleConfSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 308
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Levl;->a(Landroid/content/Context;Z)V

    .line 309
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->j(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 311
    invoke-static {}, Lcpi;->c()V

    .line 317
    :goto_0
    return-void

    .line 313
    :cond_0
    const-string/jumbo v0, "https://csmobile.alipay.com/detailSolution.htm?knowledgeType=1&scene=dd_bgdh&questionId=201602065791"

    .line 314
    .local v0, "settingUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    sget v3, Leuj$l;->dt_conference_bizcall_calling_card_open:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "title":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$11;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-virtual {v2, v3, v0, v1}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
