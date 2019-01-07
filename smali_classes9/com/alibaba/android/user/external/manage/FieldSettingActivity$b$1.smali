.class final Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b$1;
.super Ljava/lang/Object;
.source "FieldSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b$1;->a:Lcom/alibaba/android/user/external/manage/FieldSettingActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 306
    sget v0, Lezg$l;->dt_external_field_not_editable_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 307
    return-void
.end method
