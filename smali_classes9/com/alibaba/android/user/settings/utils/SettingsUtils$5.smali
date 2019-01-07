.class final Lcom/alibaba/android/user/settings/utils/SettingsUtils$5;
.super Ljava/lang/Object;
.source "SettingsUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcma;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcma;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$5;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$5;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 652
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$5;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    :goto_0
    return-void

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$5;->b:Lcma;

    const-string/jumbo v1, "checkNeedInitPwd"

    const-string/jumbo v2, "user || user.stateCode) || user.mobile illegal"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
