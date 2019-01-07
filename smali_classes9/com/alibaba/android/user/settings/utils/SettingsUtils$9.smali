.class final Lcom/alibaba/android/user/settings/utils/SettingsUtils$9;
.super Ljava/lang/Object;
.source "SettingsUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/utils/SettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcma;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$9;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$9;->b:Lcma;

    iput-object p3, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$9;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$9;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$9;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 857
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$9;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$9;->b:Lcma;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$9;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$9;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$9;->e:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 858
    return-void
.end method
