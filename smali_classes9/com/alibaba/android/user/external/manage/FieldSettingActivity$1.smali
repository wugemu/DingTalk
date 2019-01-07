.class final Lcom/alibaba/android/user/external/manage/FieldSettingActivity$1;
.super Ljava/lang/Object;
.source "FieldSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/FieldSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$1;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

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
    .line 143
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$1;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    const-class v2, Lcom/alibaba/android/user/external/manage/EditExtFieldActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "org_id"

    iget-object v2, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$1;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->a(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$1;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 146
    return-void
.end method
