.class final Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$5;
.super Landroid/text/style/ClickableSpan;
.source "PersonStatusSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$5;->a:Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 337
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$5;->a:Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    const-string/jumbo v2, "https://csmobile.alipay.com/detailSolution.htm?knowledgeType=1&scene=dd_kq&questionId=201602156615"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method
