.class final Lcom/alibaba/android/user/external/manage/FieldSettingActivity$2;
.super Ljava/lang/Object;
.source "FieldSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/manage/FieldSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$2;->b:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    iput p2, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 171
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$2;->b:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->b(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$2;->a:I

    if-le v1, v2, :cond_0

    .line 172
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$2;->b:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->b(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

    iget v2, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$2;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 173
    .local v0, "item":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    if-eqz v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$2;->b:Lcom/alibaba/android/user/external/manage/FieldSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/manage/FieldSettingActivity;->c(Lcom/alibaba/android/user/external/manage/FieldSettingActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$b;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->id:J

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/user/external/ExternalEditContract$b;->a(J)V

    .line 177
    .end local v0    # "item":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    :cond_0
    return-void
.end method
