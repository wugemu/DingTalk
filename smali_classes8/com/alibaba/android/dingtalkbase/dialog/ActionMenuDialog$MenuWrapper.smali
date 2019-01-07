.class public final Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;
.super Ljava/lang/Object;
.source "ActionMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/lang/String;

.field d:I

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Landroid/content/DialogInterface$OnClickListener;

.field public h:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

.field public i:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "iconFontResId"    # I
    .param p2, "menuNameResId"    # I

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->b:I

    .line 522
    iput p2, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->d:I

    .line 523
    sget-object v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_ICON_LEFT:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->h:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 525
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$c;->ui_common_level1_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->i:I

    .line 526
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "iconFont"    # Ljava/lang/String;
    .param p2, "menuName"    # Ljava/lang/String;

    .prologue
    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->a:Ljava/lang/String;

    .line 514
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->c:Ljava/lang/String;

    .line 515
    sget-object v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;->MENU_TYPE_ICON_LEFT:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->h:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper$MenuType;

    .line 517
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$c;->ui_common_level1_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->i:I

    .line 518
    return-void
.end method
