.class final Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$2;
.super Ljava/lang/Object;
.source "PersonStatusSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcfl;

.field final synthetic b:Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;Lcfl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$2;->b:Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$2;->a:Lcfl;

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
    .line 296
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$2;->b:Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$2;->a:Lcfl;

    iget-object v1, v1, Lcfl;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$2;->a:Lcfl;

    iget-object v2, v2, Lcfl;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;->a(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 297
    return-void
.end method
