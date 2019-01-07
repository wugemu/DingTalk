.class final Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$3;
.super Ljava/lang/Object;
.source "DingTalkIdSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$3;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 134
    const-string/jumbo v0, "click ok"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity$3;->a:Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;->f(Lcom/alibaba/android/user/profile/v2/DingTalkIdSettingActivity;)V

    .line 136
    return-void
.end method
