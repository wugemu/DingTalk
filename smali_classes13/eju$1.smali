.class public final Leju$1;
.super Ljava/lang/Object;
.source "OAPopUpWindowHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Leju;


# direct methods
.method public constructor <init>(Leju;)V
    .locals 0
    .param p1, "this$0"    # Leju;

    .prologue
    .line 73
    iput-object p1, p0, Leju$1;->a:Leju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Leju$1;->a:Leju;

    invoke-static {v0}, Leju;->a(Leju;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Leju$1;->a:Leju;

    invoke-static {v0}, Leju;->a(Leju;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->dismiss()V

    .line 79
    :cond_0
    return-void
.end method
